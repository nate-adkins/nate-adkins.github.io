---
title: "Loopy"
excerpt: "A highly unique swarm robotics research platform."
header:
  teaser: /assets/images/loopy/loopy.png

loopy_gallery:

  - url: /assets/images/loopy/crazy_loopy.gif
    image_path: /assets/images/loopy/crazy_loopy.gif

  - url: /assets/images/loopy/loopy.png
    image_path: /assets/images/loopy/loopy.png

posters_gallery:

  - url: /assets/images/loopy/symposium.jpg
    image_path: /assets/images/loopy/symposium.jpg

  - url: /assets/images/loopy/iros.jpg
    image_path: /assets/images/loopy/iros.jpg


toc: true
toc_sticky: true
toc_label: "Table of Contents"
toc_icon: "none"
---

## Highlights
- Co-authored an [IROS 2023 conference paper on swarm robotics](https://ieeexplore.ieee.org/document/10342118)
- Created a custom library for Dynamixel servo motors
- Interfaced with microcontrollers in C and Python for sensor integration in ROS

## Meet Loopy

Loopy is a swarm of 36 individual servo motors circularly connected in a chain. The servo motors are each controlled by an independent agent in the swarm.

As an ongoing research platform at the Interactive Robotics Laboratory, Loopy is used for exploring how decentralized processes found in nature can be utilized in robotics applications.

{% include gallery id="loopy_gallery"%}

## Technical Stack

My work with Loopy included developing all of the hardware interfacing including dynamixel servo motors, and I2C light and proximity sensors. 

- Ubuntu Linux and ROS 
- Microcontroller interfacing in C and Python
- Created a custom library for Dynamixel servo motor interfacing

## Research

The initial research conducted my freshman year was focused on consensus methods in swarm robotics and on how they could be applied in combination with human interaction to enable Loopy to create shapes in a decentralized manner.

{% include gallery id="posters_gallery"%}

Continuing on with research into my sophomore year, the lab's graduate students and I explored other swarm robotics concepts including Turing patterns and how they could enable Loopy to morph or undergo transformation.

We applied reaction-diffusion-mediated Turing pattern models to Loopy, showing how biologically inspired approaches can generate adaptable and dynamic morphologies in robot swarms.

## Publication

[Smith, T., Butts, M., Adkins, N., Gu, Y., “Swarm of One: Bottom-up Emergence of Stable Robot Bodies from Identical Cells,” IEEE/RSJ IROS 2023, Oct 2023.](https://ieeexplore.ieee.org/document/10342118)
