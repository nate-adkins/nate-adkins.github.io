---
title: "Loopy"
excerpt: "Loopy is a highly unique swarm robotics research platform."
header:
  teaser: /assets/images/loopy/thumbnail.png

loopy_gallery:

  - url: /assets/images/loopy/crazy_loopy.gif
    image_path: /assets/images/loopy/crazy_loopy.gif
    alt: "Loopy oscillating on a table"

  - url: /assets/images/loopy/loopy.jpg
    image_path: /assets/images/loopy/loopy.jpg
    alt: "Loopy on a table"

posters_gallery:

  - url: /assets/images/loopy/symposium.jpg
    image_path: /assets/images/loopy/symposium.jpg
    alt: "Undergraduate research symposium"

  - url: /assets/images/loopy/iros.jpg
    image_path: /assets/images/loopy/iros.jpg
    alt: "IROS poster presentation"


toc: true
toc_sticky: true
toc_label: "Table of Contents"
toc_icon: "none"
---

### Meet Loopy:

Loopy is a swarm of 36 individual servo motors circularly connected in a chain. The servo motors each serve as an independent agent in the swarm, with only one degree of freedom.

As an ongoing research platform at the WVU Interactive Robotics Laboratory, Loopy is used for exploring biologically inspired design principles, how decentralized biological processes and systems can be utilized in robotics, and what emergent behaviors can be observed by applying biological principles to Loopy.

{% include gallery id="loopy_gallery"%}

### Technical Stack:

My work with Loopy included swarm robotics research, developing a synchronous interfacing library for Dynamixel servo motors, interfacing with nested, multiplexed I2C proximity and light sensors, and integrating ROS. 

- Ubuntu Linux, ROS, Python, C
- Microcontrollers, I2C
- Dynamixel servo motors


### Research:

I started on this project the summer of my freshman year, researching consensus methods in swarm robotics and on how they could be applied in combination with human interaction to enable Loopy to create decentralized shapes.

{% include gallery id="posters_gallery"%}

In our continued research, the lab's graduate students and I continued researching various swarm robotics concepts including how turing patterns could enable Loopy to morph or undergo transformation. 

We applied reaction-diffusion-mediated turing pattern models to Loopy, showing how biologically inspired approaches can generate adaptable and dynamic morphologies in robot swarms. As a result of this research, I co-authored an IROS 2023 paper on Loopy.

[Smith, T., Butts, M., Adkins, N., Gu, Y., “Swarm of One: Bottom-up Emergence of Stable Robot Bodies from Identical Cells,” IEEE/RSJ IROS 2023, Oct 2023.](https://arxiv.org/abs/2306.12629)
