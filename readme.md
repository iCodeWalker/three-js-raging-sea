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
