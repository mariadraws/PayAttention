// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:1,fgcg:1,fgcb:1,fgca:1,fgde:0.02,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-6343-OUT,spec-358-OUT,gloss-1813-OUT,normal-5964-RGB;n:type:ShaderForge.SFN_Multiply,id:6343,x:32114,y:32712,varname:node_6343,prsc:2|A-1730-OUT,B-6665-RGB,C-4433-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31858,y:32847,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32407,y:32978,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:32250,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_ViewVector,id:6783,x:30185,y:32965,varname:node_6783,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:6692,x:31414,y:32322,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:node_6692,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d6430ad99482e144fb9f1b6a9131fc4b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ComponentMask,id:408,x:30382,y:32965,varname:node_408,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6783-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:1730,x:31858,y:32645,varname:node_1730,prsc:2,chbt:0|M-6692-RGB,R-8375-RGB,G-5760-RGB,B-3896-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:9754,x:30978,y:32591,ptovrint:False,ptlb:DiamondTexture,ptin:_DiamondTexture,varname:node_9754,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e233c15b6bbf51847b955604d41f19bd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Rotator,id:3621,x:30972,y:32805,varname:node_3621,prsc:2|UVIN-288-UVOUT,ANG-9785-OUT;n:type:ShaderForge.SFN_TexCoord,id:288,x:30407,y:32627,varname:node_288,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:9341,x:30972,y:32945,varname:node_9341,prsc:2|UVIN-288-UVOUT,ANG-1828-OUT;n:type:ShaderForge.SFN_Rotator,id:4359,x:30972,y:33086,varname:node_4359,prsc:2|UVIN-288-UVOUT,ANG-5823-OUT;n:type:ShaderForge.SFN_Tex2d,id:8375,x:31377,y:32536,varname:node_8375,prsc:2,tex:e233c15b6bbf51847b955604d41f19bd,ntxv:0,isnm:False|UVIN-3621-UVOUT,TEX-9754-TEX;n:type:ShaderForge.SFN_Tex2d,id:5760,x:31377,y:32719,varname:node_5760,prsc:2,tex:e233c15b6bbf51847b955604d41f19bd,ntxv:0,isnm:False|UVIN-9341-UVOUT,TEX-9754-TEX;n:type:ShaderForge.SFN_Tex2d,id:3896,x:31377,y:32904,varname:node_3896,prsc:2,tex:e233c15b6bbf51847b955604d41f19bd,ntxv:0,isnm:False|UVIN-4359-UVOUT,TEX-9754-TEX;n:type:ShaderForge.SFN_RemapRange,id:9785,x:30713,y:32798,varname:node_9785,prsc:2,frmn:0,frmx:1,tomn:0.4,tomx:0.6|IN-408-R;n:type:ShaderForge.SFN_RemapRange,id:1828,x:30713,y:32964,varname:node_1828,prsc:2,frmn:0,frmx:1,tomn:0.4,tomx:0.6|IN-408-G;n:type:ShaderForge.SFN_RemapRange,id:5823,x:30713,y:33116,varname:node_5823,prsc:2,frmn:0,frmx:1,tomn:0.4,tomx:0.6|IN-408-B;n:type:ShaderForge.SFN_Tex2d,id:4433,x:31858,y:33031,ptovrint:False,ptlb:DiamondShadingAlbedo,ptin:_DiamondShadingAlbedo,varname:node_4433,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;proporder:5964-6665-358-1813-6692-9754-4433;pass:END;sub:END;*/

