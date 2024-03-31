# Raging Sea

1. We are going to use sinus to create Big Waves.

2. To create waves we move the 'y' value of the modelPosition with a sin(...) based on 'x'.

3. To add elevation in the waves :

   1. We will add uniforms.
   2. We will create a 'elevation' variable in order to use it later to colorize the waves.

4. Frequency on x and z axes.

   1. We will add uniforms.
   2. Use the 'y' property of uBigWavesFrequency to add waves on the z-axis

5. Wave Animation:

   1. We can use the elapsed time to offset the value in the sin(...)
   2. create a uTime uniform.

   3. We want to control the speed of the values. We can use the same speed for both the axes.

6. Colors:

   1. We will use two colors, one for depth and one for the surface.
   2. Because we want to be able to tweak them, we can create a debugObject just to put color values in it.
      const debugObject = {};
   3. Add depthColor and surfaceColor property to the debugObject.
   4. Create uDepthColor and uSurfaceColor uniforms with those properties by using the Color class.
   5. Add it to Dat.GUI with the addColor method and update waterMaterial uniforms with onChange(...)
   6. In Fragment shader retrieving those colors.
   7. Now we will create a mix between the uDepthColor and the uSurfaceColor according to wave elevation.

7. Small waves:
   1. We can use 3D perlin noise to make waves change with time.
   2. We will add more chaos in the waves.
