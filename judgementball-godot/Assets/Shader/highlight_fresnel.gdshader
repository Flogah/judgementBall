shader_type spatial;
render_mode blend_premul_alpha, unshaded;

uniform vec3 fresnel_color : source_color = vec3(0.0, 0.0, 0.0);
uniform float intensity: hint_range(0.0, 1.0) = 0.4;

float fresnel(float amount, vec3 normal, vec3 view)
{
	return pow((1.0 - clamp(dot(normalize(normal), normalize(view)), 0.0, 1.0 )), amount);
}

void fragment()
{
	vec3 base_color = fresnel_color;
	float basic_fresnel = fresnel(5.0, NORMAL, VIEW);
	ALBEDO = base_color + basic_fresnel;
	ALPHA = intensity;
}