Shader "DemoShader"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
		_TimeScale ("Time Scale", Float) = 10
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert // Our vertex shader function!
            #pragma fragment frag // Our frag shader function!

            #include "UnityCG.cginc"

            struct appdata // Inputs to our vertex shader pass!
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

			// Standard input for texture sampling
            sampler2D _MainTex;
            float4 _MainTex_ST;
			float _TimeScale;

			// Vertex function defined by our pragma
            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
				o.vertex.x = o.vertex.x * sin(_TimeScale * _Time.r);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }

			// Frag function defined by our pragma
            fixed4 frag (v2f i) : SV_Target
            {
				// sample image at a x,y location!
                float4 color = tex2D(_MainTex /*Image or Texture*/, i.uv /*x,y coordinates*/);

				// Manipulate th0e color!
				float averageValue = (color.r + color.g + color.b) / 3.0;

				averageValue += sin(i.uv.x * 10.0f + _TimeScale * _Time.r); // x is from 0 to 1

				color = float4(averageValue /*r*/, averageValue /*g*/, averageValue /*b*/, 1.0);

                return color;
            }
            ENDCG
        }
    }
}
