// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'


Shader "FluidSim/Fuel" 
{
	SubShader 
	{
    	Pass 
    	{
			ZTest Always
			//Blend SrcAlpha OneMinusSrcAlpha 

			CGPROGRAM
			#include "UnityCG.cginc"
			#pragma target 3.0
			#pragma vertex vert
			#pragma fragment frag
			
			uniform float _Fill;
			uniform sampler2D _Source;
			uniform sampler2D _Fuel;
			
			struct v2f 
			{
				float4  pos : SV_POSITION;
				float2  uv : TEXCOORD0;
			};
			
			v2f vert(appdata_base v)
			{
				v2f OUT;
				OUT.pos = UnityObjectToClipPos(v.vertex);
				OUT.uv = v.texcoord.xy;
				return OUT;
			}
			
			float4 frag(v2f IN) : COLOR
			{
			    /*float d = distance(_Point, IN.uv);
			    
				float impulse = 0;
			    
			    if(d < _Radius) 
			    {
			        float a = (_Radius - d) * 0.5;
					impulse = min(a, 1.0);
			    } 

				float source = tex2D(_Source, IN.uv).x;
			  
			  	return max(0, lerp(source, _Fill, impulse)).xxxx;*/

				float impulse = 0;

				float fuel = tex2D(_Fuel, IN.uv).x;


				if(fuel > 0)
				{
					impulse = fuel;
				}
				

				float source = tex2D(_Source, IN.uv).x;
			  
			  	return max(0, lerp(source, _Fill, impulse)).xxxx;
			}
			
			ENDCG

    	}
	}
}