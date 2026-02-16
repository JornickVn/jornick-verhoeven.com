# Stage 1: Build the Astro project
FROM node:lts AS build
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code and build
COPY . .
RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine

# Copy the built files from Stage 1 to Nginx's html folder
COPY --from=build /app/dist /usr/share/nginx/html

# (Optional) Copy a custom nginx config if you need specific routing
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]