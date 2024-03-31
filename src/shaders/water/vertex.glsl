// access uniform to control elevation of waves
uniform float uBigWavesElevation;
uniform vec2 uBigWavesFrequency;

// we will retrieve the uTime value and use it in both sin(...) functions
uniform float uTime;

// to control speed of the waves
uniform float uBigWavesSpeed;

// For mixing color
varying float vElevation;

void main() {

    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    // To create waves we move the 'y' value of the modelPosition with a sin(...) based on 'x'.
    // modelPosition.y += sin(modelPosition.x);
    // modelPosition.y += sin(modelPosition.x) * uBigWavesElevation;

    // This Elevation variable can be used to colorize the waves
    // float elevation = sin(modelPosition.x * uBigWavesFrequency.x) * uBigWavesElevation;

    // Use the 'y' property of uBigWavesFrequency to add waves on the z-axis
    float elevation = sin(modelPosition.x * uBigWavesFrequency.x + uTime * uBigWavesSpeed) * 
                        sin(modelPosition.z * uBigWavesFrequency.y + uTime * uBigWavesSpeed) * 
                        uBigWavesElevation;

    modelPosition.y += elevation;

    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;

    // Update Varying
    vElevation = elevation;
}