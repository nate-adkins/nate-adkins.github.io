---
title: "URC"
excerpt: "The University Rover Challenge is an international collegiate-level robotics competition in a mock-Mars environment."

header:
  teaser: /assets/images/urc/thumbnail.jpg

toc: true
toc_sticky: true
toc_label: "Table of Contents"
toc_icon: "none"

missions:

  - url: /assets/images/urc/missions/daedalus.jpg
    image_path: /assets/images/urc/missions/daedalus.jpg

  - url: /assets/images/urc/missions/aruco.jpg
    image_path: /assets/images/urc/missions/aruco.jpg

  - url: /assets/images/urc/missions/hillside.jpg
    image_path: /assets/images/urc/missions/hillside.jpg

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

URC consists of 3 phases that loosely follow NASA's project lifecycle: The Preliminary Design Review, the System Acceptance Review, and the Field Competition in Utah.

Unlike other URC teams, our team took a unique approach to the competition, creating and fabricating entirely new designs for our drivebase, science payload, robotic manipulator, robot autonomy systems, and other subsystems each year. This approach allowed for maximum design exploration, refinement, and system knowledge for team members. 

{% include gallery id="missions"%}

### Autonomy Mission

The goal of the autonomy mission is for a team's rover to autonomously travel between GNSS locations, search and locate ArUco markers, and search and locate objects of interest in the environment. This mission is a test of a team's path planning system, computer vision models, and autonomy system design.

### Science Mission

The goal of the science mission is to collect soil from a selected area, perform analysis with instruments on the rover, and make conclusions about the past and present geology of the area, the suitability of the area for sustaining life, and whether life existed previously, currently, or never. 

### Delivery Mission

The goal of the delivery mission is to transport various objects in the environment across large distances. The mission includes searching for objects in the environment, gathering widely scattered objects, and opening toolboxes. This mission is a test of the resilience of the rover's communication system, and the rover's manipulator.    

### Servicing Mission

The goal of the servicing mission is to utilize a manipulator to perform dextrous tasks such as using a joystick, opening drawers and placing objects in them, plugging in a USB drive, and typing on a keyboard. This mission is a test of the dexterity of the rover's manipulator.

## Leadership Roles

{% include gallery id="my_roles"%}

### Programming Lead

My freshman year, I started on the URC team as a programmer where I gained initial experience with Linux and ROS. My sophomore year, I was selected as Programming Lead for the team, training and guiding over 20 programmers across each rover subsystem. 

During this period, I led the team's transition from ROS (Noetic) to ROS2 (Humble). This transition included a refactoring of all of our actively used internal libraries for devices like motors, cameras, and our communication system.

### Algorithms Lead

Identifying the need for our rover to match the capabilities found at the forefront of robotics research, I founded the Algorithms group my Junior year and continued leading the group through my senior year. The Algorithms group was created to allow students on the team to focus on robotics algorithms including state estimation, path planning, autonomy systems, SLAM, and computer vision.

During this time, I led the testing and integration of multiple generations of sensor suites including IMUs and LiDARs, drawing on my experience from the [Retailbot](/projects/retailbot) project. Additionally, I was responsible for the design and testing of our autonomy system including integrating SLAM implementations and computer vision models on the rover.

## Projects

### CAN and UART Motor Library

Our rover utilized brushless MyActuator motors for the 4 drivebase motors, and 5 degrees of freedom of the rover's custom robotic manipulator. This library was created to modularly interface with Myactuator brushless motors in Python over both CAN and UART interfaces.

Through my experience transitioning our URC team from ROS to ROS2 and my experience working with ROS2 on [Retailbot](/projects/retailbot), I recognized the value in decoupling our hardware libraries and drivers from ROS. Libraries developed for previous devices used by our team relied on different versions of ROS and would commonly create technical debt during transitional periods for our team. Foreseeing similar issues in the future, I created this library completely decoupled from ROS allowing for continued use through future ROS editions.

### Autonomy System

During my time as the Algorithms lead on the URC team, I focused on utilizing SLAM implementations to mature and develop a previously underdeveloped autonomous navigation system on our rover.

{% include gallery id="autonomy_stack"%}

Our navigation system consisted of a global and SLAM-based local planning system. The global planning system utilized height map data from the OpenTopography project to create a slope map of the competition area in Utah. 

{% include gallery id="autonomy_mission"%}

The slope map served as a low-resolution cost map on which graph-based algorithms such as PRM, RRT*, or others would run. These algorithms created naive intermediary paths to and from goal points. To traverse to and from points in the global paths, a local planner was used.  

For the local planner, a collection of ROS packages in the CMU Exploration project were selected for their customizability, terrain analysis components, and overall simplicity. This local planning system used a motion-primitive-based approach, projecting pre-computed motion primitives into the mapped environment, checking for collisions. The local planner also utilized a terrain analysis component to identify and map the ground in the environment with a RANSAC-based approach.

{% include gallery id="slam"%}

Testing of the autonomy system included integrating and testing multiple LiDARs such as the Livox Mid-360 and the Unitree L1, integrating and testing SLAM implementations including FAST-LIO, and tuning the local planner performance, finding an optimal balance between intrepidity and reliability.