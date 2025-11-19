---
title: "URC"
excerpt: "An international robotics competition emulating a rover mission in a mock-Mars environment."

header:
  teaser: /assets/images/urc/thumbnail.jpg

toc: true
toc_sticky: true
toc_label: "Table of Contents"
toc_icon: "none"

missions:

  - url: /assets/images/urc/missions/aruco.jpg
    image_path: /assets/images/urc/missions/aruco.jpg

  - url: /assets/images/urc/missions/lander.jpg
    image_path: /assets/images/urc/missions/lander.jpg

my_roles:

  - url: /assets/images/urc/my_roles/rock_garden.jpg
    image_path: /assets/images/urc/my_roles/rock_garden.jpg

  - url: /assets/images/urc/my_roles/outreach.jpg
    image_path: /assets/images/urc/my_roles/outreach.jpg

  - url: /assets/images/urc/my_roles/debugging.jpg
    image_path: /assets/images/urc/my_roles/debugging.jpg

autonomy_stack:

  - url: /assets/images/urc/autonomy/stack.png
    image_path: /assets/images/urc/autonomy/stack.png

autonomy_mission:

  - url: /assets/images/urc/autonomy/slopes.png
    image_path: /assets/images/urc/autonomy/slopes.png

slam:

  - url: /assets/images/urc/autonomy/evansdale.png
    image_path: /assets/images/urc/autonomy/evansdale.png
---

## Highlights
- Second Place, 2024 University Rover Challenge
- First Place, 2023 University Rover Challenge
- Three years of leading development of rover autonomy systems

## What is URC?

The University Rover Challenge (URC) is an annual international robotics competition for university students held in Hanksville, Utah at the Mars Desert Research Station.

URC consists of 3 phases that follow NASA's project lifecycle: The Preliminary Design Review, the System Acceptance Review, and the Field Competition in Utah.

{% include gallery id="missions"%}

### Autonomy Mission

The goal of the autonomy mission is for a team's rover to autonomously travel between GNSS locations, and discover ArUco markers and objects of interest in the environment. This mission is a test of a team's path planning system, computer vision models, and autonomy system design.

### Science Mission

The goal of the science mission is to collect soil from a selected area, perform analysis with instruments on the rover, and make conclusions about the past and present geology of the area, the suitability of the area for sustaining life, and whether life existed previously, currently, or never. 

### Delivery Mission

The goal of the delivery mission is to transport tools in the environment across large distances. The mission includes searching for objects in the environment, gathering widely scattered objects, and opening toolboxes. This mission is a test of the resilience of the rover's communication system and the rover's manipulator.    

### Servicing Mission

The goal of the servicing mission is to utilize a manipulator to perform dextrous tasks such as operating a joystick, opening drawers and placing objects in them, plugging in a USB drive, and typing on a keyboard. This mission is a test of the dexterity of the rover's manipulator.

## Leadership Roles

{% include gallery id="my_roles"%}

### Programming Lead

My freshman year, I started on the URC team as a programmer where I gained initial experience with Linux and ROS. My sophomore year, I was selected as Programming Lead for the team, training and guiding over 20 programmers across each rover subsystem. 

During this period, I led the team's transition from ROS (Noetic) to ROS2 (Humble). This transition included a refactoring of all of our actively used internal libraries for devices like motors, cameras, and our communication system.

Additionally, I worked on a library for interfacing with brushless MyActuator motors. Our rover utilized MyActuator motors for the 4 drivebase motors, and 5 degrees of freedom of the rover's custom robotic manipulator. This library was created to modularly interface with Myactuator brushless motors in Python over both CAN and UART interfaces and is entirely decoupled from ROS to ensure continued use through future ROS versions.

### Algorithms Lead

Identifying the need for our rover to match the capabilities found at the forefront of robotics research, I founded the Algorithms group my Junior year and continued leading the group through my senior year. The Algorithms group was created to allow students on the team to focus on robotics algorithms including state estimation, path planning, autonomy systems, SLAM, and computer vision.

During this time, I led the testing and integration of multiple iterations of sensor suites including IMUs and LiDARs, drawing on my experience from the [Retailbot](/projects/retailbot) project. Additionally, I was responsible for the design and testing of our autonomy system including integrating SLAM algorithms, training computer vision models, and testing our navigation system.

## Autonomy System Design

During my time as the Algorithms lead on the URC team, I focused on exploring SLAM implementations and local planners to mature and develop a previously underdeveloped autonomous navigation system on our rover.

{% include gallery id="autonomy_stack"%}

The navigation system design included a global planner, and a SLAM-based local planner. The global planning system utilized height map data from the OpenTopography project to create a slope map of the competition area in Utah. 

{% include gallery id="autonomy_mission"%}

The slope map served as a low-resolution cost map on which graph-based algorithms such as PRM, RRT*, or others would run. These algorithms created naive intermediary paths to and from goal points. To traverse to and from points in the global paths, a local planner was used.  

For the local planner, a collection of ROS packages in the CMU Exploration project were selected for their customizability, terrain analysis components, and overall simplicity. This local planning system used a motion-primitive-based approach, projecting pre-computed motion primitives into the mapped environment, checking for collisions. The local planner also utilized a terrain analysis component to identify and map the ground in the environment with a RANSAC-based approach.

{% include gallery id="slam"%}

Testing of the autonomy system included integrating and testing multiple LiDARs including the Livox Mid-360 and the Unitree L1, integrating and testing SLAM implementations including FAST-LIO, and tuning the local planner performance.