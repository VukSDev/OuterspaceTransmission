// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-8358-OUT,emission-4992-OUT;n:type:ShaderForge.SFN_Tex2d,id:1793,x:32029,y:32497,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8b5d37299d0b33748bc2df071ed73176,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1728,x:31391,y:32961,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_1728,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:51d9f72f215c07e4f94f0e531e34bf8b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector3,id:8259,x:31455,y:32797,varname:node_8259,prsc:2,v1:2,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:165,x:31634,y:32854,varname:node_165,prsc:2|A-8259-OUT,B-1728-R;n:type:ShaderForge.SFN_Vector3,id:5274,x:31423,y:33134,varname:node_5274,prsc:2,v1:0,v2:2,v3:0;n:type:ShaderForge.SFN_Vector3,id:8595,x:31423,y:33248,varname:node_8595,prsc:2,v1:0,v2:0,v3:2;n:type:ShaderForge.SFN_Multiply,id:6287,x:31634,y:33041,varname:node_6287,prsc:2|A-1728-G,B-5274-OUT;n:type:ShaderForge.SFN_Multiply,id:5013,x:31634,y:33188,varname:node_5013,prsc:2|A-1728-B,B-8595-OUT;n:type:ShaderForge.SFN_If,id:6974,x:32140,y:33019,varname:node_6974,prsc:2|A-8677-OUT,B-6662-OUT,GT-165-OUT,EQ-5013-OUT,LT-6287-OUT;n:type:ShaderForge.SFN_Time,id:1650,x:31509,y:33459,varname:node_1650,prsc:2;n:type:ShaderForge.SFN_Sin,id:8677,x:31721,y:33397,varname:node_8677,prsc:2|IN-1650-TTR;n:type:ShaderForge.SFN_Vector1,id:6662,x:31842,y:32762,varname:node_6662,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:4992,x:32401,y:33021,varname:node_4992,prsc:2|A-6974-OUT,B-6804-OUT;n:type:ShaderForge.SFN_If,id:6804,x:32143,y:33293,varname:node_6804,prsc:2|A-644-OUT,B-6662-OUT,GT-5013-OUT,EQ-165-OUT,LT-6287-OUT;n:type:ShaderForge.SFN_Sin,id:644,x:31825,y:33514,varname:node_644,prsc:2|IN-1650-TDB;n:type:ShaderForge.SFN_Desaturate,id:9674,x:32279,y:32479,varname:node_9674,prsc:2|COL-1793-RGB,DES-4551-OUT;n:type:ShaderForge.SFN_Multiply,id:7105,x:32334,y:32654,varname:node_7105,prsc:2|A-9674-OUT,B-6160-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6160,x:32118,y:32782,ptovrint:False,ptlb:Lightness,ptin:_Lightness,varname:node_6160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4551,x:32073,y:32690,ptovrint:False,ptlb:Desaturator,ptin:_Desaturator,varname:_Lightness_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:6551,x:32283,y:32818,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_6551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8358,x:32489,y:32725,varname:node_8358,prsc:2|A-7105-OUT,B-6551-RGB;proporder:1793-1728-6160-4551-6551;pass:END;sub:END;*/

Shader "Shader Forge/Metal" {
    Properties {
        _Color ("Color", 2D) = "white" {}
        _Mask ("Mask", 2D) = "white" {}
        _Lightness ("Lightness", Float ) = 1
        _Desaturator ("Desaturator", Float ) = 0
        _Tint ("Tint", Color) = (1,1,1,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform sampler2D _Color; uniform float4 _Color_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Lightness;
            uniform float _Desaturator;
            uniform float4 _Tint;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Color_var = tex2D(_Color,TRANSFORM_TEX(i.uv0, _Color));
                float3 diffuseColor = ((lerp(_Color_var.rgb,dot(_Color_var.rgb,float3(0.3,0.59,0.11)),_Desaturator)*_Lightness)*_Tint.rgb);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_1650 = _Time;
                float node_6662 = 0.0;
                float node_6974_if_leA = step(sin(node_1650.a),node_6662);
                float node_6974_if_leB = step(node_6662,sin(node_1650.a));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 node_6287 = (_Mask_var.g*float3(0,2,0));
                float3 node_165 = (float3(2,0,0)*_Mask_var.r);
                float3 node_5013 = (_Mask_var.b*float3(0,0,2));
                float node_6804_if_leA = step(sin(node_1650.b),node_6662);
                float node_6804_if_leB = step(node_6662,sin(node_1650.b));
                float3 emissive = (lerp((node_6974_if_leA*node_6287)+(node_6974_if_leB*node_165),node_5013,node_6974_if_leA*node_6974_if_leB)+lerp((node_6804_if_leA*node_6287)+(node_6804_if_leB*node_5013),node_165,node_6804_if_leA*node_6804_if_leB));
/// Final Color:
                float3 finalColor = diffuse + emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform sampler2D _Color; uniform float4 _Color_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Lightness;
            uniform float _Desaturator;
            uniform float4 _Tint;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Color_var = tex2D(_Color,TRANSFORM_TEX(i.uv0, _Color));
                float3 diffuseColor = ((lerp(_Color_var.rgb,dot(_Color_var.rgb,float3(0.3,0.59,0.11)),_Desaturator)*_Lightness)*_Tint.rgb);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
