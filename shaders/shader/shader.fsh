//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
    vec3 lum = vec3(0.299, 0.587, 0.114);
    gl_FragColor = vec4( vec3(dot( Color.rgb, lum)), Color.a);
}
