Shader "allotrope.ijk/Grayscale.Shader"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
		_Perc("Percentage", Float) = 1.0
		_Enabled ("Enabled", Float) = 1.0
		_Flip ("Flip", Float) = 1.0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
				float4 vertex : SV_POSITION; // unused
                float2 uv : TEXCOORD0; // x,y values for sampling a texture
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;
			float _Enabled;
			float _Perc;
			float _Flip;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
                return o;
            }

			// Takes in a rgba pixel value and returns a gray pixel value
			float4 RGBToGray(float4 rgba)
			{
				// Standard conversion of RGB to Gray
				float gray = ((0.3 * rgba.r) + (0.59 * rgba.g) + (0.11 * rgba.b));

				// We keep the existing alpha value (transparency)
				return float4(gray, gray, gray, rgba.a);
			}

			// fixed4 - 4 float values, RGB + alpha
            fixed4 frag (v2f i) : SV_Target
            {
				//// Let's check if we want to enable the shader
				if (_Enabled < 0.5)
				{
					// Return the original texture pixel
					// Function below samples the texture (_MainTex) at the input (x, y) position
					return tex2D(_MainTex, i.uv);
				}

				if (_Flip > 0.5)
				{
					// Flipped x sampling for uv map
					i.uv.x = (1.0 - i.uv.x);
				}

				// Sample a pixel from the texture (_MainTex) at the input (x, y) position
				// tex2D(texture, (x,y)) - Unity helper function that gets a pixel from a texture
				float4 rgba = tex2D(_MainTex, i.uv);

				// Convert the rgba pixel to a gray pixel
				float4 gray = RGBToGray(rgba);

                return (_Perc * gray) + ((1.0 - _Perc) * rgba);
            }
            ENDCG
        }
    }
}
