---
title: "Home Lab"
description: "Repurposing legacy hardware into a versatile Docker host for web apps, game servers, and DevOps automation."
tech: ["Ubuntu", "Docker", "CI/CD", "Nginx", "Bash"]
date: 2024-02-15
slug: home-server
image: "/server.png"
---
**The Setup**

Instead of letting my old gaming laptop gather dust, I repurposed it into a dedicated Linux home server. It now serves as the backbone of my personal infrastructure, running Ubuntu to handle everything from file redundancy to hosting this very website.

<br>

**Technical Approach**

The core of the system is built on Docker. I use containers to isolate services, which keeps the system clean and makes it easy to spin up game servers for my friends without conflicting dependencies. I oversee this using portainer.

I also implemented CI/CD pipelines to automate my workflow. For example, when I push code for my portfolio, the pipeline automatically builds the container and deploys the update to this server. Beyond hosting, it runs automated backup scripts to ensure my important files are safe and redundant.