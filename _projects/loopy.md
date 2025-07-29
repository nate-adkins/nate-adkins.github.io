---
title: "Loopy"
excerpt: "Loopy is a highly unique swarm robotics research platform."
header:
  teaser: /assets/images/loopy/thumbnail.png

loopy_gallery:

  - url: /assets/images/loopy/crazy_loopy.gif
    image_path: /assets/images/loopy/crazy_loopy.gif

  - url: /assets/images/loopy/loopy.jpg
    image_path: /assets/images/loopy/loopy.jpg

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
- Co-authored an [IROS 2023 Paper](https://arxiv.org/abs/2306.12629) on swarm robotics
- Created a custom library for Dynamixel servo motors
- Interfaced with microcontrollers in C and Python for sensor integration in ROS

## Meet Loopy

Loopy is a swarm of 36 individual servo motors circularly connected in a chain. The servo motors are each controlled by a single independent agent in the swarm who has only one degree of freedom. 

As an ongoing research platform at the WVU Interactive Robotics Laboratory, Loopy is used for exploring how decentralized biological processes and systems can be utilized in robotics, and what emergent behaviors can be observed by applying biological principles to Loopy.

{% include gallery id="loopy_gallery"%}

## Technical Stack

My work with Loopy included swarm robotics research, developing a synchronous interfacing library for Dynamixel servo motors, interfacing with nested, multiplexed I2C proximity and light sensors, and integrating ROS.

- Ubuntu Linux and ROS 
- Microcontroller interfacing in C and Python
- Created a custom library for Dynamixel servo motors

## Research

I started on this project the summer of my freshman year, researching consensus methods in swarm robotics and on how they could be applied in combination with human interaction to enable Loopy to create decentralized shapes.

{% include gallery id="posters_gallery"%}

Continuing on with research into my sophomore year, the lab's graduate students and I explored other swarm robotics concepts including Turing patterns and how they could enable Loopy to morph or undergo transformation. 

We applied reaction-diffusion-mediated Turing pattern models to Loopy, showing how biologically inspired approaches can generate adaptable and dynamic morphologies in robot swarms. As a result of this research, I co-authored an IROS 2023 paper on Loopy.

[Smith, T., Butts, M., Adkins, N., Gu, Y., “Swarm of One: Bottom-up Emergence of Stable Robot Bodies from Identical Cells,” IEEE/RSJ IROS 2023, Oct 2023.](https://arxiv.org/abs/2306.12629)
