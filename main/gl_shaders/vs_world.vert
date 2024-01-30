
layout(location = 0) out vec4 color;

void main()
{
	gl_Position = ftransform();
	gl_TexCoord[0]  = gl_TextureMatrix[0] * gl_MultiTexCoord0;	//Albedo
	gl_TexCoord[1]  = gl_TextureMatrix[1] * gl_MultiTexCoord1;	//Lighmap
	gl_TexCoord[2]  = gl_TextureMatrix[2] * gl_MultiTexCoord2;	//Detail
	color = gl_Color;
	
	vec4 eyePos = gl_ModelViewMatrix * gl_Vertex;
	gl_FogFragCoord = abs( eyePos.z / eyePos.w );
}