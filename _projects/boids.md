---
title: "Boids"
excerpt: "A swarm simulation emulating flocking behaviors seen in many organisms."
header:
  teaser: /assets/images/boids/isopods_thumbnail.gif

sim_gallery:
  - url: /assets/images/boids/boids.gif
    image_path: /assets/images/boids/boids.gif

  - url: /assets/images/boids/boids2.gif
    image_path: /assets/images/boids/boids2.gif

toc: true
toc_sticky: true
toc_label: "Table of Contents"
toc_icon: "none"
---

## Highlights
- Python-based swarm simulation achieving a ~10 Hz simulation rate with 20,000 agents
- Utilizes the websocket and asyncio libraries for non-blocking, browser-based visualization
- 40x increase in simulation speed utilizing numpy vectorization  

## What are Boids?

Boids (bird-oids) are a swarm of agents that follow a set of parametrized rules, simulating behavior observed in groups of organisms, including birds.

<p style="text-align: center; font-size: 14px;">
  <img src="/assets/images/boids/isopods.gif" alt="">
  <br>
  A small group of isopods swimming in a freshwater pool
</p>

The fundamental rules for boids are as follows:

- **Separation** - turn away from surrounding local neighbors
- **Alignment** - turn towards the average heading of local neighbors
- **Cohesion** - turn towards the average location of local neighbors

These fundamental rules are applied amongst local neighbors in the swarm, defined either by a distance threshold or by an agent's k-nearest neighbors. Weights are applied to each rule's effect, allowing for modulation of the strength of each individual rule. Each agent in the swarm follows the net effect of the rules.

In this particular simulation, rules are applied using an agent's k-nearest neighbors and each rule produces a heading delta, weighted by the rule's parameter. The weighted heading deltas are then summed to produce the net heading delta. Each agent maintains constant linear speed in the simulation, changing only their heading.

The rules for boids are simple, but produce incredible emergent behavior:

{% include gallery id="sim_gallery"%}

## Technical Stack

- Simulation state updates are carried out using vectorized operations in numpy on whole-swarm state arrays
- New states are sent over a websocket connection to a javascript client, updating the visualization
- An HTML canvas is utilized for simple visualization
- The browser-based visualization includes input to control each rule's weighting

Explore the project code [here](https://github.com/nate-adkins/boids)