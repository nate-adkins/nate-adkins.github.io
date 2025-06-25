---
title: "Retailbot"
excerpt: "Retailbot is an indoor research robot focused on creating real-time human safety maps."

header:
  teaser: /assets/images/retailbot/retailbot.jpg
  
hardware_gallery:
  - url: /assets/images/retailbot/retailbot.jpg
    image_path: /assets/images/retailbot/retailbot.jpg
    alt: "retailbot"

  - url: /assets/images/retailbot/perception_mast.png
    image_path: /assets/images/retailbot/perception_mast.png
    alt: "retailbot's perception mast"

  - url: /assets/images/retailbot/motor_controllers.jpg
    image_path: /assets/images/retailbot/motor_controllers.jpg
    alt: "retailbot's motor controllers"

software_gallery:
  - url: /assets/images/retailbot/bounding_boxes.png
    image_path: /assets/images/retailbot/bounding_boxes.png
    alt: "3d bounding boxes for detected people"

  - url: /assets/images/retailbot/costmap.png
    image_path: /assets/images/retailbot/costmap.png
    alt: "cost map of the environment"

  - url: /assets/images/retailbot/hall_map.png
    image_path: /assets/images/retailbot/hall_map.png
    alt: "SLAM map"

toc: true
toc_sticky: true
toc_label: "Table of Contents"
toc_icon: "none"
---

### Meet Retailbot:

Retailbot is an indoor research robot focused on creating real-time human safety maps. Retailbot is equipped with a velodyne VLP-16 lidar, an Intel Realsense D455 depth camera, and a ZED 2i stero camera.

Utilzing onboard depth cameras, imu, and motor feedback data, retailbot aims 
to create a real-time walkability map of retail environments. 

{% include gallery id="hardware_gallery"%}


### Technical Stack:

My work on Retailbot included creating a Python library for interfacing with the Roboteq MDC2460 motor controllers, integrating all of the TOF and stereo sensors, and integrating the SLAM and autonomy system.

{% include gallery id="software_gallery"%}

To create maps of the environment with Retailbot, the onboard Lidar and IMU were used alongside [slam toolbox](https://github.com/SteveMacenski/slam_toolbox). For autonomous navigation, [Nav2](https://docs.nav2.org/index.html) was utilized for its extensive feature set, configurability, and plugin support.

- Ubuntu Linux, Python, ROS2, SLAM
- Depth cameras, LiDAR, IMU