---
title: "Retailbot"
excerpt: "Retailbot is an indoor research robot focused on creating real-time human safety maps."

header:
  teaser: /assets/images/retailbot/thumbnail.jpg
  
hardware_gallery:
  - url: /assets/images/retailbot/retailbot.jpg
    image_path: /assets/images/retailbot/retailbot.jpg

  - url: /assets/images/retailbot/perception_mast.png
    image_path: /assets/images/retailbot/perception_mast.png

software_gallery:
  - url: /assets/images/retailbot/bounding_boxes.png
    image_path: /assets/images/retailbot/bounding_boxes.png

  - url: /assets/images/retailbot/hall_map.png
    image_path: /assets/images/retailbot/hall_map.png

toc: true
toc_sticky: true
toc_label: "Table of Contents"
toc_icon: "none"
---

## Highlights
- Integrated an autonomy system using LiDAR, IMU, depth cameras, and SLAM
- Created a custom library for Roboteq motor controllers, enabling odometry and slip modeling

## Meet Retailbot

Retailbot is an indoor research robot focused on creating real-time human safety maps as part of an ongoing project at the WVU Interactive Robotics Laboratory. Retailbot is equipped with a Velodyne VLP-16 LiDAR, an Intel Realsense D455 depth camera, and a ZED 2i stereo camera.

Utilizing onboard depth cameras, IMU, and motor feedback data, Retailbot aims 
to create a real-time walkability map of retail environments, characterizing the safety of different areas in a space for the humans traversing in them. The goal of this project is to create safer environments for retail workers and shoppers.

{% include gallery id="hardware_gallery"%}


## Technical Stack

My work on Retailbot included creating a library for interfacing with the Roboteq MDC2460 motor controllers, integrating all of the TOF and stereo sensors, and integrating the SLAM and autonomy stack. For autonomous navigation, Nav2 was selected for its extensive feature set, configurability, and plugin support.

- Ubuntu Linux and ROS2
- Integrated SLAM and autonomy system
- Created a custom library for Roboteq MDC2460 motor controllers
- Utilized the ZED SDK for object detection

{% include gallery id="software_gallery"%}