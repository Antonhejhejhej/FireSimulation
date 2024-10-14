# FireSimulation
 Eulerian fluid sim in Unity adapted to look like fire. Part of bachelor's thesis.

 ![FireSimBox](https://github.com/Antonhejhejhej/FireSimulation/assets/123376072/31e8b266-f749-4c4c-9789-6a1e32010eb2)
![FireSimRabbit2](https://github.com/Antonhejhejhej/FireSimulation/assets/123376072/b04420b3-a09a-48d2-adb9-c4c8687f022b)

Based on this fluid sim by Justin Hawkins: https://github.com/Scrawk/GPU-GEMS-2D-Fluid-Simulation
Adapted according to this paper by Martin Guay, Fabrice Colin and Richard Egli: https://martinguay.net/GPU%20Fluids/ScreenSpaceFire.pdf

The 3D models are also rendered with a separate camera using a different material which then acts as 'fuel' for the fluid simulation. The simulation runs as a series of shaders to enable reading and writing to textures. This is a solution for rendering 3D-looking fire in a 3D setting using 2D fire simulation.


 

![KameraJämför](https://github.com/Antonhejhejhej/FireSimulation/assets/123376072/db5e8d2a-270c-438c-ac49-5ba8091a0b2d)
