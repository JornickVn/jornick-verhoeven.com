---
title: "ComfyUI Research (Internship)"
description: "Automating 3D model repair and generation pipelines using ComfyUI and custom Python nodes."
tech: ["ComfyUI", "Python", "Blender API", "FastAPI", "Web Components"]
date: 2025-05-01
slug: comfyui-research
image: "/comfyui-stock.png" 
---
**The Project**

This project was a deep dive into AI-driven 3D workflows during my internship. The goal was to build a full pipeline where a user could upload an image or a raw GLB file to a frontend built with Web Components and receive a fully usable, game-ready 3D model in return.

(Disclaimer: The image shown is a stock photo as I cannot disclose the actual project materials due to internship restrictions.)

<br>

**Technical Approach**

I used ComfyUI to orchestrate the workflow. While generating models with Trellis worked well, the raw GLB files often had meshing or structural issues that made them incompatible with the strict import requirements of Unity.

To solve this, I developed a repair pipeline that could ingest and fix these files. I created custom ComfyUI nodes to handle the transmission of GLB files over HTTP. Inside the pipeline, I used the Blender API within Python to script a tool that imports the model, extracts all individual layers, and re-merges them correctly. This automated process ensured every model came out with clean meshing, ready for immediate use in the game.