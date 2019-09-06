Shader "allotrope.ijk/Grayscale.Shader"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
		_Enabled ("Enabled", Float) = 1.0
		_Perc ("Percentage", Float) = 1.0
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
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
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

			float4 RGBToGray(float4 value)
			{
				float gray = ((0.3 * value.r) + (0.59 * value.g) + (0.11 * value.b));
				return float4(gray, gray, gray, value.a);
			}

            fixed4 frag (v2f i) : SV_Target
            {
				if (_Enabled < 0.5)
				{
					// Default texture color
					return tex2D(_MainTex, i.uv);
				}

				if (_Flip > 0.5)
				{
					// Flipped x sampling for uv map
					i.uv.x = (1.0 - i.uv.x);
				}

				float4 rgb = tex2D(_MainTex, i.uv);
				float4 gray = RGBToGray(rgb);
                return (_Perc * gray) + ((1.0 - _Perc) * rgb);
            }
            ENDCG
        }
    }
}
