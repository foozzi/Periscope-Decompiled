#extension GL_OES_EGL_image_external : require
varying highp vec2 FS_UV;

uniform samplerExternalOES Texture0;

void main(void)
{
	lowp vec3 sample = texture2D(Texture0, FS_UV.xy).xyz;
    gl_FragColor = vec4(sample.xyz, 1.0);
}