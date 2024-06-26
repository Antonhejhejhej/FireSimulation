// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'


Shader "FluidSim/Obstacle" 
{
	SubShader 
	{
    	Pass 
    	{
			ZTest Always

			CGPROGRAM
			#include "UnityCG.cginc"
			#pragma target 3.0
			#pragma vertex vert
			#pragma fragment frag
			
			uniform float2 _InverseSize;
		
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
				float4 result = float4(0,0,0,0);
				
				//draw border 
				if(IN.uv.x <= _InverseSize.x) result = float4(1,1,1,1);
				if(IN.uv.x >= 1.0-_InverseSize.x) result = float4(1,1,1,1);
				if(IN.uv.y <= _InverseSize.y) result = float4(1,1,1,1);
				if(IN.uv.y >= 1.0-_InverseSize.y) result = float4(1,1,1,1);
			
				return result;
			}
			
			ENDCG

    	}
	}
}