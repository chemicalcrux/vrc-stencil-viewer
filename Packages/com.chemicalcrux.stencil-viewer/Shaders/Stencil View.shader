Shader "Hidden/chemicalcrux/Stencil Viewer/Stencil View"
{
    Properties {}
    SubShader
    {
        Tags
        {
            "RenderType"="Overlay" "Queue"="Overlay"
        }
        LOD 100
        ZWrite Off

        CGINCLUDE
        #pragma vertex vert

        #include "UnityCG.cginc"

        struct appdata
        {
            float4 vertex : POSITION;
        };

        struct v2f
        {
            float4 vertex : SV_POSITION;
        };

        v2f vert(appdata v)
        {
            v2f o;
            o.vertex = UnityObjectToClipPos(v.vertex);
            return o;
        }
        ENDCG
        Pass
        {
            Blend One Zero
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 0;
            }
            ENDCG
        }
        Pass
        {
            Blend One One
            Stencil
            {
                Ref 1
                ReadMask 1
                Comp Equal
            }
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 1.0 / 128;
            }
            ENDCG
        }
        Pass
        {
            Blend One One
            Stencil
            {
                Ref 2
                ReadMask 2
                Comp Equal
            }
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 2.0 / 128;
            }
            ENDCG
        }
        Pass
        {
            Blend One One
            Stencil
            {
                Ref 4
                ReadMask 4
                Comp Equal
            }
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 4.0 / 128;
            }
            ENDCG
        }
        Pass
        {
            Blend One One
            Stencil
            {
                Ref 8
                ReadMask 8
                Comp Equal
            }
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 8.0 / 128;
            }
            ENDCG
        }
        Pass
        {
            Blend One One
            Stencil
            {
                Ref 16
                ReadMask 16
                Comp Equal
            }
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 16.0 / 128;
            }
            ENDCG
        }
        Pass
        {
            Blend One One
            Stencil
            {
                Ref 32
                ReadMask 32
                Comp Equal
            }
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 32.0 / 128;
            }
            ENDCG
        }
        Pass
        {
            Blend One One
            Stencil
            {
                Ref 64
                ReadMask 64
                Comp Equal
            }
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 64.0 / 128;
            }
            ENDCG
        }
        Pass
        {
            Blend One One
            Stencil
            {
                Ref 128
                ReadMask 128
                Comp Equal
            }
            CGPROGRAM
            #pragma fragment frag

            fixed4 frag(v2f i) : SV_Target
            {
                return 128.0 / 128;
            }
            ENDCG
        }
    }
}