Shader "Shader Forge/Gem" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Color ("Color", Color) = (1,1,1,1)
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _ColorMask ("ColorMask", 2D) = "white" {}
        _DiamondTexture ("DiamondTexture", 2D) = "white" {}
        _DiamondShadingAlbedo ("DiamondShadingAlbedo", 2D) = "white" {}
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform sampler2D _DiamondTexture; uniform float4 _DiamondTexture_ST;
            uniform sampler2D _DiamondShadingAlbedo; uniform float4 _DiamondShadingAlbedo_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_408 = viewDirection.rgb;
                float node_3621_ang = (node_408.r*0.2+0.4);
                float node_3621_spd = 1.0;
                float node_3621_cos = cos(node_3621_spd*node_3621_ang);
                float node_3621_sin = sin(node_3621_spd*node_3621_ang);
                float2 node_3621_piv = float2(0.5,0.5);
                float2 node_3621 = (mul(i.uv0-node_3621_piv,float2x2( node_3621_cos, -node_3621_sin, node_3621_sin, node_3621_cos))+node_3621_piv);
                float4 node_8375 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_3621, _DiamondTexture));
                float node_9341_ang = (node_408.g*0.2+0.4);
                float node_9341_spd = 1.0;
                float node_9341_cos = cos(node_9341_spd*node_9341_ang);
                float node_9341_sin = sin(node_9341_spd*node_9341_ang);
                float2 node_9341_piv = float2(0.5,0.5);
                float2 node_9341 = (mul(i.uv0-node_9341_piv,float2x2( node_9341_cos, -node_9341_sin, node_9341_sin, node_9341_cos))+node_9341_piv);
                float4 node_5760 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_9341, _DiamondTexture));
                float node_4359_ang = (node_408.b*0.2+0.4);
                float node_4359_spd = 1.0;
                float node_4359_cos = cos(node_4359_spd*node_4359_ang);
                float node_4359_sin = sin(node_4359_spd*node_4359_ang);
                float2 node_4359_piv = float2(0.5,0.5);
                float2 node_4359 = (mul(i.uv0-node_4359_piv,float2x2( node_4359_cos, -node_4359_sin, node_4359_sin, node_4359_cos))+node_4359_piv);
                float4 node_3896 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_4359, _DiamondTexture));
                float4 _DiamondShadingAlbedo_var = tex2D(_DiamondShadingAlbedo,TRANSFORM_TEX(i.uv0, _DiamondShadingAlbedo));
                float3 diffuseColor = ((_ColorMask_var.rgb.r*node_8375.rgb + _ColorMask_var.rgb.g*node_5760.rgb + _ColorMask_var.rgb.b*node_3896.rgb)*_Color.rgb*_DiamondShadingAlbedo_var.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform sampler2D _DiamondTexture; uniform float4 _DiamondTexture_ST;
            uniform sampler2D _DiamondShadingAlbedo; uniform float4 _DiamondShadingAlbedo_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_408 = viewDirection.rgb;
                float node_3621_ang = (node_408.r*0.2+0.4);
                float node_3621_spd = 1.0;
                float node_3621_cos = cos(node_3621_spd*node_3621_ang);
                float node_3621_sin = sin(node_3621_spd*node_3621_ang);
                float2 node_3621_piv = float2(0.5,0.5);
                float2 node_3621 = (mul(i.uv0-node_3621_piv,float2x2( node_3621_cos, -node_3621_sin, node_3621_sin, node_3621_cos))+node_3621_piv);
                float4 node_8375 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_3621, _DiamondTexture));
                float node_9341_ang = (node_408.g*0.2+0.4);
                float node_9341_spd = 1.0;
                float node_9341_cos = cos(node_9341_spd*node_9341_ang);
                float node_9341_sin = sin(node_9341_spd*node_9341_ang);
                float2 node_9341_piv = float2(0.5,0.5);
                float2 node_9341 = (mul(i.uv0-node_9341_piv,float2x2( node_9341_cos, -node_9341_sin, node_9341_sin, node_9341_cos))+node_9341_piv);
                float4 node_5760 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_9341, _DiamondTexture));
                float node_4359_ang = (node_408.b*0.2+0.4);
                float node_4359_spd = 1.0;
                float node_4359_cos = cos(node_4359_spd*node_4359_ang);
                float node_4359_sin = sin(node_4359_spd*node_4359_ang);
                float2 node_4359_piv = float2(0.5,0.5);
                float2 node_4359 = (mul(i.uv0-node_4359_piv,float2x2( node_4359_cos, -node_4359_sin, node_4359_sin, node_4359_cos))+node_4359_piv);
                float4 node_3896 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_4359, _DiamondTexture));
                float4 _DiamondShadingAlbedo_var = tex2D(_DiamondShadingAlbedo,TRANSFORM_TEX(i.uv0, _DiamondShadingAlbedo));
                float3 diffuseColor = ((_ColorMask_var.rgb.r*node_8375.rgb + _ColorMask_var.rgb.g*node_5760.rgb + _ColorMask_var.rgb.b*node_3896.rgb)*_Color.rgb*_DiamondShadingAlbedo_var.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform sampler2D _DiamondTexture; uniform float4 _DiamondTexture_ST;
            uniform sampler2D _DiamondShadingAlbedo; uniform float4 _DiamondShadingAlbedo_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_408 = viewDirection.rgb;
                float node_3621_ang = (node_408.r*0.2+0.4);
                float node_3621_spd = 1.0;
                float node_3621_cos = cos(node_3621_spd*node_3621_ang);
                float node_3621_sin = sin(node_3621_spd*node_3621_ang);
                float2 node_3621_piv = float2(0.5,0.5);
                float2 node_3621 = (mul(i.uv0-node_3621_piv,float2x2( node_3621_cos, -node_3621_sin, node_3621_sin, node_3621_cos))+node_3621_piv);
                float4 node_8375 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_3621, _DiamondTexture));
                float node_9341_ang = (node_408.g*0.2+0.4);
                float node_9341_spd = 1.0;
                float node_9341_cos = cos(node_9341_spd*node_9341_ang);
                float node_9341_sin = sin(node_9341_spd*node_9341_ang);
                float2 node_9341_piv = float2(0.5,0.5);
                float2 node_9341 = (mul(i.uv0-node_9341_piv,float2x2( node_9341_cos, -node_9341_sin, node_9341_sin, node_9341_cos))+node_9341_piv);
                float4 node_5760 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_9341, _DiamondTexture));
                float node_4359_ang = (node_408.b*0.2+0.4);
                float node_4359_spd = 1.0;
                float node_4359_cos = cos(node_4359_spd*node_4359_ang);
                float node_4359_sin = sin(node_4359_spd*node_4359_ang);
                float2 node_4359_piv = float2(0.5,0.5);
                float2 node_4359 = (mul(i.uv0-node_4359_piv,float2x2( node_4359_cos, -node_4359_sin, node_4359_sin, node_4359_cos))+node_4359_piv);
                float4 node_3896 = tex2D(_DiamondTexture,TRANSFORM_TEX(node_4359, _DiamondTexture));
                float4 _DiamondShadingAlbedo_var = tex2D(_DiamondShadingAlbedo,TRANSFORM_TEX(i.uv0, _DiamondShadingAlbedo));
                float3 diffColor = ((_ColorMask_var.rgb.r*node_8375.rgb + _ColorMask_var.rgb.g*node_5760.rgb + _ColorMask_var.rgb.b*node_3896.rgb)*_Color.rgb*_DiamondShadingAlbedo_var.rgb);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
