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

## Meet Retailbot

Retailbot is an indoor research robot focused on creating real-time human safety maps as part of an ongoing project at the WVU Interactive Robotics Laboratory. Retailbot is equipped with a Velodyne VLP-16 LiDAR, an Intel Realsense D455 depth camera, and a ZED 2i stereo camera.

Utilizing onboard depth cameras, IMU, and motor feedback data, Retailbot aims 
to create a real-time walkability map of retail environments, characterizing the safety of different areas in a space for the humans traversing in them. The goal of this project is to create safer environments for retail workers and shoppers.

{% include gallery id="hardware_gallery"%}


## Technical Stack

To create a map of the environment with Retailbot, the onboard LiDAR and IMU were used alongside [slam toolbox](https://github.com/SteveMacenski/slam_toolbox). For autonomous navigation, [Nav2](https://docs.nav2.org/index.html) was utilized for its extensive feature set, configurability, and plugin support.

{% include gallery id="software_gallery"%}

My work on Retailbot included creating a Python library for interfacing with the Roboteq MDC2460 motor controllers, integrating all of the TOF and stereo sensors, and integrating the SLAM and autonomy stack.

- Ubuntu Linux and ROS2
- Integrated LiDAR, IMU, and SLAM on the robot
- Integrated depth cameras for object detection and obstacle avoidance
- Created custom Python library for interfacing with Roboteq motor controllers