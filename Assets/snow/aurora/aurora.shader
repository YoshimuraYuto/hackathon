/*

  Copyright (C) 2018 butadiene

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.

  

*/

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|normal-5964-RGB,emission-3966-OUT,alpha-7615-OUT,voffset-653-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32114,y:32712,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31551,y:32769,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31921,y:32620,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32293,y:32574,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:32250,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32293,y:32533,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Sin,id:4047,x:32281,y:33217,varname:node_4047,prsc:2|IN-4545-OUT;n:type:ShaderForge.SFN_TexCoord,id:7804,x:31420,y:32948,varname:node_7804,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:3722,x:31933,y:33246,varname:node_3722,prsc:2|A-7804-U,B-9795-OUT;n:type:ShaderForge.SFN_Time,id:4220,x:31677,y:33396,varname:node_4220,prsc:2;n:type:ShaderForge.SFN_Append,id:4680,x:32543,y:33226,varname:node_4680,prsc:2|A-6194-OUT,B-8671-OUT,C-8500-OUT;n:type:ShaderForge.SFN_Vector1,id:6194,x:32377,y:33144,varname:node_6194,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8671,x:32447,y:33404,varname:node_8671,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:653,x:32695,y:33267,varname:node_653,prsc:2|A-4680-OUT,B-5006-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5006,x:32583,y:33404,ptovrint:False,ptlb:high,ptin:_high,varname:node_5006,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Multiply,id:4545,x:32090,y:33257,varname:node_4545,prsc:2|A-3722-OUT,B-6970-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6970,x:31935,y:33408,ptovrint:False,ptlb:hasuu,ptin:_hasuu,varname:node_6970,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:848,x:31890,y:33120,varname:node_848,prsc:2|IN-3942-OUT;n:type:ShaderForge.SFN_Power,id:1904,x:32090,y:32995,varname:node_1904,prsc:2|VAL-3942-OUT,EXP-1108-OUT;n:type:ShaderForge.SFN_Vector1,id:1108,x:31933,y:33120,varname:node_1108,prsc:2,v1:2;n:type:ShaderForge.SFN_Sin,id:2616,x:31957,y:32858,varname:node_2616,prsc:2|IN-218-OUT;n:type:ShaderForge.SFN_Pi,id:8689,x:31678,y:32828,varname:node_8689,prsc:2;n:type:ShaderForge.SFN_Multiply,id:218,x:31795,y:32870,varname:node_218,prsc:2|A-8689-OUT,B-7804-U;n:type:ShaderForge.SFN_Multiply,id:7615,x:32278,y:32940,varname:node_7615,prsc:2|A-2616-OUT,B-1904-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6355,x:31677,y:33327,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_6355,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9795,x:31800,y:33344,varname:node_9795,prsc:2|A-6355-OUT,B-4220-T;n:type:ShaderForge.SFN_Pi,id:2165,x:31436,y:33222,varname:node_2165,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2683,x:31606,y:33092,varname:node_2683,prsc:2|A-7804-V,B-2165-OUT;n:type:ShaderForge.SFN_Sin,id:3942,x:31775,y:33018,varname:node_3942,prsc:2|IN-2683-OUT;n:type:ShaderForge.SFN_Code,id:3385,x:31851,y:33463,varname:node_3385,prsc:2,code:cgBlAHQAdQByAG4AIABmAHIAYQBjACgAcwBpAG4AKABkAG8AdAAoAGMAbwAsACAAZgBsAG8AYQB0ADIAKAAxADIALgA5ADgAOQA4ACwANwA4AC4AMgAzADMAKQApACkAIAAqACAANAAzADcANQA4AC4ANQA0ADUAMwApADsACgA=,output:0,fname:Function_node_3385,width:386,height:189,input:1,input_1_label:co|A-7804-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5890,x:32324,y:33416,varname:node_5890,prsc:2|A-3385-OUT,B-4533-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4533,x:32243,y:33535,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_4533,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:8500,x:32414,y:33280,varname:node_8500,prsc:2|A-4047-OUT,B-5890-OUT;n:type:ShaderForge.SFN_Vector1,id:9972,x:32417,y:32919,varname:node_9972,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:3966,x:32545,y:32827,varname:node_3966,prsc:2|A-7804-UVOUT,B-9972-OUT;proporder:5964-6665-7736-358-1813-5006-6970-6355-4533;pass:END;sub:END;*/

Shader "Shader Forge/aurora" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _MainTex ("Base Color", 2D) = "white" {}
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _high ("high", Float ) = 0.01
        _hasuu ("hasuu", Float ) = 0
        _speed ("speed", Float ) = 0
        _noise ("noise", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _high;
            uniform float _hasuu;
            uniform float _speed;
            float Function_node_3385( float2 co ){
            return frac(sin(dot(co, float2(12.9898,78.233))) * 43758.5453);
            
            }
            
            uniform float _noise;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_4220 = _Time;
                v.vertex.xyz += (float3(0.0,0.0,(sin(((o.uv0.r+(_speed*node_4220.g))*_hasuu))+(Function_node_3385( o.uv0 )*_noise)))*_high);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float3 emissive = float3(i.uv0,1.0);
                float3 finalColor = emissive;
                float node_3942 = sin((i.uv0.g*3.141592654));
                fixed4 finalRGBA = fixed4(finalColor,(sin((3.141592654*i.uv0.r))*pow(node_3942,2.0)));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _high;
            uniform float _hasuu;
            uniform float _speed;
            float Function_node_3385( float2 co ){
            return frac(sin(dot(co, float2(12.9898,78.233))) * 43758.5453);
            
            }
            
            uniform float _noise;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_4220 = _Time;
                v.vertex.xyz += (float3(0.0,0.0,(sin(((o.uv0.r+(_speed*node_4220.g))*_hasuu))+(Function_node_3385( o.uv0 )*_noise)))*_high);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _high;
            uniform float _hasuu;
            uniform float _speed;
            float Function_node_3385( float2 co ){
            return frac(sin(dot(co, float2(12.9898,78.233))) * 43758.5453);
            
            }
            
            uniform float _noise;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_4220 = _Time;
                v.vertex.xyz += (float3(0.0,0.0,(sin(((o.uv0.r+(_speed*node_4220.g))*_hasuu))+(Function_node_3385( o.uv0 )*_noise)))*_high);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = float3(i.uv0,1.0);
                
                float3 diffColor = float3(0,0,0);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0, specColor, specularMonochrome );
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
