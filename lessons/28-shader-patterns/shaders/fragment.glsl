varying vec2 vUv;

void main()
{   
    // Pattern 1
    // gl_FragColor = vec4(vUv, 1.0, 1.0);

    // Pattern 2
    // gl_FragColor = vec4(vUv, 0.0, 1.0);

    // Pattern3
    // gl_FragColor = vec4(vUv.y, vUv.y, vUv.y, 1.0);

    // Pattern 4 / 5
    // float strength = vUv.x;
    // float strength = vUv.y;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 6
    // float strength = 1.0 - vUv.y;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 7
    // float strength = vUv.y * 5.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 8
    float strength = mod(vUv.y * 15.0, 1.0);
    gl_FragColor = vec4(strength, strength, strength, 1.0);
    
}