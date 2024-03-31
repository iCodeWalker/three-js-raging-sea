// retrive depth and surface color
uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;

uniform float uColorOffset;
uniform float uColorMultiplier;

// retrive varying vElevation
varying float vElevation;

void main() {
    // gl_FragColor = vec4(uDepthColor, 1.0);

    // using vElevation
    // gl_FragColor = vec4(vElevation, vElevation, vElevation, 1.0);

    // using mix for mixing color

    // Create a mixStrength variable and use it in the mix(...)
    float mixStrength = (vElevation + uColorOffset) * uColorMultiplier;
    vec3 color = mix(uDepthColor, uSurfaceColor, mixStrength);
    gl_FragColor = vec4(color, 1.0);

}