// Upgrade NOTE: replaced 'defined FOG_COMBINED_WITH_WORLD_POS' with 'defined (FOG_COMBINED_WITH_WORLD_POS)'

////////////////////////////////////////
// Generated with Better Shaders
//
// Auto-generated shader code, don't hand edit!
//
//   Unity Version: 2019.4.16f1
//   Render Pipeline: Standard
//   Platform: WindowsEditor
////////////////////////////////////////


Shader "AllIn1Vfx/AllIn1VfxLit"
{
   Properties
   {
      
	_RenderingMode("Rendering Mode", float) = 0 // 0
    _SrcMode("SrcMode", float) = 5 // 1
    _DstMode("DstMode", float) = 10 // 2
    _CullingOption("Culling Option", float) = 0 // 3
    _ZWrite("Depth Write", float) = 0.0 // 4
    _ZTestMode("Z Test Mode", float) = 4 // 5
    _ColorMask("Color Write Mask", float) = 15 // 6

    _Alpha("Global Alpha", Range(0, 1)) = 1 //7
    _Color("Global Color", Color) = (1,1,1,1) //8
        
    _TimingSeed("Random Seed", Float) = 0.0 //9
    _EditorDrawers("Editor Drawers", Int) = 60 //10

    _MainTex("Shape1 Texture", 2D) = "white" {} //11
    [HDR] _ShapeColor("Shape1 Color", Color) = (1,1,1,1) //12
    _ShapeXSpeed("Shape1 X Speed", Float) = 0 //13
    _ShapeYSpeed("Shape1 Y Speed", Float) = 0 //14 
    _ShapeContrast("Shape1 Contrast", Range (0, 10)) = 1 //15
    _ShapeBrightness("Shape1 Brightness", Range (-1, 1)) = 0 //16
    _ShapeDistortTex("Distortion Texture", 2D) = "black" {} //17
    _ShapeDistortAmount("Distortion Amount", Range(0, 10)) = 0.5 //18
    _ShapeDistortXSpeed("Scroll speed X", Float) = 0.1 //19
    _ShapeDistortYSpeed("Scroll speed Y", Float) = 0.1 //20
    _ShapeColorWeight("Shape1 RGB Weight", Range(0, 5)) = 1 //21
    _ShapeAlphaWeight("Shape1 A Weight", Range(0, 5)) = 1 //22

    _Shape2Tex ("Shape2 Texture", 2D) = "white" {} //23
    [HDR] _Shape2Color("Shape2 Color", Color) = (1,1,1,1)
    _Shape2XSpeed("Shape2 X Speed", Float) = 0
    _Shape2YSpeed("Shape2 Y Speed", Float) = 0
    _Shape2Contrast("Shape2 Contrast", Range (0, 10)) = 1
    _Shape2Brightness("Shape2 Brightness", Range (-1, 1)) = 0
    _Shape2DistortTex("Distortion Texture", 2D) = "black" {}
    _Shape2DistortAmount("Distortion Amount", Range(0,10)) = 0.5
    _Shape2DistortXSpeed("Scroll Speed X", Float) = 0.1
    _Shape2DistortYSpeed("Scroll Speed Y", Float) = 0.1
    _Shape2ColorWeight("Shape2 RGB Weight", Range(0, 5)) = 2
    _Shape2AlphaWeight("Shape2 A Weight", Range(0, 5)) = 2 //34

    _Shape3Tex("Shape3 Texture", 2D) = "white" {} //35
    [HDR] _Shape3Color("Shape3 Color", Color) = (1,1,1,1)
    _Shape3XSpeed("Shape3 X Speed", Float) = 0
    _Shape3YSpeed("Shape3 Y Speed", Float) = 0
    _Shape3Contrast("Shape3 Contrast", Range (0, 10)) = 1
    _Shape3Brightness("Shape3 Brightness", Range (-1, 1)) = 0
    _Shape3DistortTex("Distortion Texture", 2D) = "black" {}
    _Shape3DistortAmount("Distortion Amount", Range(0, 10)) = 0.5
    _Shape3DistortXSpeed("Scroll Speed X", Float) = 0.1
    _Shape3DistortYSpeed("Scroll Speed Y", Float) = 0.1
    _Shape3ColorWeight("Shape3 RGB Weight", Range(0, 5)) = 2
    _Shape3AlphaWeight("Shape3 A Weight", Range(0, 5)) = 2 //46

    _SoftFactor("Soft Particles Factor", Range(0.01, 3.0)) = 0.5 //47

    [NoScaleOffset] _ColorRampTex("Color Ramp Texture", 2D) = "white" {} //48
    _ColorRampLuminosity("Color Ramp luminosity", Range(-1, 1)) = 0 //49
    [AllIn1VfxGradient] _ColorRampTexGradient("Color Ramp Gradient", 2D) = "white" {} //50
    _ColorRampBlend ("Color Ramp Blend", Range(0, 1)) = 1 // 51

    _AlphaCutoffValue("Alpha cutoff value", Range(0, 1)) = 0.25 //52
    _AlphaStepMin("Smoothstep Min", Range(0, 1)) = 0.0 //53
    _AlphaStepMax("Smoothstep Max", Range(0, 1)) = 0.075 //54
    _AlphaFadeAmount("Fade Amount", Range(-0.1, 1)) = -0.1 //55
    _AlphaFadeSmooth("Fade Transition", Range(0.0, 1.5)) = 0.075 //56
    _AlphaFadePow("Fade Power", Range(0.001, 10)) = 1 //57
    	
    _TrailWidthPower("Trail Width Power", Range(0.1, 5.0)) = 1.0 //58
    [AllIn1VfxGradient] _TrailWidthGradient("Trail Width Gradient", 2D) = "white" {} //59

    _GlowColor("Glow Color", Color) = (1,1,1,1) //60
    _Glow("Glow Color Intensity", float) = 0 //61
    _GlowGlobal("Global Glow Intensity", float) = 1 //62
    _GlowTex("Glow Mask Texture", 2D) = "white" {} //63

    _DepthGlowDist("Depth Distance", Range(0.01, 10.0)) = 0.5 //64
    _DepthGlowPow("Depth Power", Range(0.01, 10.0)) = 1 //65
    _DepthGlowColor("Glow Color", Color) = (1,1,1,1) //66
    _DepthGlow("Glow Color Intensity", float) = 1 //67
    _DepthGlowGlobal("Global Glow Intensity", float) = 1 //68
        
    _MaskTex("Mask Texture", 2D) = "white" {} //69
    _MaskPow("Mask Power", Range(0.001, 10)) = 1 //70
        
    _HsvShift("Hue Shift", Range(0, 360)) = 180 //71
	_HsvSaturation("Saturation", Range(0, 2)) = 1 //72
	_HsvBright("Brightness", Range(0, 2)) = 1 //73
        
    _RandomSh1Mult("Shape 1 Mult", Range(0, 1)) = 1.0 //74
    _RandomSh2Mult("Shape 2 Mult", Range(0, 1)) = 1.0 //75
    _RandomSh3Mult("Shape 3 Mult", Range(0, 1)) = 1.0 //76
        
    _PixelateSize("Pixelate size", Range(4, 512)) = 32 //77
        
    _DistortTex("Distortion Texture", 2D) = "black" {} //78
	_DistortAmount("Distortion Amount", Range(0, 10)) = 0.5 //79
	_DistortTexXSpeed("Scroll Speed X", Range(-50, 50)) = 5 //80
	_DistortTexYSpeed("Scroll Speed Y", Range(-50, 50)) = 5 //81
        
    [HDR] _BackFaceTint("Backface Tint", Color) = (0.5, 0.5, 0.5, 1) //82
    [HDR] _FrontFaceTint("Frontface Tint", Color) = (1, 1, 1, 1) //83
        
    _ShakeUvSpeed("Shake Speed", Range(0, 50)) = 20 //84
	_ShakeUvX("X Multiplier", Range(-15, 15)) = 5 //85
	_ShakeUvY("Y Multiplier", Range(-15, 15)) = 4 //86
        
    _WaveAmount("Wave Amount", Range(0, 25)) = 7 //87
	_WaveSpeed("Wave Speed", Range(0, 25)) = 10 //88
	_WaveStrength("Wave Strength", Range(0, 25)) = 7.5 //89
	_WaveX("Wave X Axis", Range(0, 1)) = 0 //90
	_WaveY("Wave Y Axis", Range(0, 1)) = 0.5 //91
        
    _RoundWaveStrength("Wave Strength", Range(0, 1)) = 0.7 //92
	_RoundWaveSpeed("Wave Speed", Range(0, 5)) = 2 //93
        
    _TwistUvAmount("Twist Amount", Range(0, 3.1416)) = 1 //94
	_TwistUvPosX("Twist Pos X Axis", Range(0, 1)) = 0.5 //95
	_TwistUvPosY("Twist Pos Y Axis", Range(0, 1)) = 0.5 //96
	_TwistUvRadius("Twist Radius", Range(0, 3)) = 0.75 //97
        
    _HandDrawnAmount("Hand Drawn Amount", Range(0, 40)) = 10 //98
	_HandDrawnSpeed("Hand Drawn Speed", Range(1, 30)) = 5 //99
    	
    _OffsetSh1("Shape 1 Offset Mult", Range(-5, 5)) = 1 //100
    _OffsetSh2("Shape 2 Offset Mult", Range(-5, 5)) = 1 //101
    _OffsetSh3("Shape 3 Offset Mult", Range(-5, 5)) = 1 //102
    	
    _DistNormalMap("Normal Map", 2D) = "bump" {} //103
	_DistortionPower("Distortion Power", Float) = 10 //104
	_DistortionBlend("Distortion Blend", Range(0, 1)) = 1 //105
    _DistortionScrollXSpeed("Scroll speed X Axis", Float) = 0 //106
	_DistortionScrollYSpeed("Scroll speed Y Axis", Float) = 0 //107
    	
    _TextureScrollXSpeed("Speed X Axis", Float) = 1 //108
	_TextureScrollYSpeed("Speed Y Axis", Float) = 0 //109
    	
    _VertOffsetTex("Offset Noise Texture", 2D) = "white" {} //110
	_VertOffsetAmount("Offset Amount", Range(0, 2)) = 0.5 //111
	_VertOffsetPower("Offset Power", Range(0.01, 10)) = 1 //112
	_VertOffsetTexXSpeed("Scroll Speed X", Range(-2, 2)) = 0.1 //113
	_VertOffsetTexYSpeed("Scroll Speed Y", Range(-2, 2)) = 0.1 //114
    	
    _FadeTex("Fade Texture", 2D) = "white" {} //115
	_FadeAmount("Fade Amount", Range(-0.1, 1)) = -0.1 //116
	_FadeTransition("Fade Transition", Range(0.01, 0.75)) = 0.075 //117
	_FadePower("Fade Power", Range(0.001, 10)) = 1 //118
    _FadeScrollXSpeed("Speed X Axis", Float) = 0 //119
	_FadeScrollYSpeed("Speed Y Axis", Float) = 0 //120
	_FadeBurnTex("Fade Burn Texture", 2D) = "white" {} //121
	[HDR] _FadeBurnColor("Fade Burn Color", Color) = (1,1,0,1) //122
	_FadeBurnWidth("Fade Burn Width", Range(0, 0.2)) = 0.01 //123
	_FadeBurnGlow("Fade Burn Glow", Range(1, 250)) = 5//124
    	
    [HDR] _ColorGradingLight("Light Color Tint", Color) = (1,1,1,1) //125
    [HDR] _ColorGradingMiddle("Mid Tone Color Tint", Color) = (1,1,1,1) //126
    [HDR] _ColorGradingDark("Dark/Shadow Color Tint", Color) = (1,1,1,1) //127
    _ColorGradingMidPoint("Mid Point", Range(0.01, 0.99)) = 0.5 //128
    	
    _CamDistFadeStepMin("Far Fade Start Point", Range(0, 1000)) = 0.0 //129
    _CamDistFadeStepMax("Far Fade End Point", Range(0, 1000)) = 100 //130
    _CamDistProximityFade("Close Fade Start Point", Range(0, 250)) = 0.0 //131
    	
    _ScreenUvShDistScale("Scale With Dist Amount", Range(0, 1)) = 1 //132
    _ScreenUvSh2DistScale("Scale With Dist Amount", Range(0, 1)) = 1 //133
    _ScreenUvSh3DistScale("Scale With Dist Amount", Range(0, 1)) = 1 //134
    	
    [HDR] _RimColor("Rim Color", Color) = (1, 1, 1, 1) //135
    _RimBias("Rim Bias", Range(0, 1)) = 0 //136
    _RimScale("Rim Scale", Range(0, 25)) = 1 //137
    _RimPower("Rim Power", Range(0.1, 20.0)) = 5.0 //138
    _RimIntensity("Rim Intensity", Range(0.0, 50.0)) = 1  //139
    _RimAddAmount("Add Amount (0 is mult)", Range(0.0, 1.0)) = 1  //140
    _RimErodesAlpha("Erode Transparency", Range(0.0, 2.0)) = 0  //141
    	
    _Shape1MaskTex("Shape 1 Mask Texture", 2D) = "white" {} //142
    _Shape1MaskPow("Shape 1 Mask Power", Range(0.001, 10)) = 1 //143
    	
    _LightAmount("Light Amount", Range(0, 1)) = 0//144
    [HDR] _LightColor("Light Color", Color) = (1,1,1,1) //147
    _ShadowAmount("Shadow Amount", Range(0, 1)) = 0.4//148
    _ShadowStepMin("Shadow Min", Range(0, 1)) = 0.0 //149
    _ShadowStepMax("Shadow Max", Range(0, 1)) = 1.0 //148
        
    _PosterizeNumColors("Number of Colors", Range(1, 30)) = 5 //149
    	
    _ShapeRotationOffset("Rotation Offset", Range(0, 6.28318530718)) = 0 //150
    _ShapeRotationSpeed("Rotation Speed", Float) = 0 //151
    _Shape2RotationOffset("Rotation Offset", Range(0, 6.28318530718)) = 0 //152
    _Shape2RotationSpeed("Rotation Speed", Float) = 0 //153
    _Shape3RotationOffset("Rotation Offset", Range(0, 6.28318530718)) = 0 //154
    _Shape3RotationSpeed("Rotation Speed", Float) = 0 //155
    	
    _Sh1BlendOffset("Shape 1 Blend Offset", Range(-5, 5)) = 0 //156
	_Sh2BlendOffset("Shape 2 Blend Offset", Range(-5, 5)) = 0 //157
	_Sh3BlendOffset("Shape 3 Blend Offset", Range(-5, 5)) = 0 //158
    	
	[Normal][NoScaleOffset] _NormalMap("Normal Map", 2D) = "bump" {}
	_NormalStrength("Normal Strength", Range(0, 15)) = 1.0

    _DebugShape("Shape Debug Number", Int) = 1 //160 Needs to be last property


   }
   SubShader
   {
      Tags { "RenderType" = "Opaque" "Queue" = "Geometry" }

      
      
      Pass
      {
		   Name "FORWARD"
		   Tags { "LightMode" = "ForwardBase" }
         
         	Tags
    {
        "RenderType" = "Opaque" "Queue" = "Geometry" "PreviewType" = "Sphere"
    }   
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	ColorMask [_ColorMask]
Lighting Off


         CGPROGRAM
         // compile directives
            #pragma vertex Vert
   #pragma fragment Frag

         #pragma target 3.0
         #pragma multi_compile_instancing
         #pragma multi_compile_fog
         #pragma multi_compile_fwdbase
         #include "HLSLSupport.cginc"
         #define UNITY_INSTANCED_LOD_FADE
         #define UNITY_INSTANCED_SH
         #define UNITY_INSTANCED_LIGHTMAPSTS

         #include "UnityShaderVariables.cginc"
         #include "UnityShaderUtilities.cginc"
         // -------- variant for: <when no other keywords are defined>

         #include "UnityCG.cginc"
         #include "Lighting.cginc"
         #include "UnityPBSLighting.cginc"
         #include "AutoLight.cginc"
         #define SHADER_PASS SHADERPASS_FORWARD
         #define _PASSFORWARD 1

         
    #pragma shader_feature_local TIMEISCUSTOM_ON
    #pragma shader_feature_local ADDITIVECONFIG_ON
    #pragma shader_feature_local PREMULTIPLYALPHA_ON
    #pragma shader_feature_local PREMULTIPLYCOLOR_ON
    #pragma shader_feature_local SPLITRGBA_ON
    #pragma shader_feature_local SHAPEADD_ON

    #pragma shader_feature_local SHAPE1SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE2SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE3SCREENUV_ON /////////////////Pipeline specific implementation

    #pragma shader_feature_local SHAPEDEBUG_ON
            
    #pragma shader_feature_local SHAPE1CONTRAST_ON
    #pragma shader_feature_local SHAPE1DISTORT_ON
    #pragma shader_feature_local SHAPE1ROTATE_ON
    #pragma shader_feature_local SHAPE1SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE2_ON
    #pragma shader_feature_local SHAPE2CONTRAST_ON
    #pragma shader_feature_local SHAPE2DISTORT_ON
    #pragma shader_feature_local SHAPE2ROTATE_ON
    #pragma shader_feature_local SHAPE2SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE3_ON
    #pragma shader_feature_local SHAPE3CONTRAST_ON
    #pragma shader_feature_local SHAPE3DISTORT_ON
    #pragma shader_feature_local SHAPE3ROTATE_ON
    #pragma shader_feature_local SHAPE3SHAPECOLOR_ON

    #pragma shader_feature_local GLOW_ON
    #pragma shader_feature_local GLOWTEX_ON
    #pragma shader_feature_local DEPTHGLOW_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local MASK_ON
    #pragma shader_feature_local COLORRAMP_ON
    #pragma shader_feature_local COLORRAMPGRAD_ON
    #pragma shader_feature_local COLORGRADING_ON
    #pragma shader_feature_local HSV_ON
    #pragma shader_feature_local POSTERIZE_ON
    #pragma shader_feature_local PIXELATE_ON
    #pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local SHAKEUV_ON
    #pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
    #pragma shader_feature_local TWISTUV_ON
    #pragma shader_feature_local DOODLE_ON
    #pragma shader_feature_local OFFSETSTREAM_ON
    #pragma shader_feature_local TEXTURESCROLL_ON
    #pragma shader_feature_local VERTOFFSET_ON
    #pragma shader_feature_local RIM_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local BACKFACETINT_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local POLARUV_ON
    #pragma shader_feature_local POLARUVDISTORT_ON
    #pragma shader_feature_local SHAPE1MASK_ON
    #pragma shader_feature_local TRAILWIDTH_ON
    #pragma shader_feature_local LIGHTANDSHADOW_ON
    #pragma shader_feature_local SHAPETEXOFFSET_ON
    #pragma shader_feature_local SHAPEWEIGHTS_ON
            
    #pragma shader_feature_local ALPHACUTOFF_ON
    #pragma shader_feature_local ALPHASMOOTHSTEP_ON
    #pragma shader_feature_local FADE_ON
    #pragma shader_feature_local FADEBURN_ON
    #pragma shader_feature_local ALPHAFADE_ON
    #pragma shader_feature_local ALPHAFADEUSESHAPE1_ON
    #pragma shader_feature_local ALPHAFADEUSEREDCHANNEL_ON
    #pragma shader_feature_local ALPHAFADETRANSPARENCYTOO_ON
    #pragma shader_feature_local ALPHAFADEINPUTSTREAM_ON
    #pragma shader_feature_local CAMDISTFADE_ON

	#pragma shader_feature NORMALMAP_ON


   #define _STANDARD 1
// If your looking in here and thinking WTF, yeah, I know. These are taken from the SRPs, to allow us to use the same
// texturing library they use. However, since they are not included in the standard pipeline by default, there is no
// way to include them in and they have to be inlined, since someone could copy this shader onto another machine without
// Better Shaders installed. Unfortunate, but I'd rather do this and have a nice library for texture sampling instead
// of the patchy one Unity provides being inlined/emulated in HDRP/URP. Strangely, PSSL and XBoxOne libraries are not
// included in the standard SRP code, but they are in tons of Unity own projects on the web, so I grabbed them from there.

#if defined(SHADER_API_GAMECORE)

	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName
	#define ASSIGN_SAMPLER(samplerName, samplerValue) samplerName = samplerValue

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define SAMPLE_DEPTH_TEXTURE(textureName, samplerName, coord2)          SAMPLE_TEXTURE2D(textureName, samplerName, coord2).r
	#define SAMPLE_DEPTH_TEXTURE_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod).r

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_XBOXONE)
	
	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_PSSL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.GetLOD(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RW_Texture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RW_Texture2D_Array<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RW_Texture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)



#elif defined(SHADER_API_D3D11)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_METAL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_VULKAN)
// This file assume SHADER_API_VULKAN is defined
	// TODO: This is a straight copy from D3D11.hlsl. Go through all this stuff and adjust where needed.


	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_SWITCH)
	// This file assume SHADER_API_SWITCH is defined

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod) textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)              textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_GLCORE)

	// OpenGL 4.1 SM 5.0 https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 46)
	#define OPENGL4_1_SM5 1
	#else
	#define OPENGL4_1_SM5 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)          TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)            TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)             TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)       TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)           TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)             TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, bias) ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))

	#if OPENGL4_1_SM5
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#endif


	#elif defined(SHADER_API_GLES3)

	// GLES 3.1 + AEP shader feature https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 40)
	#define GLES3_1_AEP 1
	#else
	#define GLES3_1_AEP 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)          TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)            Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)             Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)       Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)           TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)             Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#if GLES3_1_AEP
	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName
	#else
	#define RW_TEXTURE2D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)   ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)
	#endif

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)

	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif

	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)        textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                 textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                              textureName.Load(int4(unCoord3, lod))

	#if GLES3_1_AEP
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherAlpha(samplerName, coord2)
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)
	#endif


#elif defined(SHADER_API_GLES)


	#define uint int

	#define rcp(x) 1.0 / (x)
	#define ddx_fine ddx
	#define ddy_fine ddy
	#define asfloat
	#define asuint(x) asint(x)
	#define f32tof16
	#define f16tof32

	#define ERROR_ON_UNSUPPORTED_FUNCTION(funcName) #error #funcName is not supported on GLES 2.0

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }


	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) #error calculate Level of Detail not supported in GLES2

	// Texture abstraction

	#define TEXTURE2D(textureName)                          sampler2D textureName
	#define TEXTURE2D_ARRAY(textureName)                    samplerCUBE textureName // No support to texture2DArray
	#define TEXTURECUBE(textureName)                        samplerCUBE textureName
	#define TEXTURECUBE_ARRAY(textureName)                  samplerCUBE textureName // No supoport to textureCubeArray and can't emulate with texture2DArray
	#define TEXTURE3D(textureName)                          sampler3D textureName

	#define TEXTURE2D_FLOAT(textureName)                    sampler2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)              TEXTURECUBE_FLOAT(textureName) // No support to texture2DArray
	#define TEXTURECUBE_FLOAT(textureName)                  samplerCUBE_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)            TEXTURECUBE_FLOAT(textureName) // No support to textureCubeArray
	#define TEXTURE3D_FLOAT(textureName)                    sampler3D_float textureName

	#define TEXTURE2D_HALF(textureName)                     sampler2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)               TEXTURECUBE_HALF(textureName) // No support to texture2DArray
	#define TEXTURECUBE_HALF(textureName)                   samplerCUBE_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)             TEXTURECUBE_HALF(textureName) // No support to textureCubeArray
	#define TEXTURE3D_HALF(textureName)                     sampler3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)                   SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW(textureName)             TEXTURECUBE_SHADOW(textureName) // No support to texture array
	#define TEXTURECUBE_SHADOW(textureName)                 SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)           TEXTURECUBE_SHADOW(textureName) // No support to texture array

	#define RW_TEXTURE2D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)           ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)

	#define SAMPLER(samplerName)
	#define SAMPLER_CMP(samplerName)

	#define TEXTURE2D_PARAM(textureName, samplerName)                sampler2D textureName
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)          samplerCUBE textureName
	#define TEXTURECUBE_PARAM(textureName, samplerName)              samplerCUBE textureName
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)        samplerCUBE textureName
	#define TEXTURE3D_PARAM(textureName, samplerName)                sampler3D textureName
	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)         SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)   SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)       SHADOWCUBE_TEXTURE_AND_SAMPLER textureName

	#define TEXTURE2D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)         textureName
	#define TEXTURECUBE_ARGS(textureName, samplerName)             textureName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)       textureName
	#define TEXTURE3D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)        textureName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)  textureName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)      textureName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2) tex2D(textureName, coord2)

	#if (SHADER_TARGET >= 30)
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) tex2Dlod(textureName, float4(coord2, 0, lod))
	#else
	    // No lod support. Very poor approximation with bias.
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, lod)
	#endif

	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                       tex2Dbias(textureName, float4(coord2, 0, bias))
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                   SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                     ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_LOD)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_BIAS)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)    ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_GRAD)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                                texCUBE(textureName, coord3)
	// No lod support. Very poor approximation with bias.
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                       SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                     texCUBEbias(textureName, float4(coord3, bias))
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                   ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)        ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                                  tex3D(textureName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                         ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE3D_LOD)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                           SHADOW2D_SAMPLE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)              ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_SHADOW)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                         SHADOWCUBE_SAMPLE(textureName, samplerName, coord4)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_SHADOW)


	// Not supported. Can't define as error because shader library is calling these functions.
	#define LOAD_TEXTURE2D(textureName, unCoord2)                                               half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                                      half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                             half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                                  half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)                half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                         half4(0, 0, 0, 0)
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                               ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D)
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                                      ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D_LOD)

	// Gather not supported. Fallback to regular texture sampling.
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)

#else
#error unsupported shader api
#endif




// default flow control attributes
#ifndef UNITY_BRANCH
#   define UNITY_BRANCH
#endif
#ifndef UNITY_FLATTEN
#   define UNITY_FLATTEN
#endif
#ifndef UNITY_UNROLL
#   define UNITY_UNROLL
#endif
#ifndef UNITY_UNROLLX
#   define UNITY_UNROLLX(_x)
#endif
#ifndef UNITY_LOOP
#   define UNITY_LOOP
#endif





         // data across stages, stripped like the above.
         struct VertexToPixel
         {
            UNITY_POSITION(pos);
            float3 worldPos : TEXCOORD0;
            float3 worldNormal : TEXCOORD1;
            float4 worldTangent : TEXCOORD2;
             float4 texcoord0 : TEXCOORD3;
            // float4 texcoord1 : TEXCOORD4;
            // float4 texcoord2 : TEXCOORD5;
            // #if %TEXCOORD3REQUIREKEY%
            // float4 texcoord3 : TEXCOORD6;
            // #endif

            // #if %SCREENPOSREQUIREKEY%
             float4 screenPos : TEXCOORD7;
            // #endif

            float4 lmap : TEXCOORD8;
            #if UNITY_SHOULD_SAMPLE_SH
               half3 sh : TEXCOORD9; // SH
            #endif
            #ifdef LIGHTMAP_ON
               UNITY_LIGHTING_COORDS(10,11)
               UNITY_FOG_COORDS(12)
            #else
               UNITY_FOG_COORDS(10)
               UNITY_SHADOW_COORDS(11)
            #endif

            // #if %VERTEXCOLORREQUIREKEY%
             float4 vertexColor : COLOR;
            // #endif

            // #if %EXTRAV2F0REQUIREKEY%
             float4 extraV2F0 : TEXCOORD13;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             float4 extraV2F1 : TEXCOORD14;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             float4 extraV2F2 : TEXCOORD15;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             float4 extraV2F3 : TEXCOORD16;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // float4 extraV2F4 : TEXCOORD17;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // float4 extraV2F5 : TEXCOORD18;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // float4 extraV2F6 : TEXCOORD19;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // float4 extraV2F7 : TEXCOORD20;
            // #endif


            UNITY_VERTEX_INPUT_INSTANCE_ID
            UNITY_VERTEX_OUTPUT_STEREO
         };

         
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
                float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef UNITY_MATRIX_I_M

               #define UNITY_MATRIX_I_M   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)UNITY_MATRIX_M, transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)UNITY_MATRIX_V, norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
         
	half4 _Color;
	half _Alpha;
	half _AlphaCutoffValue;

	half _TimingSeed;

	#if TIMEISCUSTOM_ON
		float4 globalCustomTime;
	#endif

	half4 _MainTex_ST, _ShapeColor;
	half _ShapeXSpeed, _ShapeYSpeed, _ShapeColorWeight, _ShapeAlphaWeight;
	
	#if SHAPE1CONTRAST_ON
		half _ShapeContrast, _ShapeBrightness;
	#endif
	
	#if SHAPE1DISTORT_ON
		half4 _ShapeDistortTex_ST;
		half _ShapeDistortAmount, _ShapeDistortXSpeed, _ShapeDistortYSpeed;
	#endif
	
	#if SHAPE1ROTATE_ON
		half _ShapeRotationOffset, _ShapeRotationSpeed;
	#endif
	
	#if OFFSETSTREAM_ON
		half _OffsetSh1;
	#endif
	
	#if SHAPEWEIGHTS_ON
		half _Sh1BlendOffset;
	#endif

	#if SHAPE2_ON
		half4 _Shape2Tex_ST, _Shape2Color;
		half _Shape2XSpeed, _Shape2YSpeed, _Shape2ColorWeight, _Shape2AlphaWeight;
		#if SHAPE2CONTRAST_ON
			half _Shape2Contrast, _Shape2Brightness;
		#endif
		#if SHAPE2DISTORT_ON
			half4 _Shape2DistortTex_ST;
			half _Shape2DistortAmount, _Shape2DistortXSpeed, _Shape2DistortYSpeed;
		#endif
		#if SHAPE2ROTATE_ON
			half _Shape2RotationOffset, _Shape2RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh2;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh2BlendOffset;
		#endif
	#endif

	#if SHAPE3_ON
		half4 _Shape3Tex_ST, _Shape3Color;
		half _Shape3XSpeed, _Shape3YSpeed, _Shape3ColorWeight, _Shape3AlphaWeight;
		#if SHAPE3CONTRAST_ON
			half _Shape3Contrast, _Shape3Brightness;
		#endif
		#if SHAPE3DISTORT_ON
			half4 _Shape3DistortTex_ST;
			half _Shape3DistortAmount, _Shape3DistortXSpeed, _Shape3DistortYSpeed;
		#endif
		#if SHAPE3ROTATE_ON
			half _Shape3RotationOffset, _Shape3RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh3;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh3BlendOffset;
		#endif
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
		#if GLOWTEX_ON
			half4 _GlowTex_ST;
		#endif
	#endif

	#if MASK_ON
		half4 _MaskTex_ST;
		half _MaskPow;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if ALPHASMOOTHSTEP_ON
		half _AlphaStepMin, _AlphaStepMax;
	#endif

	#if ALPHAFADE_ON
		half _AlphaFadeAmount, _AlphaFadeSmooth, _AlphaFadePow;
	#endif

	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if WAVEUV_ON
		half _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if ROUNDWAVEUV_ON || PIXELATE_ON
		half4 _MainTex_TexelSize;
	#endif

	#if VERTOFFSET_ON
		half4 _VertOffsetTex_ST;
		half _VertOffsetAmount, _VertOffsetPower, _VertOffsetTexXSpeed, _VertOffsetTexYSpeed;
	#endif

	#if FADE_ON
		half4 _FadeTex_ST;
		half _FadeAmount, _FadeTransition, _FadePower, _FadeScrollXSpeed, _FadeScrollYSpeed;
		#if FADEBURN_ON
			half4 _FadeBurnColor, _FadeBurnTex_ST;
			half _FadeBurnWidth, _FadeBurnGlow;
		#endif
	#endif

	#if COLORGRADING_ON
		half3 _ColorGradingLight, _ColorGradingMiddle, _ColorGradingDark;
		half _ColorGradingMidPoint;
	#endif
            
	#if CAMDISTFADE_ON
		half _CamDistFadeStepMin, _CamDistFadeStepMax, _CamDistProximityFade;
	#endif

	#if RIM_ON
		half _RimBias, _RimScale, _RimPower, _RimIntensity, _RimAddAmount, _RimErodesAlpha;
		half4 _RimColor;
	#endif

	#if BACKFACETINT_ON
		half4 _BackFaceTint, _FrontFaceTint;
	#endif

	#if SHAPEDEBUG_ON
		half _DebugShape;
	#endif

	#if SHAPE1MASK_ON
		half4 _Shape1MaskTex_ST;
		half _Shape1MaskPow;
	#endif

	#if TRAILWIDTH_ON
		half _TrailWidthPower;
	#endif

	#if LIGHTANDSHADOW_ON
		half3 _All1VfxLightDir;
		half _ShadowAmount, _ShadowStepMin, _ShadowStepMax, _LightAmount;
		half4 _LightColor;
	#endif

	#if SHAPETEXOFFSET_ON
		half _RandomSh1Mult, _RandomSh2Mult, _RandomSh3Mult;
	#endif

	#if DEPTHGLOW_ON
		half _DepthGlowDist, _DepthGlowPow, _DepthGlow, _DepthGlowGlobal;
		half4 _DepthGlowColor;
    #endif

	#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
        half _ScreenUvShDistScale,_ScreenUvSh2DistScale, _ScreenUvSh3DistScale;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif




         

         

         

	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if SHAPE1DISTORT_ON
		TEXTURE2D(_ShapeDistortTex);
		SAMPLER(sampler_ShapeDistortTex);
	#endif

	#if SHAPE2_ON
		TEXTURE2D(_Shape2Tex);
		SAMPLER(sampler_Shape2Tex);
		#if SHAPE2DISTORT_ON
			TEXTURE2D(_Shape2DistortTex);
			SAMPLER(sampler_Shape2DistortTex);
		#endif
	#endif

	#if SHAPE3_ON
		TEXTURE2D(_Shape3Tex);
		SAMPLER(sampler_Shape3Tex);
		#if SHAPE3DISTORT_ON
			TEXTURE2D(_Shape3DistortTex);
			SAMPLER(sampler_Shape3DistortTex);
		#endif
	#endif

	#if GLOW_ON
		#if GLOWTEX_ON
			TEXTURE2D(_GlowTex);
			SAMPLER(sampler_GlowTex);
		#endif
	#endif

	#if MASK_ON
		TEXTURE2D(_MaskTex);
		SAMPLER(sampler_MaskTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		SAMPLER(sampler_ColorRampTex);
	#endif

	#if COLORRAMPGRAD_ON
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif
	
	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);
	#endif

	#if VERTOFFSET_ON
		TEXTURE2D(_VertOffsetTex);
		SAMPLER(sampler_VertOffsetTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);
		#if FADEBURN_ON
			TEXTURE2D(_FadeBurnTex);
			SAMPLER(sampler_FadeBurnTex);
		#endif
	#endif

	#if SHAPE1MASK_ON
		TEXTURE2D(_Shape1MaskTex);
		SAMPLER(sampler_Shape1MaskTex);
	#endif

	#if TRAILWIDTH_ON
		TEXTURE2D(_TrailWidthGradient);
		SAMPLER(sampler_TrailWidthGradient);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif

	half4 SampleTextureWithScroll(in Texture2D _tex, in SamplerState _sampler, in float2 uv, in half scrollXSpeed, in half scrollYSpeed, in float time)
	{
		half2 _uv = uv;
		_uv.x += (time * scrollXSpeed) % 1;
		_uv.y += (time * scrollYSpeed) % 1;
		return SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
	}

	half EaseOutQuint(half x) 
	{
		return 1 - pow(1 - x, 5);
	}

	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax)
	{
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}

	float2 RotateUvs(float2 uv, half rotation, half4 scaleAndTranslate)
	{
		half2 center = half2(0.5 * scaleAndTranslate.x + scaleAndTranslate.z, 0.5 * scaleAndTranslate.y + scaleAndTranslate.w);
		half cosAngle = cos(rotation);
		half sinAngle = sin(rotation);
		uv -= center;
		uv = mul(half2x2(cosAngle, -sinAngle, sinAngle, cosAngle), uv);
		uv += center;
		return uv; 
	}

	half4 GetDebugColor(float4 resColor, half4 shape1, half4 shape2, half4 shape3)
	{
		half4 res = resColor;

		//MAKE SURE THE FOLLOWING CODE BLOCK IS UNCOMMENTED-------------------------------------------
        #if SHAPEDEBUG_ON
			if(_DebugShape < 1.5) return shape1;
			#if SHAPE2_ON
				else if (_DebugShape < 2.5) return shape2;
			#endif
			#if SHAPE3_ON
				else return shape3;
			#endif
        #endif

		return res;
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//uvDistTex --> extraV2F0
		//uvSh1DistTex --> extraV2F1
		//uvSh2DistTex --> extraV2F2
		//uvSh3DistTex --> extraV2F3
 
		#if VERTOFFSET_ON
			#if TIMEISCUSTOM_ON
				const half time = v.texcoord0.z + globalCustomTime.y;
			#else
				const half time = v.texcoord0.z + _Time.y;
			#endif
				half4 offsetUv = half4(TRANSFORM_TEX(v.texcoord0.xy, _VertOffsetTex), 0, 0);
            	offsetUv.x += (time * _VertOffsetTexXSpeed) % 1;
				offsetUv.y += (time * _VertOffsetTexYSpeed) % 1;
                v.vertex.xyz += v.normal * _VertOffsetAmount * pow(SAMPLE_TEXTURE2D_LOD(_VertOffsetTex, sampler_VertOffsetTex, offsetUv, 0).r, _VertOffsetPower); 
		#endif

		#if DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F0.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif

		#if SHAPE1DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F1.xy = TRANSFORM_TEX(v.texcoord0.xy, _ShapeDistortTex);
        #endif

		#if SHAPE2_ON
			#if SHAPE2DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F2.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape2DistortTex);;
			#endif
		#endif

		#if SHAPE3_ON
			#if SHAPE3DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F3.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape3DistortTex);
			#endif
        #endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		//i.uvSeed -> d.texcoord0.xy

		float seed = d.texcoord0.z + _TimingSeed;
		#if TIMEISCUSTOM_ON
			const float4 shaderTime = globalCustomTime;
		#else
			const float4 shaderTime = _Time;
		#endif
		float time = shaderTime.y + seed;

		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 originalUvs = d.texcoord0.xy;
        #endif

		#if PIXELATE_ON
			half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif

		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif

		#if TWISTUV_ON
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		#if DOODLE_ON
			half2 uvCopy = d.texcoord0.xy;
			_HandDrawnSpeed = (floor((shaderTime.x + seed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		#if SHAKEUV_ON
			half xShake = sin((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		#if WAVEUV_ON
			half2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
			half angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((time * _WaveSpeed) % 360.0);
			d.texcoord0.xy = d.texcoord0.xy + normalize(uvWave) * sin(angWave) * (_WaveStrength / 1000.0);
		#endif

		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - d.texcoord0.x);
			half yWave = ((0.5 * _MainTex_ST.y) - d.texcoord0.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
            d.texcoord0.xy += (sin((ripple + time * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif

		#if POLARUV_ON
            half2 prePolarUvs = d.texcoord0.xy;
            d.texcoord0.xy = d.texcoord0.xy - half2(0.5, 0.5);
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (1.0 * 6.28318530718), length(d.texcoord0.xy) * 2.0);
            d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		#if DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 distortUvs = TRANSFORM_TEX(d.texcoord0.xy, _DistortTex);
			#else
				half2 distortUvs = d.extraV2F0.xy;
			#endif
			distortUvs.x += ((shaderTime.x + seed) * _DistortTexXSpeed) % 1;
			distortUvs.y += ((shaderTime.x + seed) * _DistortTexYSpeed) % 1;
			#if ATLAS_ON
				d.extraV2F0.xy = half2((d.extraV2F0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.extraV2F0.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, distortUvs).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif

		#if TEXTURESCROLL_ON
			d.texcoord0.x += (time * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += (time * _TextureScrollYSpeed) % 1;
		#endif

		#if TRAILWIDTH_ON
            half width = pow(SAMPLE_TEXTURE2D(_TrailWidthGradient, sampler_TrailWidthGradient, d.texcoord0).r, _TrailWidthPower);
            d.texcoord0.y = (d.texcoord0.y * 2 - 1) / width * 0.5 + 0.5;
            clip(d.texcoord0.y);
            clip(1 - d.texcoord0.y);
        #endif

		float2 shape1Uv = d.texcoord0.xy;
        #if SHAPE2_ON
			float2 shape2Uv = shape1Uv;
        #endif
        #if SHAPE3_ON
			float2 shape3Uv = shape1Uv;
        #endif

        #if CAMDISTFADE_ON || SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half camDistance = distance(d.worldSpacePosition, _WorldSpaceCameraPos);
		#endif
		 
		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 uvOffsetPostFx = d.texcoord0.xy - originalUvs;
			d.texcoord0.xy = d.screenPos.xy / d.screenPos.w;
			d.texcoord0.x = d.texcoord0.x * (_ScreenParams.x / _ScreenParams.y);
			d.texcoord0.x -= 0.5;
			d.texcoord0.xy -= uvOffsetPostFx;
			originalUvs += uvOffsetPostFx;
			half distanceZoom = camDistance * 0.1;
			half2 scaleWithDistUvs = d.texcoord0.xy * distanceZoom + ((-distanceZoom * 0.5) + 0.5);
			#if SHAPE1SCREENUV_ON
				shape1Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvShDistScale);
			#else
				shape1Uv = originalUvs;
			#endif
			#if SHAPE2SCREENUV_ON && SHAPE2_ON
				shape2Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh2DistScale);
			#else
				#if SHAPE2_ON
					shape2Uv = originalUvs;
				#endif
			#endif
			#if SHAPE3SCREENUV_ON && SHAPE3_ON
				shape3Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh3DistScale);
			#else
				#if SHAPE3_ON
					shape3Uv = originalUvs;
				#endif
			#endif
		#endif

		shape1Uv = TRANSFORM_TEX(shape1Uv, _MainTex);
		#if OFFSETSTREAM_ON
			shape1Uv.x += i.offsetCustomData.x * _OffsetSh1;
			shape1Uv.y += i.offsetCustomData.y * _OffsetSh1;
		#endif
        #if SHAPETEXOFFSET_ON
			shape1Uv += seed * _RandomSh1Mult;
		#endif
        
		#if SHAPE1DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 sh1DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _ShapeDistortTex);
			#else
				half2 sh1DistortUvs = d.extraV2F1.xy;
			#endif
			
			sh1DistortUvs.x += ((time + seed) * _ShapeDistortXSpeed) % 1;
			sh1DistortUvs.y += ((time + seed) * _ShapeDistortYSpeed) % 1;
			half distortAmount = (SAMPLE_TEXTURE2D(_ShapeDistortTex, sampler_ShapeDistortTex, sh1DistortUvs).r - 0.5) * 0.2 * _ShapeDistortAmount;
			shape1Uv.x += distortAmount;
			shape1Uv.y += distortAmount;
		#endif
		#if SHAPE1ROTATE_ON
			shape1Uv = RotateUvs(shape1Uv, _ShapeRotationOffset + ((_ShapeRotationSpeed * time) % 6.28318530718), _MainTex_ST);
		#endif

		half4 shape1 = SampleTextureWithScroll(_MainTex, sampler_MainTex, shape1Uv, _ShapeXSpeed, _ShapeYSpeed, time);
		#if SHAPE1SHAPECOLOR_ON
			shape1.a = shape1.r;
			shape1.rgb = _ShapeColor.rgb;
		#else
			shape1 *= _ShapeColor;
		#endif
		#if SHAPE1CONTRAST_ON
			#if SHAPE1SHAPECOLOR_ON
				shape1.a = saturate((shape1.a - 0.5) * _ShapeContrast + 0.5 + _ShapeBrightness);
			#else
				shape1.rgb = max(0, (shape1.rgb - half3(0.5, 0.5, 0.5)) * _ShapeContrast + half3(0.5, 0.5, 0.5) + _ShapeBrightness);
			#endif
        #endif

		half4 shape2 = 1.0;
		#if SHAPE2_ON
			shape2Uv = TRANSFORM_TEX(shape2Uv, _Shape2Tex);
			#if OFFSETSTREAM_ON
				shape2Uv.x += i.offsetCustomData.x * _OffsetSh2;
				shape2Uv.y += i.offsetCustomData.y * _OffsetSh2;
			#endif
			#if SHAPETEXOFFSET_ON
				shape2Uv += seed * _RandomSh2Mult;
			#endif
			#if SHAPE2DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh2DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape2DistortTex);
				#else
					half2 sh2DistortUvs = d.extraV2F2.xy;
				#endif
				sh2DistortUvs.x += ((time + seed) * _Shape2DistortXSpeed) % 1;
				sh2DistortUvs.y += ((time + seed) * _Shape2DistortYSpeed) % 1;
				half distortAmnt2 = (SAMPLE_TEXTURE2D(_Shape2DistortTex, sampler_Shape2DistortTex, sh2DistortUvs).r - 0.5) * 0.2 * _Shape2DistortAmount;
				shape2Uv.x += distortAmnt2;
				shape2Uv.y += distortAmnt2;
			#endif
			#if SHAPE2ROTATE_ON
				shape2Uv = RotateUvs(shape2Uv, _Shape2RotationOffset + ((_Shape2RotationSpeed * time) % 6.28318530718), _Shape2Tex_ST);
			#endif
			
			shape2 = SampleTextureWithScroll(_Shape2Tex, sampler_Shape2Tex, shape2Uv, _Shape2XSpeed, _Shape2YSpeed, time); 
			#if SHAPE2SHAPECOLOR_ON
				shape2.a = shape2.r;
				shape2.rgb = _Shape2Color.rgb;
			#else
				shape2 *= _Shape2Color;
			#endif
			#if SHAPE2CONTRAST_ON
				#if SHAPE2SHAPECOLOR_ON
					shape2.a = max(0, (shape2.a - 0.5) * _Shape2Contrast + 0.5 + _Shape2Brightness);
				#else
					shape2.rgb = max(0, (shape2.rgb - half3(0.5, 0.5, 0.5)) * _Shape2Contrast + half3(0.5, 0.5, 0.5) + _Shape2Brightness);
				#endif
			#endif
        #endif

		half4 shape3 = 1.0;
		 #if SHAPE3_ON
            shape3Uv = TRANSFORM_TEX(shape3Uv, _Shape3Tex);
			
            #if OFFSETSTREAM_ON
				shape3Uv.x += i.offsetCustomData.x * _OffsetSh3;
				shape3Uv.y += i.offsetCustomData.y * _OffsetSh3;
			#endif
            #if SHAPETEXOFFSET_ON
				shape3Uv += seed * _RandomSh3Mult;
			#endif
            #if SHAPE3DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh3DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape3DistortTex);
				#else
					half2 sh3DistortUvs = d.extraV2F3.xy;
				#endif
				sh3DistortUvs.x += ((time + seed) * _Shape3DistortXSpeed) % 1;
				sh3DistortUvs.y += ((time + seed) * _Shape3DistortYSpeed) % 1;
				half distortAmnt3 = (SAMPLE_TEXTURE2D(_Shape3DistortTex, sampler_Shape3DistortTex, sh3DistortUvs).r - 0.5) * 0.3 * _Shape3DistortAmount;
				shape3Uv.x += distortAmnt3;
				shape3Uv.y += distortAmnt3;
            #endif
            #if SHAPE3ROTATE_ON
				shape3Uv = RotateUvs(shape3Uv, _Shape3RotationOffset + ((_Shape3RotationSpeed * time) % 6.28318530718), _Shape3Tex_ST);
            #endif
				shape3 = SampleTextureWithScroll(_Shape3Tex, sampler_Shape3Tex, shape3Uv, _Shape3XSpeed, _Shape3YSpeed, time);
            #if SHAPE3SHAPECOLOR_ON
				shape3.a = shape3.r;
				shape3.rgb = _Shape3Color.rgb;
            #else
				shape3 *= _Shape3Color;
            #endif
            #if SHAPE3CONTRAST_ON
				#if SHAPE3SHAPECOLOR_ON
					shape3.a = max(0, (shape3.a - 0.5) * _Shape3Contrast + 0.5 + _Shape3Brightness);
				#else
					shape3.rgb = max(0, (shape3.rgb - half3(0.5, 0.5, 0.5)) * _Shape3Contrast + half3(0.5, 0.5, 0.5) + _Shape3Brightness);
				#endif
            #endif
		#endif

		half4 col = shape1;
		//Mix all shapes pre: change weights if custom vertex effect active
        #if SHAPEWEIGHTS_ON
			half shapeWeightOffset;
			#if SHAPE2_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh1BlendOffset;
				_ShapeColorWeight = max(0, _ShapeColorWeight + shapeWeightOffset);
				_ShapeAlphaWeight = max(0, _ShapeAlphaWeight + shapeWeightOffset);
				shapeWeightOffset = i.offsetCustomData.z * _Sh2BlendOffset;
				_Shape2ColorWeight = max(0, _Shape2ColorWeight + shapeWeightOffset);
				_Shape2AlphaWeight = max(0, _Shape2AlphaWeight + shapeWeightOffset);
			#endif
			#if SHAPE3_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh3BlendOffset;
				_Shape3ColorWeight = max(0, _Shape3ColorWeight + shapeWeightOffset);
				_Shape3AlphaWeight = max(0, _Shape3AlphaWeight + shapeWeightOffset);
			#endif
		#endif

		//Mix all shapes
        #if SHAPE2_ON
			#if !SPLITRGBA_ON
				_ShapeAlphaWeight = _ShapeColorWeight;
				_Shape2AlphaWeight = _Shape2ColorWeight;
			#endif
			#if SHAPE3_ON //Shape3 On
				#if !SPLITRGBA_ON
					_Shape3AlphaWeight = _Shape3ColorWeight;
				#endif
			#if SHAPEADD_ON
				col.rgb = ((shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight)) + (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(max(shape3.a * _Shape3AlphaWeight, max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight)));
			#else
				col.rgb = ((shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight)) * (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight)) * (shape3.a * _Shape3AlphaWeight));
			#endif
			#else //Shape3 Off
				#if SHAPEADD_ON
					col.rgb = (shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate(max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight));
				#else
					col.rgb = (shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight));
				#endif
			#endif
        #endif

		#if SHAPE1MASK_ON
            col = lerp(col, shape1, pow(SAMPLE_TEXTURE2D(_Shape1MaskTex, sampler_Shape1MaskTex, TRANSFORM_TEX(i.uvSeed.xy, _Shape1MaskTex)).r, _Shape1MaskPow));
        #endif
		
		#if PREMULTIPLYCOLOR_ON
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
			col.a = min(luminance, col.a);
        #endif

		col.rgb *= _Color.rgb * d.vertexColor.rgb;
		#if PREMULTIPLYALPHA_ON
			col.rgb *= col.a;
        #endif

        #if !PREMULTIPLYCOLOR_ON && (COLORRAMP_ON || ALPHAFADE_ON || COLORGRADING_ON || FADE_ON || (ADDITIVECONFIG_ON && (GLOW_ON || DEPTHGLOW_ON)))
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
        #endif

		#if (FADE_ON || ALPHAFADE_ON) && ALPHAFADEINPUTSTREAM_ON
			col.a *= d.vertexColor.a;
			d.vertexColor.a = d.texcoord0.w;
        #endif

		#if FADE_ON
			half preFadeAlpha = col.a;
			_FadeAmount = saturate(_FadeAmount + (1 - d.vertexColor.a));
			_FadeTransition = max(0.01, _FadeTransition * EaseOutQuint(saturate(_FadeAmount)));
			half2 fadeUv;
			fadeUv = d.texcoord0.xy + seed;
			fadeUv.x += (time * _FadeScrollXSpeed) % 1;
			fadeUv.y += (time * _FadeScrollYSpeed) % 1;
			half2 tiledUvFade1 = TRANSFORM_TEX(fadeUv, _FadeTex);
			#if ADDITIVECONFIG_ON && !PREMULTIPLYCOLOR_ON
				preFadeAlpha *= luminance;
			#endif
			_FadeAmount = saturate(pow(_FadeAmount, _FadePower));
			#if FADEBURN_ON
				half2 tiledUvFade2 = TRANSFORM_TEX(fadeUv, _FadeBurnTex);
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				half fadeNaturalEdge = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fadeNaturalEdge;
				half fadeBurn = saturate(smoothstep(0.0 , _FadeTransition + _FadeBurnWidth, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				fadeBurn = fadeNaturalEdge - fadeBurn;
				_FadeBurnColor.rgb *= _FadeBurnGlow;
				col.rgb += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2).rgb * _FadeBurnColor.rgb * preFadeAlpha;
			#else
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				float fade = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fade;
			#endif
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _FadeAmount;
			#endif
		#endif

		#if ALPHAFADE_ON
			half alphaFadeLuminance;
			_AlphaFadeAmount = saturate(_AlphaFadeAmount + (1 - d.vertexColor.a));
			_AlphaFadeAmount = saturate(pow(_AlphaFadeAmount, _AlphaFadePow));
			_AlphaFadeSmooth = max(0.01, _AlphaFadeSmooth * EaseOutQuint(saturate(_AlphaFadeAmount)));
			#if ALPHAFADEUSESHAPE1_ON
				alphaFadeLuminance = shape1.r;
			#else
				alphaFadeLuminance = luminance;
			#endif
				alphaFadeLuminance = saturate(alphaFadeLuminance - 0.001);
			#if ALPHAFADEUSEREDCHANNEL_ON
				col.a *= col.r;
			#endif
				col.a = saturate(col.a);
				float alphaFade = saturate(smoothstep(0.0 , _AlphaFadeSmooth, RemapFloat(1.0 - _AlphaFadeAmount, 0.0, 1.0, -1.0, 1.0) + alphaFadeLuminance));
				col.a *= alphaFade;
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _AlphaFadeAmount;
			#endif
        #endif

		#if BACKFACETINT_ON
			col.rgb = lerp(col.rgb * _BackFaceTint, col.rgb * _FrontFaceTint, step(0, dot(d.worldSpaceNormal, d.worldSpaceViewDir)));
        #endif

		//#if LIGHTANDSHADOW_ON
			//half NdL = saturate(dot(d.worldSpaceNormal, -_All1VfxLightDir));
			//col.rgb += _LightColor * _LightAmount * NdL;
			//NdL = max(_ShadowAmount, NdL);
            //NdL = smoothstep(_ShadowStepMin, _ShadowStepMax, NdL);
            //col.rgb *= NdL;
		//#endif

		#if COLORGRADING_ON
			col.rgb *= lerp(lerp(_ColorGradingDark, _ColorGradingMiddle, luminance/_ColorGradingMidPoint),
			lerp(_ColorGradingMiddle, _ColorGradingLight, (luminance - _ColorGradingMidPoint)/(1.0 - _ColorGradingMidPoint)), step(_ColorGradingMidPoint, luminance));
        #endif

		#if COLORRAMP_ON
			half colorRampLuminance = saturate(luminance + _ColorRampLuminosity);
			#if COLORRAMPGRAD_ON
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(colorRampLuminance, 0));
			#else
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(colorRampLuminance, 0));
			#endif
			col.rgb = lerp(col.rgb, colorRampRes.rgb, _ColorRampBlend);
			col.a = lerp(col.a, saturate(col.a * colorRampRes.a), _ColorRampBlend);
        #endif

		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = floor(col.rgb / (1.0 / _PosterizeNumColors)) * (1.0 / _PosterizeNumColors);
		#endif

		#if DEPTHGLOW_ON
			half sceneDepthDiff = GetLinearEyeDepth(d.screenUV) - d.screenPos.w;
        #endif

		#if RIM_ON
			half NdV = 1 - abs(dot(d.worldSpaceNormal, d.worldSpaceViewDir));
			half rimFactor = saturate(_RimBias + _RimScale * pow(NdV, _RimPower));
			half4 rimCol = _RimColor * rimFactor;
			rimCol.rgb *= _RimIntensity;
			col.rgb = lerp(col.rgb * (rimCol.rgb + half3(1,1,1)), col.rgb + rimCol.rgb, _RimAddAmount);
			col.a = saturate(col.a * (1 - rimFactor * _RimErodesAlpha));
        #endif

		#if DEPTHGLOW_ON
			half depthGlowMask = saturate(_DepthGlowDist * pow((1 - sceneDepthDiff), _DepthGlowPow));
			col.rgb = lerp(col.rgb, _DepthGlowGlobal * col.rgb, depthGlowMask);
			half depthGlowMult = 1;
			#if ADDITIVECONFIG_ON
				depthGlowMult = luminance;
			#endif
			col.rgb += _DepthGlowColor.rgb * _DepthGlow * depthGlowMask * col.a * depthGlowMult;
        #endif

		#if GLOW_ON
			half glowMask = 1;
			#if GLOWTEX_ON
				glowMask = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, TRANSFORM_TEX(d.texcoord0.xy, _GlowTex));
			#endif
				col.rgb *= _GlowGlobal * glowMask;
				half glowMult = 1;
			#if ADDITIVECONFIG_ON
				glowMult = luminance;
			#endif
			
			col.rgb += _GlowColor.rgb * _Glow * glowMask * col.a * glowMult;
        #endif

		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
				+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
				+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
				+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
				+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif

		#if CAMDISTFADE_ON
			col.a *= 1 - saturate(smoothstep(_CamDistFadeStepMin, _CamDistFadeStepMax, camDistance));
			col.a *= smoothstep(0.0, _CamDistProximityFade, camDistance);
		#endif

		#if MASK_ON
            half2 maskUv = d.texcoord0.xy;
            #if POLARUV_ON
				maskUv = prePolarUvs;
			#endif
            half4 maskSample = SAMPLE_TEXTURE2D(_MaskTex, sampler_MaskTex, TRANSFORM_TEX(maskUv, _MaskTex));
			half mask = pow(min(maskSample.r, maskSample.a), _MaskPow);
			col.a *= mask;
        #endif

		#if ALPHASMOOTHSTEP_ON
			col.a = smoothstep(_AlphaStepMin, _AlphaStepMax, col.a);
        #endif

		half4 debugColor = col;
		#if SHAPEDEBUG_ON
			debugColor = GetDebugColor(col, shape1, shape2, shape3);
		#endif

		clip(debugColor.a - _AlphaCutoffValue - 0.01);

		//#if FOG_ON
			//UNITY_APPLY_FOG(i.fogCoord, col);
        //#endif
		
		//Don't use a starting i.color.a lower than 1 unless using vertex stream dissolve when using a FADE effect
        #if !FADE_ON && !ALPHAFADE_ON
			col.a *= _Alpha * d.vertexColor.a;
        #endif
        #if FADE_ON || ALPHAFADE_ON
			col.a *= _Alpha;
        #endif
        #if ADDITIVECONFIG_ON
			col.rgb *= col.a;
        #endif

		
		#if SHAPEDEBUG_ON
		o.Albedo = debugColor.rgb; 
		o.Alpha = debugColor.a;
		#else
		o.Albedo = col.rgb; 
		o.Alpha = col.a;
		#endif
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                  v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                  v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                  v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                  v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
                d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
                v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


         


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
            // d.texcoord1 = i.texcoord1;
            // d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
             d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
           UNITY_SETUP_INSTANCE_ID(v);
           VertexToPixel o;
           UNITY_INITIALIZE_OUTPUT(VertexToPixel,o);
           UNITY_TRANSFER_INSTANCE_ID(v,o);
           UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

           o.pos = UnityObjectToClipPos(v.vertex);
            o.texcoord0 = v.texcoord0;
           // o.texcoord1 = v.texcoord1;
           // o.texcoord2 = v.texcoord2;

           // #if %TEXCOORD3REQUIREKEY%
           // o.texcoord3 = v.texcoord3;
           // #endif

           // #if %VERTEXCOLORREQUIREKEY%
            o.vertexColor = v.vertexColor;
           // #endif

           // #if %SCREENPOSREQUIREKEY%
            o.screenPos = ComputeScreenPos(o.pos);
           // #endif

           o.worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
           o.worldNormal = UnityObjectToWorldNormal(v.normal);
           o.worldTangent = float4(UnityObjectToWorldDir(v.tangent.xyz), v.tangent.w);


           #ifdef DYNAMICLIGHTMAP_ON
           o.lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
           #endif
           #ifdef LIGHTMAP_ON
           o.lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
           #endif

           // SH/ambient and vertex lights
           #ifndef LIGHTMAP_ON
             #if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
               o.sh = 0;
               // Approximated illumination from non-important point lights
               #ifdef VERTEXLIGHT_ON
                 o.sh += Shade4PointLights (
                   unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
                   unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
                   unity_4LightAtten0, o.worldPos, o.worldNormal);
               #endif
               o.sh = ShadeSHPerVertex (o.worldNormal, o.sh);
             #endif
           #endif // !LIGHTMAP_ON

           UNITY_TRANSFER_LIGHTING(o,v.texcoord1.xy); // pass shadow and, possibly, light cookie coordinates to pixel shader
           #ifdef FOG_COMBINED_WITH_TSPACE
             UNITY_TRANSFER_FOG_COMBINED_WITH_TSPACE(o,o.pos); // pass fog coordinates to pixel shader
           #elif defined (FOG_COMBINED_WITH_WORLD_POS)
             UNITY_TRANSFER_FOG_COMBINED_WITH_WORLD_POS(o,o.pos); // pass fog coordinates to pixel shader
           #else
             UNITY_TRANSFER_FOG(o,o.pos); // pass fog coordinates to pixel shader
           #endif

           return o;
         }

         

         // fragment shader
         fixed4 Frag (VertexToPixel IN
         #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
         #endif
         #if NEED_FACING
            , bool facing : SV_IsFrontFace
         #endif
         ) : SV_Target
         {
           UNITY_SETUP_INSTANCE_ID(IN);
           // prepare and unpack data
           #ifdef FOG_COMBINED_WITH_TSPACE
             UNITY_EXTRACT_FOG_FROM_TSPACE(IN);
           #elif defined (FOG_COMBINED_WITH_WORLD_POS)
             UNITY_EXTRACT_FOG_FROM_WORLD_POS(IN);
           #else
             UNITY_EXTRACT_FOG(IN);
           #endif

           ShaderData d = CreateShaderData(IN
              #if NEED_FACING
                 , facing
              #endif
           );
           Surface l = (Surface)0;


           #ifdef _DEPTHOFFSET_ON
              l.outputDepth = outputDepth;
           #endif

           

           l.Albedo = half3(0.5, 0.5, 0.5);
           l.Normal = float3(0,0,1);
           l.Occlusion = 1;
           l.Alpha = 1;

           ChainSurfaceFunction(l, d);

            

           #ifdef _DEPTHOFFSET_ON
              outputDepth = l.outputDepth;
           #endif


           #ifndef USING_DIRECTIONAL_LIGHT
             fixed3 lightDir = normalize(UnityWorldSpaceLightDir(d.worldSpacePosition));
           #else
             fixed3 lightDir = _WorldSpaceLightPos0.xyz;
           #endif
           float3 worldViewDir = normalize(UnityWorldSpaceViewDir(d.worldSpacePosition));

           // compute lighting & shadowing factor
           UNITY_LIGHT_ATTENUATION(atten, IN, d.worldSpacePosition)

           #if _USESPECULAR || _USESPECULARWORKFLOW || _SPECULARFROMMETALLIC
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
              #else
                 SurfaceOutputStandardSpecular o;
              #endif
              o.Specular = l.Specular;
              o.Occlusion = l.Occlusion;
              o.Smoothness = l.Smoothness;
           #elif _BDRFLAMBERT || _BDRF3 || _SIMPLELIT
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutput o = (SurfaceOutput)0;
              #else
                 SurfaceOutput o;
              #endif

              o.Specular = l.Specular;
              o.Gloss = l.Smoothness;
              _SpecColor.rgb = l.Specular; // fucking hell Unity, wtf..
           #else
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutputStandard o = (SurfaceOutputStandard)0;
              #else
                 SurfaceOutputStandard o;
              #endif
              o.Smoothness = l.Smoothness;
              o.Metallic = l.Metallic;
              o.Occlusion = l.Occlusion;
           #endif

           o.Albedo = l.Albedo;
           o.Emission = l.Emission;
           o.Alpha = l.Alpha;
           #if _WORLDSPACENORMAL
              o.Normal = l.Normal;
           #else
              o.Normal = normalize(TangentToWorldSpace(d, l.Normal));
           #endif

            fixed4 c = 0;
            // Setup lighting environment
            UnityGI gi;
            UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
            gi.indirect.diffuse = 0;
            gi.indirect.specular = 0;
            gi.light.color = _LightColor0.rgb;
            gi.light.dir = lightDir;
            // Call GI (lightmaps/SH/reflections) lighting function
            UnityGIInput giInput;
            UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
            giInput.light = gi.light;
            giInput.worldPos = d.worldSpacePosition;
            giInput.worldViewDir = worldViewDir;
            giInput.atten = atten;
            #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
               giInput.lightmapUV = IN.lmap;
            #else
               giInput.lightmapUV = 0.0;
            #endif
            #if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
               giInput.ambient = IN.sh;
            #else
               giInput.ambient.rgb = 0.0;
            #endif
            giInput.probeHDR[0] = unity_SpecCube0_HDR;
            giInput.probeHDR[1] = unity_SpecCube1_HDR;
            #if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
               giInput.boxMin[0] = unity_SpecCube0_BoxMin; // .w holds lerp value for blending
            #endif
            #ifdef UNITY_SPECCUBE_BOX_PROJECTION
               giInput.boxMax[0] = unity_SpecCube0_BoxMax;
               giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
               giInput.boxMax[1] = unity_SpecCube1_BoxMax;
               giInput.boxMin[1] = unity_SpecCube1_BoxMin;
               giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
            #endif

            

            #if defined(_OVERRIDE_SHADOWMASK)
               float4 mulColor = saturate(dot(l.ShadowMask, unity_OcclusionMaskSelector));
               gi.light.color *= mulColor;
               giInput.light.color *= mulColor;
            #endif

            #if _UNLIT
              c.rgb = l.Albedo;
              c.a = l.Alpha;
            #elif _BDRF3 || _SIMPLELIT
               LightingBlinnPhong_GI(o, giInput, gi);
               #if defined(_OVERRIDE_BAKEDGI)
                  gi.indirect.diffuse = l.DiffuseGI;
                  gi.indirect.specular = l.SpecularGI;
               #endif
               c += LightingBlinnPhong (o, d.worldSpaceViewDir, gi);
            #elif _USESPECULAR || _USESPECULARWORKFLOW || _SPECULARFROMMETALLIC
               LightingStandardSpecular_GI(o, giInput, gi);
               #if defined(_OVERRIDE_BAKEDGI)
                  gi.indirect.diffuse = l.DiffuseGI;
                  gi.indirect.specular = l.SpecularGI;
               #endif
               c += LightingStandardSpecular (o, d.worldSpaceViewDir, gi);
            #else
               LightingStandard_GI(o, giInput, gi);
               #if defined(_OVERRIDE_BAKEDGI)
                  gi.indirect.diffuse = l.DiffuseGI;
                  gi.indirect.specular = l.SpecularGI;
               #endif
               c += LightingStandard (o, d.worldSpaceViewDir, gi);
            #endif

           c.rgb += o.Emission;

           ChainFinalColorForward(l, d, c);

           #if !DISABLEFOG
            UNITY_APPLY_FOG(_unity_fogCoord, c); // apply fog
           #endif
           

           return c;
         }

         ENDCG

      }


      
	   // ---- deferred shading pass:
	   Pass
      {
		   Name "DEFERRED"
		   Tags { "LightMode" = "Deferred" }

         	Tags
    {
        "RenderType" = "Opaque" "Queue" = "Geometry" "PreviewType" = "Sphere"
    }   
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	ColorMask [_ColorMask]
Lighting Off


         CGPROGRAM

            #pragma vertex Vert
   #pragma fragment Frag

         // compile directives
         #pragma target 3.0
         #pragma multi_compile_instancing
         #pragma exclude_renderers nomrt
         #pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
         #pragma multi_compile_prepassfinal
         #include "HLSLSupport.cginc"
         #define UNITY_INSTANCED_LOD_FADE
         #define UNITY_INSTANCED_SH
         #define UNITY_INSTANCED_LIGHTMAPSTS
         #include "UnityShaderVariables.cginc"
         #include "UnityShaderUtilities.cginc"
         #include "UnityCG.cginc"
         #include "Lighting.cginc"
         #include "UnityPBSLighting.cginc"

         #define _PASSGBUFFER 1

         
    #pragma shader_feature_local TIMEISCUSTOM_ON
    #pragma shader_feature_local ADDITIVECONFIG_ON
    #pragma shader_feature_local PREMULTIPLYALPHA_ON
    #pragma shader_feature_local PREMULTIPLYCOLOR_ON
    #pragma shader_feature_local SPLITRGBA_ON
    #pragma shader_feature_local SHAPEADD_ON

    #pragma shader_feature_local SHAPE1SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE2SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE3SCREENUV_ON /////////////////Pipeline specific implementation

    #pragma shader_feature_local SHAPEDEBUG_ON
            
    #pragma shader_feature_local SHAPE1CONTRAST_ON
    #pragma shader_feature_local SHAPE1DISTORT_ON
    #pragma shader_feature_local SHAPE1ROTATE_ON
    #pragma shader_feature_local SHAPE1SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE2_ON
    #pragma shader_feature_local SHAPE2CONTRAST_ON
    #pragma shader_feature_local SHAPE2DISTORT_ON
    #pragma shader_feature_local SHAPE2ROTATE_ON
    #pragma shader_feature_local SHAPE2SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE3_ON
    #pragma shader_feature_local SHAPE3CONTRAST_ON
    #pragma shader_feature_local SHAPE3DISTORT_ON
    #pragma shader_feature_local SHAPE3ROTATE_ON
    #pragma shader_feature_local SHAPE3SHAPECOLOR_ON

    #pragma shader_feature_local GLOW_ON
    #pragma shader_feature_local GLOWTEX_ON
    #pragma shader_feature_local DEPTHGLOW_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local MASK_ON
    #pragma shader_feature_local COLORRAMP_ON
    #pragma shader_feature_local COLORRAMPGRAD_ON
    #pragma shader_feature_local COLORGRADING_ON
    #pragma shader_feature_local HSV_ON
    #pragma shader_feature_local POSTERIZE_ON
    #pragma shader_feature_local PIXELATE_ON
    #pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local SHAKEUV_ON
    #pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
    #pragma shader_feature_local TWISTUV_ON
    #pragma shader_feature_local DOODLE_ON
    #pragma shader_feature_local OFFSETSTREAM_ON
    #pragma shader_feature_local TEXTURESCROLL_ON
    #pragma shader_feature_local VERTOFFSET_ON
    #pragma shader_feature_local RIM_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local BACKFACETINT_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local POLARUV_ON
    #pragma shader_feature_local POLARUVDISTORT_ON
    #pragma shader_feature_local SHAPE1MASK_ON
    #pragma shader_feature_local TRAILWIDTH_ON
    #pragma shader_feature_local LIGHTANDSHADOW_ON
    #pragma shader_feature_local SHAPETEXOFFSET_ON
    #pragma shader_feature_local SHAPEWEIGHTS_ON
            
    #pragma shader_feature_local ALPHACUTOFF_ON
    #pragma shader_feature_local ALPHASMOOTHSTEP_ON
    #pragma shader_feature_local FADE_ON
    #pragma shader_feature_local FADEBURN_ON
    #pragma shader_feature_local ALPHAFADE_ON
    #pragma shader_feature_local ALPHAFADEUSESHAPE1_ON
    #pragma shader_feature_local ALPHAFADEUSEREDCHANNEL_ON
    #pragma shader_feature_local ALPHAFADETRANSPARENCYTOO_ON
    #pragma shader_feature_local ALPHAFADEINPUTSTREAM_ON
    #pragma shader_feature_local CAMDISTFADE_ON

	#pragma shader_feature NORMALMAP_ON


   #define _STANDARD 1
// If your looking in here and thinking WTF, yeah, I know. These are taken from the SRPs, to allow us to use the same
// texturing library they use. However, since they are not included in the standard pipeline by default, there is no
// way to include them in and they have to be inlined, since someone could copy this shader onto another machine without
// Better Shaders installed. Unfortunate, but I'd rather do this and have a nice library for texture sampling instead
// of the patchy one Unity provides being inlined/emulated in HDRP/URP. Strangely, PSSL and XBoxOne libraries are not
// included in the standard SRP code, but they are in tons of Unity own projects on the web, so I grabbed them from there.

#if defined(SHADER_API_GAMECORE)

	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName
	#define ASSIGN_SAMPLER(samplerName, samplerValue) samplerName = samplerValue

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define SAMPLE_DEPTH_TEXTURE(textureName, samplerName, coord2)          SAMPLE_TEXTURE2D(textureName, samplerName, coord2).r
	#define SAMPLE_DEPTH_TEXTURE_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod).r

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_XBOXONE)
	
	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_PSSL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.GetLOD(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RW_Texture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RW_Texture2D_Array<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RW_Texture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)



#elif defined(SHADER_API_D3D11)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_METAL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_VULKAN)
// This file assume SHADER_API_VULKAN is defined
	// TODO: This is a straight copy from D3D11.hlsl. Go through all this stuff and adjust where needed.


	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_SWITCH)
	// This file assume SHADER_API_SWITCH is defined

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod) textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)              textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_GLCORE)

	// OpenGL 4.1 SM 5.0 https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 46)
	#define OPENGL4_1_SM5 1
	#else
	#define OPENGL4_1_SM5 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)          TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)            TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)             TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)       TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)           TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)             TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, bias) ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))

	#if OPENGL4_1_SM5
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#endif


	#elif defined(SHADER_API_GLES3)

	// GLES 3.1 + AEP shader feature https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 40)
	#define GLES3_1_AEP 1
	#else
	#define GLES3_1_AEP 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)          TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)            Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)             Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)       Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)           TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)             Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#if GLES3_1_AEP
	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName
	#else
	#define RW_TEXTURE2D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)   ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)
	#endif

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)

	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif

	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)        textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                 textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                              textureName.Load(int4(unCoord3, lod))

	#if GLES3_1_AEP
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherAlpha(samplerName, coord2)
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)
	#endif


#elif defined(SHADER_API_GLES)


	#define uint int

	#define rcp(x) 1.0 / (x)
	#define ddx_fine ddx
	#define ddy_fine ddy
	#define asfloat
	#define asuint(x) asint(x)
	#define f32tof16
	#define f16tof32

	#define ERROR_ON_UNSUPPORTED_FUNCTION(funcName) #error #funcName is not supported on GLES 2.0

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }


	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) #error calculate Level of Detail not supported in GLES2

	// Texture abstraction

	#define TEXTURE2D(textureName)                          sampler2D textureName
	#define TEXTURE2D_ARRAY(textureName)                    samplerCUBE textureName // No support to texture2DArray
	#define TEXTURECUBE(textureName)                        samplerCUBE textureName
	#define TEXTURECUBE_ARRAY(textureName)                  samplerCUBE textureName // No supoport to textureCubeArray and can't emulate with texture2DArray
	#define TEXTURE3D(textureName)                          sampler3D textureName

	#define TEXTURE2D_FLOAT(textureName)                    sampler2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)              TEXTURECUBE_FLOAT(textureName) // No support to texture2DArray
	#define TEXTURECUBE_FLOAT(textureName)                  samplerCUBE_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)            TEXTURECUBE_FLOAT(textureName) // No support to textureCubeArray
	#define TEXTURE3D_FLOAT(textureName)                    sampler3D_float textureName

	#define TEXTURE2D_HALF(textureName)                     sampler2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)               TEXTURECUBE_HALF(textureName) // No support to texture2DArray
	#define TEXTURECUBE_HALF(textureName)                   samplerCUBE_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)             TEXTURECUBE_HALF(textureName) // No support to textureCubeArray
	#define TEXTURE3D_HALF(textureName)                     sampler3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)                   SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW(textureName)             TEXTURECUBE_SHADOW(textureName) // No support to texture array
	#define TEXTURECUBE_SHADOW(textureName)                 SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)           TEXTURECUBE_SHADOW(textureName) // No support to texture array

	#define RW_TEXTURE2D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)           ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)

	#define SAMPLER(samplerName)
	#define SAMPLER_CMP(samplerName)

	#define TEXTURE2D_PARAM(textureName, samplerName)                sampler2D textureName
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)          samplerCUBE textureName
	#define TEXTURECUBE_PARAM(textureName, samplerName)              samplerCUBE textureName
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)        samplerCUBE textureName
	#define TEXTURE3D_PARAM(textureName, samplerName)                sampler3D textureName
	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)         SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)   SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)       SHADOWCUBE_TEXTURE_AND_SAMPLER textureName

	#define TEXTURE2D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)         textureName
	#define TEXTURECUBE_ARGS(textureName, samplerName)             textureName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)       textureName
	#define TEXTURE3D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)        textureName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)  textureName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)      textureName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2) tex2D(textureName, coord2)

	#if (SHADER_TARGET >= 30)
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) tex2Dlod(textureName, float4(coord2, 0, lod))
	#else
	    // No lod support. Very poor approximation with bias.
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, lod)
	#endif

	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                       tex2Dbias(textureName, float4(coord2, 0, bias))
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                   SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                     ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_LOD)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_BIAS)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)    ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_GRAD)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                                texCUBE(textureName, coord3)
	// No lod support. Very poor approximation with bias.
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                       SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                     texCUBEbias(textureName, float4(coord3, bias))
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                   ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)        ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                                  tex3D(textureName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                         ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE3D_LOD)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                           SHADOW2D_SAMPLE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)              ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_SHADOW)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                         SHADOWCUBE_SAMPLE(textureName, samplerName, coord4)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_SHADOW)


	// Not supported. Can't define as error because shader library is calling these functions.
	#define LOAD_TEXTURE2D(textureName, unCoord2)                                               half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                                      half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                             half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                                  half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)                half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                         half4(0, 0, 0, 0)
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                               ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D)
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                                      ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D_LOD)

	// Gather not supported. Fallback to regular texture sampling.
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)

#else
#error unsupported shader api
#endif




// default flow control attributes
#ifndef UNITY_BRANCH
#   define UNITY_BRANCH
#endif
#ifndef UNITY_FLATTEN
#   define UNITY_FLATTEN
#endif
#ifndef UNITY_UNROLL
#   define UNITY_UNROLL
#endif
#ifndef UNITY_UNROLLX
#   define UNITY_UNROLLX(_x)
#endif
#ifndef UNITY_LOOP
#   define UNITY_LOOP
#endif





         

         // data across stages, stripped like the above.
         struct VertexToPixel
         {
            UNITY_POSITION(pos);       // must be named pos because Unity does stupid macro stuff
            float3 worldPos : TEXCOORD0;
            float3 worldNormal : TEXCOORD1;
            float4 worldTangent : TEXCOORD2;
             float4 texcoord0 : TEXCOORD3;
            // float4 texcoord1 : TEXCOORD4;
            // float4 texcoord2 : TEXCOORD5;

            // #if %TEXCOORD3REQUIREKEY%
            // float4 texcoord3 : TEXCOORD6;
            // #endif

            // #if %SCREENPOSREQUIREKEY%
             float4 screenPos : TEXCOORD7;
            // #endif

            #ifndef DIRLIGHTMAP_OFF
              float3 viewDir : TEXCOORD8;
            #endif
            float4 lmap : TEXCOORD9;
            #ifndef LIGHTMAP_ON
              #if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
                half3 sh : TEXCOORD10; // SH
              #endif
            #else
              #ifdef DIRLIGHTMAP_OFF
                float4 lmapFadePos : TEXCOORD11;
              #endif
            #endif

            
            // #if %VERTEXCOLORREQUIREKEY%
             float4 vertexColor : COLOR;
            // #endif

            // #if %EXTRAV2F0REQUIREKEY%
             float4 extraV2F0 : TEXCOORD12;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             float4 extraV2F1 : TEXCOORD13;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             float4 extraV2F2 : TEXCOORD14;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             float4 extraV2F3 : TEXCOORD15;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // float4 extraV2F4 : TEXCOORD16;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // float4 extraV2F5 : TEXCOORD17;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // float4 extraV2F6 : TEXCOORD18;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // float4 extraV2F7 : TEXCOORD19;
            // #endif

            UNITY_VERTEX_INPUT_INSTANCE_ID
            UNITY_VERTEX_OUTPUT_STEREO
         };

         
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
                float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef UNITY_MATRIX_I_M

               #define UNITY_MATRIX_I_M   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)UNITY_MATRIX_M, transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)UNITY_MATRIX_V, norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
         
	half4 _Color;
	half _Alpha;
	half _AlphaCutoffValue;

	half _TimingSeed;

	#if TIMEISCUSTOM_ON
		float4 globalCustomTime;
	#endif

	half4 _MainTex_ST, _ShapeColor;
	half _ShapeXSpeed, _ShapeYSpeed, _ShapeColorWeight, _ShapeAlphaWeight;
	
	#if SHAPE1CONTRAST_ON
		half _ShapeContrast, _ShapeBrightness;
	#endif
	
	#if SHAPE1DISTORT_ON
		half4 _ShapeDistortTex_ST;
		half _ShapeDistortAmount, _ShapeDistortXSpeed, _ShapeDistortYSpeed;
	#endif
	
	#if SHAPE1ROTATE_ON
		half _ShapeRotationOffset, _ShapeRotationSpeed;
	#endif
	
	#if OFFSETSTREAM_ON
		half _OffsetSh1;
	#endif
	
	#if SHAPEWEIGHTS_ON
		half _Sh1BlendOffset;
	#endif

	#if SHAPE2_ON
		half4 _Shape2Tex_ST, _Shape2Color;
		half _Shape2XSpeed, _Shape2YSpeed, _Shape2ColorWeight, _Shape2AlphaWeight;
		#if SHAPE2CONTRAST_ON
			half _Shape2Contrast, _Shape2Brightness;
		#endif
		#if SHAPE2DISTORT_ON
			half4 _Shape2DistortTex_ST;
			half _Shape2DistortAmount, _Shape2DistortXSpeed, _Shape2DistortYSpeed;
		#endif
		#if SHAPE2ROTATE_ON
			half _Shape2RotationOffset, _Shape2RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh2;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh2BlendOffset;
		#endif
	#endif

	#if SHAPE3_ON
		half4 _Shape3Tex_ST, _Shape3Color;
		half _Shape3XSpeed, _Shape3YSpeed, _Shape3ColorWeight, _Shape3AlphaWeight;
		#if SHAPE3CONTRAST_ON
			half _Shape3Contrast, _Shape3Brightness;
		#endif
		#if SHAPE3DISTORT_ON
			half4 _Shape3DistortTex_ST;
			half _Shape3DistortAmount, _Shape3DistortXSpeed, _Shape3DistortYSpeed;
		#endif
		#if SHAPE3ROTATE_ON
			half _Shape3RotationOffset, _Shape3RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh3;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh3BlendOffset;
		#endif
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
		#if GLOWTEX_ON
			half4 _GlowTex_ST;
		#endif
	#endif

	#if MASK_ON
		half4 _MaskTex_ST;
		half _MaskPow;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if ALPHASMOOTHSTEP_ON
		half _AlphaStepMin, _AlphaStepMax;
	#endif

	#if ALPHAFADE_ON
		half _AlphaFadeAmount, _AlphaFadeSmooth, _AlphaFadePow;
	#endif

	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if WAVEUV_ON
		half _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if ROUNDWAVEUV_ON || PIXELATE_ON
		half4 _MainTex_TexelSize;
	#endif

	#if VERTOFFSET_ON
		half4 _VertOffsetTex_ST;
		half _VertOffsetAmount, _VertOffsetPower, _VertOffsetTexXSpeed, _VertOffsetTexYSpeed;
	#endif

	#if FADE_ON
		half4 _FadeTex_ST;
		half _FadeAmount, _FadeTransition, _FadePower, _FadeScrollXSpeed, _FadeScrollYSpeed;
		#if FADEBURN_ON
			half4 _FadeBurnColor, _FadeBurnTex_ST;
			half _FadeBurnWidth, _FadeBurnGlow;
		#endif
	#endif

	#if COLORGRADING_ON
		half3 _ColorGradingLight, _ColorGradingMiddle, _ColorGradingDark;
		half _ColorGradingMidPoint;
	#endif
            
	#if CAMDISTFADE_ON
		half _CamDistFadeStepMin, _CamDistFadeStepMax, _CamDistProximityFade;
	#endif

	#if RIM_ON
		half _RimBias, _RimScale, _RimPower, _RimIntensity, _RimAddAmount, _RimErodesAlpha;
		half4 _RimColor;
	#endif

	#if BACKFACETINT_ON
		half4 _BackFaceTint, _FrontFaceTint;
	#endif

	#if SHAPEDEBUG_ON
		half _DebugShape;
	#endif

	#if SHAPE1MASK_ON
		half4 _Shape1MaskTex_ST;
		half _Shape1MaskPow;
	#endif

	#if TRAILWIDTH_ON
		half _TrailWidthPower;
	#endif

	#if LIGHTANDSHADOW_ON
		half3 _All1VfxLightDir;
		half _ShadowAmount, _ShadowStepMin, _ShadowStepMax, _LightAmount;
		half4 _LightColor;
	#endif

	#if SHAPETEXOFFSET_ON
		half _RandomSh1Mult, _RandomSh2Mult, _RandomSh3Mult;
	#endif

	#if DEPTHGLOW_ON
		half _DepthGlowDist, _DepthGlowPow, _DepthGlow, _DepthGlowGlobal;
		half4 _DepthGlowColor;
    #endif

	#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
        half _ScreenUvShDistScale,_ScreenUvSh2DistScale, _ScreenUvSh3DistScale;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif




         

         

         

	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if SHAPE1DISTORT_ON
		TEXTURE2D(_ShapeDistortTex);
		SAMPLER(sampler_ShapeDistortTex);
	#endif

	#if SHAPE2_ON
		TEXTURE2D(_Shape2Tex);
		SAMPLER(sampler_Shape2Tex);
		#if SHAPE2DISTORT_ON
			TEXTURE2D(_Shape2DistortTex);
			SAMPLER(sampler_Shape2DistortTex);
		#endif
	#endif

	#if SHAPE3_ON
		TEXTURE2D(_Shape3Tex);
		SAMPLER(sampler_Shape3Tex);
		#if SHAPE3DISTORT_ON
			TEXTURE2D(_Shape3DistortTex);
			SAMPLER(sampler_Shape3DistortTex);
		#endif
	#endif

	#if GLOW_ON
		#if GLOWTEX_ON
			TEXTURE2D(_GlowTex);
			SAMPLER(sampler_GlowTex);
		#endif
	#endif

	#if MASK_ON
		TEXTURE2D(_MaskTex);
		SAMPLER(sampler_MaskTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		SAMPLER(sampler_ColorRampTex);
	#endif

	#if COLORRAMPGRAD_ON
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif
	
	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);
	#endif

	#if VERTOFFSET_ON
		TEXTURE2D(_VertOffsetTex);
		SAMPLER(sampler_VertOffsetTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);
		#if FADEBURN_ON
			TEXTURE2D(_FadeBurnTex);
			SAMPLER(sampler_FadeBurnTex);
		#endif
	#endif

	#if SHAPE1MASK_ON
		TEXTURE2D(_Shape1MaskTex);
		SAMPLER(sampler_Shape1MaskTex);
	#endif

	#if TRAILWIDTH_ON
		TEXTURE2D(_TrailWidthGradient);
		SAMPLER(sampler_TrailWidthGradient);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif

	half4 SampleTextureWithScroll(in Texture2D _tex, in SamplerState _sampler, in float2 uv, in half scrollXSpeed, in half scrollYSpeed, in float time)
	{
		half2 _uv = uv;
		_uv.x += (time * scrollXSpeed) % 1;
		_uv.y += (time * scrollYSpeed) % 1;
		return SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
	}

	half EaseOutQuint(half x) 
	{
		return 1 - pow(1 - x, 5);
	}

	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax)
	{
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}

	float2 RotateUvs(float2 uv, half rotation, half4 scaleAndTranslate)
	{
		half2 center = half2(0.5 * scaleAndTranslate.x + scaleAndTranslate.z, 0.5 * scaleAndTranslate.y + scaleAndTranslate.w);
		half cosAngle = cos(rotation);
		half sinAngle = sin(rotation);
		uv -= center;
		uv = mul(half2x2(cosAngle, -sinAngle, sinAngle, cosAngle), uv);
		uv += center;
		return uv; 
	}

	half4 GetDebugColor(float4 resColor, half4 shape1, half4 shape2, half4 shape3)
	{
		half4 res = resColor;

		//MAKE SURE THE FOLLOWING CODE BLOCK IS UNCOMMENTED-------------------------------------------
        #if SHAPEDEBUG_ON
			if(_DebugShape < 1.5) return shape1;
			#if SHAPE2_ON
				else if (_DebugShape < 2.5) return shape2;
			#endif
			#if SHAPE3_ON
				else return shape3;
			#endif
        #endif

		return res;
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//uvDistTex --> extraV2F0
		//uvSh1DistTex --> extraV2F1
		//uvSh2DistTex --> extraV2F2
		//uvSh3DistTex --> extraV2F3
 
		#if VERTOFFSET_ON
			#if TIMEISCUSTOM_ON
				const half time = v.texcoord0.z + globalCustomTime.y;
			#else
				const half time = v.texcoord0.z + _Time.y;
			#endif
				half4 offsetUv = half4(TRANSFORM_TEX(v.texcoord0.xy, _VertOffsetTex), 0, 0);
            	offsetUv.x += (time * _VertOffsetTexXSpeed) % 1;
				offsetUv.y += (time * _VertOffsetTexYSpeed) % 1;
                v.vertex.xyz += v.normal * _VertOffsetAmount * pow(SAMPLE_TEXTURE2D_LOD(_VertOffsetTex, sampler_VertOffsetTex, offsetUv, 0).r, _VertOffsetPower); 
		#endif

		#if DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F0.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif

		#if SHAPE1DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F1.xy = TRANSFORM_TEX(v.texcoord0.xy, _ShapeDistortTex);
        #endif

		#if SHAPE2_ON
			#if SHAPE2DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F2.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape2DistortTex);;
			#endif
		#endif

		#if SHAPE3_ON
			#if SHAPE3DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F3.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape3DistortTex);
			#endif
        #endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		//i.uvSeed -> d.texcoord0.xy

		float seed = d.texcoord0.z + _TimingSeed;
		#if TIMEISCUSTOM_ON
			const float4 shaderTime = globalCustomTime;
		#else
			const float4 shaderTime = _Time;
		#endif
		float time = shaderTime.y + seed;

		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 originalUvs = d.texcoord0.xy;
        #endif

		#if PIXELATE_ON
			half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif

		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif

		#if TWISTUV_ON
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		#if DOODLE_ON
			half2 uvCopy = d.texcoord0.xy;
			_HandDrawnSpeed = (floor((shaderTime.x + seed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		#if SHAKEUV_ON
			half xShake = sin((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		#if WAVEUV_ON
			half2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
			half angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((time * _WaveSpeed) % 360.0);
			d.texcoord0.xy = d.texcoord0.xy + normalize(uvWave) * sin(angWave) * (_WaveStrength / 1000.0);
		#endif

		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - d.texcoord0.x);
			half yWave = ((0.5 * _MainTex_ST.y) - d.texcoord0.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
            d.texcoord0.xy += (sin((ripple + time * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif

		#if POLARUV_ON
            half2 prePolarUvs = d.texcoord0.xy;
            d.texcoord0.xy = d.texcoord0.xy - half2(0.5, 0.5);
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (1.0 * 6.28318530718), length(d.texcoord0.xy) * 2.0);
            d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		#if DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 distortUvs = TRANSFORM_TEX(d.texcoord0.xy, _DistortTex);
			#else
				half2 distortUvs = d.extraV2F0.xy;
			#endif
			distortUvs.x += ((shaderTime.x + seed) * _DistortTexXSpeed) % 1;
			distortUvs.y += ((shaderTime.x + seed) * _DistortTexYSpeed) % 1;
			#if ATLAS_ON
				d.extraV2F0.xy = half2((d.extraV2F0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.extraV2F0.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, distortUvs).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif

		#if TEXTURESCROLL_ON
			d.texcoord0.x += (time * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += (time * _TextureScrollYSpeed) % 1;
		#endif

		#if TRAILWIDTH_ON
            half width = pow(SAMPLE_TEXTURE2D(_TrailWidthGradient, sampler_TrailWidthGradient, d.texcoord0).r, _TrailWidthPower);
            d.texcoord0.y = (d.texcoord0.y * 2 - 1) / width * 0.5 + 0.5;
            clip(d.texcoord0.y);
            clip(1 - d.texcoord0.y);
        #endif

		float2 shape1Uv = d.texcoord0.xy;
        #if SHAPE2_ON
			float2 shape2Uv = shape1Uv;
        #endif
        #if SHAPE3_ON
			float2 shape3Uv = shape1Uv;
        #endif

        #if CAMDISTFADE_ON || SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half camDistance = distance(d.worldSpacePosition, _WorldSpaceCameraPos);
		#endif
		 
		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 uvOffsetPostFx = d.texcoord0.xy - originalUvs;
			d.texcoord0.xy = d.screenPos.xy / d.screenPos.w;
			d.texcoord0.x = d.texcoord0.x * (_ScreenParams.x / _ScreenParams.y);
			d.texcoord0.x -= 0.5;
			d.texcoord0.xy -= uvOffsetPostFx;
			originalUvs += uvOffsetPostFx;
			half distanceZoom = camDistance * 0.1;
			half2 scaleWithDistUvs = d.texcoord0.xy * distanceZoom + ((-distanceZoom * 0.5) + 0.5);
			#if SHAPE1SCREENUV_ON
				shape1Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvShDistScale);
			#else
				shape1Uv = originalUvs;
			#endif
			#if SHAPE2SCREENUV_ON && SHAPE2_ON
				shape2Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh2DistScale);
			#else
				#if SHAPE2_ON
					shape2Uv = originalUvs;
				#endif
			#endif
			#if SHAPE3SCREENUV_ON && SHAPE3_ON
				shape3Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh3DistScale);
			#else
				#if SHAPE3_ON
					shape3Uv = originalUvs;
				#endif
			#endif
		#endif

		shape1Uv = TRANSFORM_TEX(shape1Uv, _MainTex);
		#if OFFSETSTREAM_ON
			shape1Uv.x += i.offsetCustomData.x * _OffsetSh1;
			shape1Uv.y += i.offsetCustomData.y * _OffsetSh1;
		#endif
        #if SHAPETEXOFFSET_ON
			shape1Uv += seed * _RandomSh1Mult;
		#endif
        
		#if SHAPE1DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 sh1DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _ShapeDistortTex);
			#else
				half2 sh1DistortUvs = d.extraV2F1.xy;
			#endif
			
			sh1DistortUvs.x += ((time + seed) * _ShapeDistortXSpeed) % 1;
			sh1DistortUvs.y += ((time + seed) * _ShapeDistortYSpeed) % 1;
			half distortAmount = (SAMPLE_TEXTURE2D(_ShapeDistortTex, sampler_ShapeDistortTex, sh1DistortUvs).r - 0.5) * 0.2 * _ShapeDistortAmount;
			shape1Uv.x += distortAmount;
			shape1Uv.y += distortAmount;
		#endif
		#if SHAPE1ROTATE_ON
			shape1Uv = RotateUvs(shape1Uv, _ShapeRotationOffset + ((_ShapeRotationSpeed * time) % 6.28318530718), _MainTex_ST);
		#endif

		half4 shape1 = SampleTextureWithScroll(_MainTex, sampler_MainTex, shape1Uv, _ShapeXSpeed, _ShapeYSpeed, time);
		#if SHAPE1SHAPECOLOR_ON
			shape1.a = shape1.r;
			shape1.rgb = _ShapeColor.rgb;
		#else
			shape1 *= _ShapeColor;
		#endif
		#if SHAPE1CONTRAST_ON
			#if SHAPE1SHAPECOLOR_ON
				shape1.a = saturate((shape1.a - 0.5) * _ShapeContrast + 0.5 + _ShapeBrightness);
			#else
				shape1.rgb = max(0, (shape1.rgb - half3(0.5, 0.5, 0.5)) * _ShapeContrast + half3(0.5, 0.5, 0.5) + _ShapeBrightness);
			#endif
        #endif

		half4 shape2 = 1.0;
		#if SHAPE2_ON
			shape2Uv = TRANSFORM_TEX(shape2Uv, _Shape2Tex);
			#if OFFSETSTREAM_ON
				shape2Uv.x += i.offsetCustomData.x * _OffsetSh2;
				shape2Uv.y += i.offsetCustomData.y * _OffsetSh2;
			#endif
			#if SHAPETEXOFFSET_ON
				shape2Uv += seed * _RandomSh2Mult;
			#endif
			#if SHAPE2DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh2DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape2DistortTex);
				#else
					half2 sh2DistortUvs = d.extraV2F2.xy;
				#endif
				sh2DistortUvs.x += ((time + seed) * _Shape2DistortXSpeed) % 1;
				sh2DistortUvs.y += ((time + seed) * _Shape2DistortYSpeed) % 1;
				half distortAmnt2 = (SAMPLE_TEXTURE2D(_Shape2DistortTex, sampler_Shape2DistortTex, sh2DistortUvs).r - 0.5) * 0.2 * _Shape2DistortAmount;
				shape2Uv.x += distortAmnt2;
				shape2Uv.y += distortAmnt2;
			#endif
			#if SHAPE2ROTATE_ON
				shape2Uv = RotateUvs(shape2Uv, _Shape2RotationOffset + ((_Shape2RotationSpeed * time) % 6.28318530718), _Shape2Tex_ST);
			#endif
			
			shape2 = SampleTextureWithScroll(_Shape2Tex, sampler_Shape2Tex, shape2Uv, _Shape2XSpeed, _Shape2YSpeed, time); 
			#if SHAPE2SHAPECOLOR_ON
				shape2.a = shape2.r;
				shape2.rgb = _Shape2Color.rgb;
			#else
				shape2 *= _Shape2Color;
			#endif
			#if SHAPE2CONTRAST_ON
				#if SHAPE2SHAPECOLOR_ON
					shape2.a = max(0, (shape2.a - 0.5) * _Shape2Contrast + 0.5 + _Shape2Brightness);
				#else
					shape2.rgb = max(0, (shape2.rgb - half3(0.5, 0.5, 0.5)) * _Shape2Contrast + half3(0.5, 0.5, 0.5) + _Shape2Brightness);
				#endif
			#endif
        #endif

		half4 shape3 = 1.0;
		 #if SHAPE3_ON
            shape3Uv = TRANSFORM_TEX(shape3Uv, _Shape3Tex);
			
            #if OFFSETSTREAM_ON
				shape3Uv.x += i.offsetCustomData.x * _OffsetSh3;
				shape3Uv.y += i.offsetCustomData.y * _OffsetSh3;
			#endif
            #if SHAPETEXOFFSET_ON
				shape3Uv += seed * _RandomSh3Mult;
			#endif
            #if SHAPE3DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh3DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape3DistortTex);
				#else
					half2 sh3DistortUvs = d.extraV2F3.xy;
				#endif
				sh3DistortUvs.x += ((time + seed) * _Shape3DistortXSpeed) % 1;
				sh3DistortUvs.y += ((time + seed) * _Shape3DistortYSpeed) % 1;
				half distortAmnt3 = (SAMPLE_TEXTURE2D(_Shape3DistortTex, sampler_Shape3DistortTex, sh3DistortUvs).r - 0.5) * 0.3 * _Shape3DistortAmount;
				shape3Uv.x += distortAmnt3;
				shape3Uv.y += distortAmnt3;
            #endif
            #if SHAPE3ROTATE_ON
				shape3Uv = RotateUvs(shape3Uv, _Shape3RotationOffset + ((_Shape3RotationSpeed * time) % 6.28318530718), _Shape3Tex_ST);
            #endif
				shape3 = SampleTextureWithScroll(_Shape3Tex, sampler_Shape3Tex, shape3Uv, _Shape3XSpeed, _Shape3YSpeed, time);
            #if SHAPE3SHAPECOLOR_ON
				shape3.a = shape3.r;
				shape3.rgb = _Shape3Color.rgb;
            #else
				shape3 *= _Shape3Color;
            #endif
            #if SHAPE3CONTRAST_ON
				#if SHAPE3SHAPECOLOR_ON
					shape3.a = max(0, (shape3.a - 0.5) * _Shape3Contrast + 0.5 + _Shape3Brightness);
				#else
					shape3.rgb = max(0, (shape3.rgb - half3(0.5, 0.5, 0.5)) * _Shape3Contrast + half3(0.5, 0.5, 0.5) + _Shape3Brightness);
				#endif
            #endif
		#endif

		half4 col = shape1;
		//Mix all shapes pre: change weights if custom vertex effect active
        #if SHAPEWEIGHTS_ON
			half shapeWeightOffset;
			#if SHAPE2_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh1BlendOffset;
				_ShapeColorWeight = max(0, _ShapeColorWeight + shapeWeightOffset);
				_ShapeAlphaWeight = max(0, _ShapeAlphaWeight + shapeWeightOffset);
				shapeWeightOffset = i.offsetCustomData.z * _Sh2BlendOffset;
				_Shape2ColorWeight = max(0, _Shape2ColorWeight + shapeWeightOffset);
				_Shape2AlphaWeight = max(0, _Shape2AlphaWeight + shapeWeightOffset);
			#endif
			#if SHAPE3_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh3BlendOffset;
				_Shape3ColorWeight = max(0, _Shape3ColorWeight + shapeWeightOffset);
				_Shape3AlphaWeight = max(0, _Shape3AlphaWeight + shapeWeightOffset);
			#endif
		#endif

		//Mix all shapes
        #if SHAPE2_ON
			#if !SPLITRGBA_ON
				_ShapeAlphaWeight = _ShapeColorWeight;
				_Shape2AlphaWeight = _Shape2ColorWeight;
			#endif
			#if SHAPE3_ON //Shape3 On
				#if !SPLITRGBA_ON
					_Shape3AlphaWeight = _Shape3ColorWeight;
				#endif
			#if SHAPEADD_ON
				col.rgb = ((shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight)) + (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(max(shape3.a * _Shape3AlphaWeight, max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight)));
			#else
				col.rgb = ((shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight)) * (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight)) * (shape3.a * _Shape3AlphaWeight));
			#endif
			#else //Shape3 Off
				#if SHAPEADD_ON
					col.rgb = (shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate(max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight));
				#else
					col.rgb = (shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight));
				#endif
			#endif
        #endif

		#if SHAPE1MASK_ON
            col = lerp(col, shape1, pow(SAMPLE_TEXTURE2D(_Shape1MaskTex, sampler_Shape1MaskTex, TRANSFORM_TEX(i.uvSeed.xy, _Shape1MaskTex)).r, _Shape1MaskPow));
        #endif
		
		#if PREMULTIPLYCOLOR_ON
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
			col.a = min(luminance, col.a);
        #endif

		col.rgb *= _Color.rgb * d.vertexColor.rgb;
		#if PREMULTIPLYALPHA_ON
			col.rgb *= col.a;
        #endif

        #if !PREMULTIPLYCOLOR_ON && (COLORRAMP_ON || ALPHAFADE_ON || COLORGRADING_ON || FADE_ON || (ADDITIVECONFIG_ON && (GLOW_ON || DEPTHGLOW_ON)))
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
        #endif

		#if (FADE_ON || ALPHAFADE_ON) && ALPHAFADEINPUTSTREAM_ON
			col.a *= d.vertexColor.a;
			d.vertexColor.a = d.texcoord0.w;
        #endif

		#if FADE_ON
			half preFadeAlpha = col.a;
			_FadeAmount = saturate(_FadeAmount + (1 - d.vertexColor.a));
			_FadeTransition = max(0.01, _FadeTransition * EaseOutQuint(saturate(_FadeAmount)));
			half2 fadeUv;
			fadeUv = d.texcoord0.xy + seed;
			fadeUv.x += (time * _FadeScrollXSpeed) % 1;
			fadeUv.y += (time * _FadeScrollYSpeed) % 1;
			half2 tiledUvFade1 = TRANSFORM_TEX(fadeUv, _FadeTex);
			#if ADDITIVECONFIG_ON && !PREMULTIPLYCOLOR_ON
				preFadeAlpha *= luminance;
			#endif
			_FadeAmount = saturate(pow(_FadeAmount, _FadePower));
			#if FADEBURN_ON
				half2 tiledUvFade2 = TRANSFORM_TEX(fadeUv, _FadeBurnTex);
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				half fadeNaturalEdge = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fadeNaturalEdge;
				half fadeBurn = saturate(smoothstep(0.0 , _FadeTransition + _FadeBurnWidth, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				fadeBurn = fadeNaturalEdge - fadeBurn;
				_FadeBurnColor.rgb *= _FadeBurnGlow;
				col.rgb += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2).rgb * _FadeBurnColor.rgb * preFadeAlpha;
			#else
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				float fade = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fade;
			#endif
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _FadeAmount;
			#endif
		#endif

		#if ALPHAFADE_ON
			half alphaFadeLuminance;
			_AlphaFadeAmount = saturate(_AlphaFadeAmount + (1 - d.vertexColor.a));
			_AlphaFadeAmount = saturate(pow(_AlphaFadeAmount, _AlphaFadePow));
			_AlphaFadeSmooth = max(0.01, _AlphaFadeSmooth * EaseOutQuint(saturate(_AlphaFadeAmount)));
			#if ALPHAFADEUSESHAPE1_ON
				alphaFadeLuminance = shape1.r;
			#else
				alphaFadeLuminance = luminance;
			#endif
				alphaFadeLuminance = saturate(alphaFadeLuminance - 0.001);
			#if ALPHAFADEUSEREDCHANNEL_ON
				col.a *= col.r;
			#endif
				col.a = saturate(col.a);
				float alphaFade = saturate(smoothstep(0.0 , _AlphaFadeSmooth, RemapFloat(1.0 - _AlphaFadeAmount, 0.0, 1.0, -1.0, 1.0) + alphaFadeLuminance));
				col.a *= alphaFade;
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _AlphaFadeAmount;
			#endif
        #endif

		#if BACKFACETINT_ON
			col.rgb = lerp(col.rgb * _BackFaceTint, col.rgb * _FrontFaceTint, step(0, dot(d.worldSpaceNormal, d.worldSpaceViewDir)));
        #endif

		//#if LIGHTANDSHADOW_ON
			//half NdL = saturate(dot(d.worldSpaceNormal, -_All1VfxLightDir));
			//col.rgb += _LightColor * _LightAmount * NdL;
			//NdL = max(_ShadowAmount, NdL);
            //NdL = smoothstep(_ShadowStepMin, _ShadowStepMax, NdL);
            //col.rgb *= NdL;
		//#endif

		#if COLORGRADING_ON
			col.rgb *= lerp(lerp(_ColorGradingDark, _ColorGradingMiddle, luminance/_ColorGradingMidPoint),
			lerp(_ColorGradingMiddle, _ColorGradingLight, (luminance - _ColorGradingMidPoint)/(1.0 - _ColorGradingMidPoint)), step(_ColorGradingMidPoint, luminance));
        #endif

		#if COLORRAMP_ON
			half colorRampLuminance = saturate(luminance + _ColorRampLuminosity);
			#if COLORRAMPGRAD_ON
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(colorRampLuminance, 0));
			#else
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(colorRampLuminance, 0));
			#endif
			col.rgb = lerp(col.rgb, colorRampRes.rgb, _ColorRampBlend);
			col.a = lerp(col.a, saturate(col.a * colorRampRes.a), _ColorRampBlend);
        #endif

		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = floor(col.rgb / (1.0 / _PosterizeNumColors)) * (1.0 / _PosterizeNumColors);
		#endif

		#if DEPTHGLOW_ON
			half sceneDepthDiff = GetLinearEyeDepth(d.screenUV) - d.screenPos.w;
        #endif

		#if RIM_ON
			half NdV = 1 - abs(dot(d.worldSpaceNormal, d.worldSpaceViewDir));
			half rimFactor = saturate(_RimBias + _RimScale * pow(NdV, _RimPower));
			half4 rimCol = _RimColor * rimFactor;
			rimCol.rgb *= _RimIntensity;
			col.rgb = lerp(col.rgb * (rimCol.rgb + half3(1,1,1)), col.rgb + rimCol.rgb, _RimAddAmount);
			col.a = saturate(col.a * (1 - rimFactor * _RimErodesAlpha));
        #endif

		#if DEPTHGLOW_ON
			half depthGlowMask = saturate(_DepthGlowDist * pow((1 - sceneDepthDiff), _DepthGlowPow));
			col.rgb = lerp(col.rgb, _DepthGlowGlobal * col.rgb, depthGlowMask);
			half depthGlowMult = 1;
			#if ADDITIVECONFIG_ON
				depthGlowMult = luminance;
			#endif
			col.rgb += _DepthGlowColor.rgb * _DepthGlow * depthGlowMask * col.a * depthGlowMult;
        #endif

		#if GLOW_ON
			half glowMask = 1;
			#if GLOWTEX_ON
				glowMask = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, TRANSFORM_TEX(d.texcoord0.xy, _GlowTex));
			#endif
				col.rgb *= _GlowGlobal * glowMask;
				half glowMult = 1;
			#if ADDITIVECONFIG_ON
				glowMult = luminance;
			#endif
			
			col.rgb += _GlowColor.rgb * _Glow * glowMask * col.a * glowMult;
        #endif

		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
				+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
				+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
				+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
				+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif

		#if CAMDISTFADE_ON
			col.a *= 1 - saturate(smoothstep(_CamDistFadeStepMin, _CamDistFadeStepMax, camDistance));
			col.a *= smoothstep(0.0, _CamDistProximityFade, camDistance);
		#endif

		#if MASK_ON
            half2 maskUv = d.texcoord0.xy;
            #if POLARUV_ON
				maskUv = prePolarUvs;
			#endif
            half4 maskSample = SAMPLE_TEXTURE2D(_MaskTex, sampler_MaskTex, TRANSFORM_TEX(maskUv, _MaskTex));
			half mask = pow(min(maskSample.r, maskSample.a), _MaskPow);
			col.a *= mask;
        #endif

		#if ALPHASMOOTHSTEP_ON
			col.a = smoothstep(_AlphaStepMin, _AlphaStepMax, col.a);
        #endif

		half4 debugColor = col;
		#if SHAPEDEBUG_ON
			debugColor = GetDebugColor(col, shape1, shape2, shape3);
		#endif

		clip(debugColor.a - _AlphaCutoffValue - 0.01);

		//#if FOG_ON
			//UNITY_APPLY_FOG(i.fogCoord, col);
        //#endif
		
		//Don't use a starting i.color.a lower than 1 unless using vertex stream dissolve when using a FADE effect
        #if !FADE_ON && !ALPHAFADE_ON
			col.a *= _Alpha * d.vertexColor.a;
        #endif
        #if FADE_ON || ALPHAFADE_ON
			col.a *= _Alpha;
        #endif
        #if ADDITIVECONFIG_ON
			col.rgb *= col.a;
        #endif

		
		#if SHAPEDEBUG_ON
		o.Albedo = debugColor.rgb; 
		o.Alpha = debugColor.a;
		#else
		o.Albedo = col.rgb; 
		o.Alpha = col.a;
		#endif
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                  v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                  v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                  v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                  v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
                d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
                v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


         


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
            // d.texcoord1 = i.texcoord1;
            // d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
             d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif


         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
            UNITY_SETUP_INSTANCE_ID(v);
            VertexToPixel o;
            UNITY_INITIALIZE_OUTPUT(VertexToPixel,o);
            UNITY_TRANSFER_INSTANCE_ID(v,o);
            UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

            o.pos = UnityObjectToClipPos(v.vertex);
             o.texcoord0 = v.texcoord0;
            // o.texcoord1 = v.texcoord1;
            // o.texcoord2 = v.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // o.texcoord3 = v.texcoord3;
            // #endif

            // #if %VERTEXCOLORREQUIREKEY%
             o.vertexColor = v.vertexColor;
            // #endif

            // #if %SCREENPOSREQUIREKEY%
             o.screenPos = ComputeScreenPos(o.pos);
            // #endif

            o.worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
            o.worldNormal = UnityObjectToWorldNormal(v.normal);
            o.worldTangent = float4(UnityObjectToWorldDir(v.tangent.xyz), v.tangent.w);


            float3 viewDirForLight = UnityWorldSpaceViewDir(o.worldPos);
            #ifndef DIRLIGHTMAP_OFF
               float3 worldBinormal = cross(o.worldNormal, o.worldTangent.xyz);
               o.viewDir.x = dot(viewDirForLight, o.worldTangent.xyz);
               o.viewDir.y = dot(viewDirForLight, worldBinormal);
               o.viewDir.z = dot(viewDirForLight, o.worldNormal);
            #endif
            #ifdef DYNAMICLIGHTMAP_ON
               o.lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
            #else
               o.lmap.zw = 0;
            #endif
            #ifdef LIGHTMAP_ON
               o.lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
               #ifdef DIRLIGHTMAP_OFF
                  o.lmapFadePos.xyz = (mul(GetObjectToWorldMatrix(), v.vertex).xyz - unity_ShadowFadeCenterAndType.xyz) * unity_ShadowFadeCenterAndType.w;
                  o.lmapFadePos.w = (-UnityObjectToViewPos(v.vertex).z) * (1.0 - unity_ShadowFadeCenterAndType.w);
               #endif
            #else
               o.lmap.xy = 0;
               #if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
                  o.sh = 0;
                  o.sh = ShadeSHPerVertex (o.worldNormal, o.sh);
               #endif
            #endif

            return o;
         }

         

         #ifdef LIGHTMAP_ON
         float4 unity_LightmapFade;
         #endif
         fixed4 unity_Ambient;

         

         // fragment shader
         void Frag (VertexToPixel IN,
             out half4 outGBuffer0 : SV_Target0,
             out half4 outGBuffer1 : SV_Target1,
             out half4 outGBuffer2 : SV_Target2,
             out half4 outEmission : SV_Target3
         #if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
             , out half4 outShadowMask : SV_Target4
         #endif
         #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
         #endif
         #if NEED_FACING
            , bool facing : SV_IsFrontFace
         #endif
         )
         {
           UNITY_SETUP_INSTANCE_ID(IN);
           // prepare and unpack data

           #ifdef FOG_COMBINED_WITH_TSPACE
             UNITY_EXTRACT_FOG_FROM_TSPACE(IN);
           #elif defined (FOG_COMBINED_WITH_WORLD_POS)
             UNITY_EXTRACT_FOG_FROM_WORLD_POS(IN);
           #else
             UNITY_EXTRACT_FOG(IN);
           #endif

           ShaderData d = CreateShaderData(IN
              #if NEED_FACING
                 , facing
              #endif
           );
           Surface l = (Surface)0;

           #ifdef _DEPTHOFFSET_ON
              l.outputDepth = outputDepth;
           #endif

           l.Albedo = half3(0.5, 0.5, 0.5);
           l.Normal = float3(0,0,1);
           l.Occlusion = 1;
           l.Alpha = 1;

           ChainSurfaceFunction(l, d);

           #ifdef _DEPTHOFFSET_ON
              outputDepth = l.outputDepth;
           #endif

           



           #ifndef USING_DIRECTIONAL_LIGHT
             fixed3 lightDir = normalize(UnityWorldSpaceLightDir(d.worldSpacePosition));
           #else
             fixed3 lightDir = _WorldSpaceLightPos0.xyz;
           #endif
           float3 worldViewDir = normalize(UnityWorldSpaceViewDir(d.worldSpacePosition));

           #if _USESPECULAR || _USESPECULARWORKFLOW || _SPECULARFROMMETALLIC
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
              #else
                 SurfaceOutputStandardSpecular o;
              #endif
              o.Specular = l.Specular;
              o.Occlusion = l.Occlusion;
              o.Smoothness = l.Smoothness;
           #elif _BDRFLAMBERT || _BDRF3 || _SIMPLELIT
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutput o = (SurfaceOutput)0;
              #else
                 SurfaceOutput o;
              #endif

              o.Specular = l.SpecularPower;
              o.Gloss = l.Smoothness;
              _SpecColor.rgb = l.Specular; // fucking hell Unity, wtf..
           #else
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutputStandard o = (SurfaceOutputStandard)0;
              #else
                 SurfaceOutputStandard o;
              #endif
              o.Smoothness = l.Smoothness;
              o.Metallic = l.Metallic;
              o.Occlusion = l.Occlusion;
           #endif


           
           o.Albedo = l.Albedo;
           o.Emission = l.Emission;
           o.Alpha = l.Alpha;

           #if _WORLDSPACENORMAL
              o.Normal = l.Normal;
           #else
              o.Normal = normalize(TangentToWorldSpace(d, l.Normal));
           #endif


           half atten = 1;

           // Setup lighting environment
           UnityGI gi;
           UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
           gi.indirect.diffuse = 0;
           gi.indirect.specular = 0;
           gi.light.color = 0;
           gi.light.dir = half3(0,1,0);
           // Call GI (lightmaps/SH/reflections) lighting function
           UnityGIInput giInput;
           UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
           giInput.light = gi.light;
           giInput.worldPos = d.worldSpacePosition;
           giInput.worldViewDir = worldViewDir;
           giInput.atten = atten;
           #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
             giInput.lightmapUV = IN.lmap;
           #else
             giInput.lightmapUV = 0.0;
           #endif
           #if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
             giInput.ambient = IN.sh;
           #else
             giInput.ambient.rgb = 0.0;
           #endif
           giInput.probeHDR[0] = unity_SpecCube0_HDR;
           giInput.probeHDR[1] = unity_SpecCube1_HDR;
           #if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
             giInput.boxMin[0] = unity_SpecCube0_BoxMin; // .w holds lerp value for blending
           #endif
           #ifdef UNITY_SPECCUBE_BOX_PROJECTION
             giInput.boxMax[0] = unity_SpecCube0_BoxMax;
             giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
             giInput.boxMax[1] = unity_SpecCube1_BoxMax;
             giInput.boxMin[1] = unity_SpecCube1_BoxMin;
             giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
           #endif

          

           #if _BDRF3 || _SIMPLELIT
              
              LightingBlinnPhong_GI(o, giInput, gi);
              #if defined(_OVERRIDE_BAKEDGI)
               gi.indirect.diffuse = l.DiffuseGI;
               gi.indirect.specular = l.SpecularGI;
              #endif

              outEmission = LightingBlinnPhong_Deferred(o, worldViewDir, gi, outGBuffer0, outGBuffer1, outGBuffer2);
              #if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
                outShadowMask = UnityGetRawBakedOcclusions (IN.lmap.xy, d.worldSpacePosition);
              #endif
              #ifndef UNITY_HDR_ON
              outEmission.rgb = exp2(-outEmission.rgb);
              #endif
           #elif _USESPECULAR || _USESPECULARWORKFLOW || _SPECULARFROMMETALLIC
              LightingStandardSpecular_GI(o, giInput, gi);
              #if defined(_OVERRIDE_BAKEDGI)
               gi.indirect.diffuse = l.DiffuseGI;
               gi.indirect.specular = l.SpecularGI;
              #endif
              // call lighting function to output g-buffer
              outEmission = LightingStandardSpecular_Deferred (o, worldViewDir, gi, outGBuffer0, outGBuffer1, outGBuffer2);
              #if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
                outShadowMask = UnityGetRawBakedOcclusions (IN.lmap.xy, d.worldSpacePosition);
              #endif
              #ifndef UNITY_HDR_ON
              outEmission.rgb = exp2(-outEmission.rgb);
              #endif
           #else
              LightingStandard_GI(o, giInput, gi);
              #if defined(_OVERRIDE_BAKEDGI)
               gi.indirect.diffuse = l.DiffuseGI;
               gi.indirect.specular = l.SpecularGI;
              #endif
              // call lighting function to output g-buffer
              outEmission = LightingStandard_Deferred (o, worldViewDir, gi, outGBuffer0, outGBuffer1, outGBuffer2);
              #if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
                outShadowMask = UnityGetRawBakedOcclusions (IN.lmap.xy, d.worldSpacePosition);
              #endif
              #ifndef UNITY_HDR_ON
              outEmission.rgb = exp2(-outEmission.rgb);
              #endif
           #endif

            #if defined(_OVERRIDE_SHADOWMASK) && defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
               float4 mulColor = saturate(dot(l.ShadowMask, unity_OcclusionMaskSelector));
               outShadowMask = mulColor;
            #endif
            
           #if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
               ChainFinalGBufferStandard(l, d, outGBuffer0, outGBuffer1, outGBuffer2, outEmission, outShadowMask);
           #else
               half4 outShadowMask = 0;
               ChainFinalGBufferStandard(l, d, outGBuffer0, outGBuffer1, outGBuffer2, outEmission, outShadowMask);
           #endif

           
         }




         ENDCG

      }


      

	   // ---- forward rendering additive lights pass:
	   Pass
      {
		   Name "FORWARD"
		   Tags { "LightMode" = "ForwardAdd" }
		   ZWrite Off Blend One One
         
         	Tags
    {
        "RenderType" = "Opaque" "Queue" = "Geometry" "PreviewType" = "Sphere"
    }   
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	ColorMask [_ColorMask]
Lighting Off


         CGPROGRAM

            #pragma vertex Vert
   #pragma fragment Frag

         // compile directives
         #pragma target 3.0
         #pragma multi_compile_instancing
         #pragma multi_compile_fog
         #pragma skip_variants INSTANCING_ON
         #pragma multi_compile_fwdadd_fullshadows
         #include "HLSLSupport.cginc"
         #define UNITY_INSTANCED_LOD_FADE
         #define UNITY_INSTANCED_SH
         #define UNITY_INSTANCED_LIGHTMAPSTS
         #include "UnityShaderVariables.cginc"
         #include "UnityShaderUtilities.cginc"


         #include "UnityCG.cginc"
         #include "Lighting.cginc"
         #include "UnityPBSLighting.cginc"
         #include "AutoLight.cginc"

         

         #define _PASSFORWARD 1
         #define _PASSFORWARDADD 1

         
    #pragma shader_feature_local TIMEISCUSTOM_ON
    #pragma shader_feature_local ADDITIVECONFIG_ON
    #pragma shader_feature_local PREMULTIPLYALPHA_ON
    #pragma shader_feature_local PREMULTIPLYCOLOR_ON
    #pragma shader_feature_local SPLITRGBA_ON
    #pragma shader_feature_local SHAPEADD_ON

    #pragma shader_feature_local SHAPE1SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE2SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE3SCREENUV_ON /////////////////Pipeline specific implementation

    #pragma shader_feature_local SHAPEDEBUG_ON
            
    #pragma shader_feature_local SHAPE1CONTRAST_ON
    #pragma shader_feature_local SHAPE1DISTORT_ON
    #pragma shader_feature_local SHAPE1ROTATE_ON
    #pragma shader_feature_local SHAPE1SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE2_ON
    #pragma shader_feature_local SHAPE2CONTRAST_ON
    #pragma shader_feature_local SHAPE2DISTORT_ON
    #pragma shader_feature_local SHAPE2ROTATE_ON
    #pragma shader_feature_local SHAPE2SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE3_ON
    #pragma shader_feature_local SHAPE3CONTRAST_ON
    #pragma shader_feature_local SHAPE3DISTORT_ON
    #pragma shader_feature_local SHAPE3ROTATE_ON
    #pragma shader_feature_local SHAPE3SHAPECOLOR_ON

    #pragma shader_feature_local GLOW_ON
    #pragma shader_feature_local GLOWTEX_ON
    #pragma shader_feature_local DEPTHGLOW_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local MASK_ON
    #pragma shader_feature_local COLORRAMP_ON
    #pragma shader_feature_local COLORRAMPGRAD_ON
    #pragma shader_feature_local COLORGRADING_ON
    #pragma shader_feature_local HSV_ON
    #pragma shader_feature_local POSTERIZE_ON
    #pragma shader_feature_local PIXELATE_ON
    #pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local SHAKEUV_ON
    #pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
    #pragma shader_feature_local TWISTUV_ON
    #pragma shader_feature_local DOODLE_ON
    #pragma shader_feature_local OFFSETSTREAM_ON
    #pragma shader_feature_local TEXTURESCROLL_ON
    #pragma shader_feature_local VERTOFFSET_ON
    #pragma shader_feature_local RIM_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local BACKFACETINT_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local POLARUV_ON
    #pragma shader_feature_local POLARUVDISTORT_ON
    #pragma shader_feature_local SHAPE1MASK_ON
    #pragma shader_feature_local TRAILWIDTH_ON
    #pragma shader_feature_local LIGHTANDSHADOW_ON
    #pragma shader_feature_local SHAPETEXOFFSET_ON
    #pragma shader_feature_local SHAPEWEIGHTS_ON
            
    #pragma shader_feature_local ALPHACUTOFF_ON
    #pragma shader_feature_local ALPHASMOOTHSTEP_ON
    #pragma shader_feature_local FADE_ON
    #pragma shader_feature_local FADEBURN_ON
    #pragma shader_feature_local ALPHAFADE_ON
    #pragma shader_feature_local ALPHAFADEUSESHAPE1_ON
    #pragma shader_feature_local ALPHAFADEUSEREDCHANNEL_ON
    #pragma shader_feature_local ALPHAFADETRANSPARENCYTOO_ON
    #pragma shader_feature_local ALPHAFADEINPUTSTREAM_ON
    #pragma shader_feature_local CAMDISTFADE_ON

	#pragma shader_feature NORMALMAP_ON


   #define _STANDARD 1
// If your looking in here and thinking WTF, yeah, I know. These are taken from the SRPs, to allow us to use the same
// texturing library they use. However, since they are not included in the standard pipeline by default, there is no
// way to include them in and they have to be inlined, since someone could copy this shader onto another machine without
// Better Shaders installed. Unfortunate, but I'd rather do this and have a nice library for texture sampling instead
// of the patchy one Unity provides being inlined/emulated in HDRP/URP. Strangely, PSSL and XBoxOne libraries are not
// included in the standard SRP code, but they are in tons of Unity own projects on the web, so I grabbed them from there.

#if defined(SHADER_API_GAMECORE)

	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName
	#define ASSIGN_SAMPLER(samplerName, samplerValue) samplerName = samplerValue

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define SAMPLE_DEPTH_TEXTURE(textureName, samplerName, coord2)          SAMPLE_TEXTURE2D(textureName, samplerName, coord2).r
	#define SAMPLE_DEPTH_TEXTURE_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod).r

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_XBOXONE)
	
	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_PSSL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.GetLOD(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RW_Texture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RW_Texture2D_Array<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RW_Texture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)



#elif defined(SHADER_API_D3D11)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_METAL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_VULKAN)
// This file assume SHADER_API_VULKAN is defined
	// TODO: This is a straight copy from D3D11.hlsl. Go through all this stuff and adjust where needed.


	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_SWITCH)
	// This file assume SHADER_API_SWITCH is defined

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod) textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)              textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_GLCORE)

	// OpenGL 4.1 SM 5.0 https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 46)
	#define OPENGL4_1_SM5 1
	#else
	#define OPENGL4_1_SM5 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)          TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)            TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)             TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)       TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)           TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)             TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, bias) ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))

	#if OPENGL4_1_SM5
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#endif


	#elif defined(SHADER_API_GLES3)

	// GLES 3.1 + AEP shader feature https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 40)
	#define GLES3_1_AEP 1
	#else
	#define GLES3_1_AEP 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)          TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)            Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)             Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)       Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)           TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)             Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#if GLES3_1_AEP
	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName
	#else
	#define RW_TEXTURE2D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)   ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)
	#endif

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)

	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif

	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)        textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                 textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                              textureName.Load(int4(unCoord3, lod))

	#if GLES3_1_AEP
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherAlpha(samplerName, coord2)
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)
	#endif


#elif defined(SHADER_API_GLES)


	#define uint int

	#define rcp(x) 1.0 / (x)
	#define ddx_fine ddx
	#define ddy_fine ddy
	#define asfloat
	#define asuint(x) asint(x)
	#define f32tof16
	#define f16tof32

	#define ERROR_ON_UNSUPPORTED_FUNCTION(funcName) #error #funcName is not supported on GLES 2.0

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }


	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) #error calculate Level of Detail not supported in GLES2

	// Texture abstraction

	#define TEXTURE2D(textureName)                          sampler2D textureName
	#define TEXTURE2D_ARRAY(textureName)                    samplerCUBE textureName // No support to texture2DArray
	#define TEXTURECUBE(textureName)                        samplerCUBE textureName
	#define TEXTURECUBE_ARRAY(textureName)                  samplerCUBE textureName // No supoport to textureCubeArray and can't emulate with texture2DArray
	#define TEXTURE3D(textureName)                          sampler3D textureName

	#define TEXTURE2D_FLOAT(textureName)                    sampler2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)              TEXTURECUBE_FLOAT(textureName) // No support to texture2DArray
	#define TEXTURECUBE_FLOAT(textureName)                  samplerCUBE_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)            TEXTURECUBE_FLOAT(textureName) // No support to textureCubeArray
	#define TEXTURE3D_FLOAT(textureName)                    sampler3D_float textureName

	#define TEXTURE2D_HALF(textureName)                     sampler2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)               TEXTURECUBE_HALF(textureName) // No support to texture2DArray
	#define TEXTURECUBE_HALF(textureName)                   samplerCUBE_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)             TEXTURECUBE_HALF(textureName) // No support to textureCubeArray
	#define TEXTURE3D_HALF(textureName)                     sampler3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)                   SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW(textureName)             TEXTURECUBE_SHADOW(textureName) // No support to texture array
	#define TEXTURECUBE_SHADOW(textureName)                 SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)           TEXTURECUBE_SHADOW(textureName) // No support to texture array

	#define RW_TEXTURE2D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)           ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)

	#define SAMPLER(samplerName)
	#define SAMPLER_CMP(samplerName)

	#define TEXTURE2D_PARAM(textureName, samplerName)                sampler2D textureName
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)          samplerCUBE textureName
	#define TEXTURECUBE_PARAM(textureName, samplerName)              samplerCUBE textureName
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)        samplerCUBE textureName
	#define TEXTURE3D_PARAM(textureName, samplerName)                sampler3D textureName
	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)         SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)   SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)       SHADOWCUBE_TEXTURE_AND_SAMPLER textureName

	#define TEXTURE2D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)         textureName
	#define TEXTURECUBE_ARGS(textureName, samplerName)             textureName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)       textureName
	#define TEXTURE3D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)        textureName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)  textureName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)      textureName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2) tex2D(textureName, coord2)

	#if (SHADER_TARGET >= 30)
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) tex2Dlod(textureName, float4(coord2, 0, lod))
	#else
	    // No lod support. Very poor approximation with bias.
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, lod)
	#endif

	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                       tex2Dbias(textureName, float4(coord2, 0, bias))
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                   SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                     ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_LOD)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_BIAS)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)    ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_GRAD)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                                texCUBE(textureName, coord3)
	// No lod support. Very poor approximation with bias.
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                       SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                     texCUBEbias(textureName, float4(coord3, bias))
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                   ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)        ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                                  tex3D(textureName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                         ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE3D_LOD)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                           SHADOW2D_SAMPLE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)              ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_SHADOW)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                         SHADOWCUBE_SAMPLE(textureName, samplerName, coord4)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_SHADOW)


	// Not supported. Can't define as error because shader library is calling these functions.
	#define LOAD_TEXTURE2D(textureName, unCoord2)                                               half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                                      half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                             half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                                  half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)                half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                         half4(0, 0, 0, 0)
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                               ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D)
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                                      ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D_LOD)

	// Gather not supported. Fallback to regular texture sampling.
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)

#else
#error unsupported shader api
#endif




// default flow control attributes
#ifndef UNITY_BRANCH
#   define UNITY_BRANCH
#endif
#ifndef UNITY_FLATTEN
#   define UNITY_FLATTEN
#endif
#ifndef UNITY_UNROLL
#   define UNITY_UNROLL
#endif
#ifndef UNITY_UNROLLX
#   define UNITY_UNROLLX(_x)
#endif
#ifndef UNITY_LOOP
#   define UNITY_LOOP
#endif





         // data across stages, stripped like the above.
         struct VertexToPixel
         {
            UNITY_POSITION(pos);       // must be named pos because Unity does stupid macro stuff
            float3 worldPos : TEXCOORD0;
            float3 worldNormal : TEXCOORD1;
            float4 worldTangent : TEXCOORD2;
             float4 texcoord0 : TEXCOORD3;
            // float4 texcoord1 : TEXCOORD4;
            // float4 texcoord2 : TEXCOORD5;

            // #if %TEXCOORD3REQUIREKEY%
            // float4 texcoord3 : TEXCOORD6;
            // #endif
            
            // #if %SCREENPOSREQUIREKEY%
             float4 screenPos : TEXCOORD7;
            // #endif

            UNITY_LIGHTING_COORDS(8,9)
            UNITY_FOG_COORDS(10)

            
            // #if %VERTEXCOLORREQUIREKEY%
             float4 vertexColor : COLOR;
            // #endif

            // #if %EXTRAV2F0REQUIREKEY%
             float4 extraV2F0 : TEXCOORD11;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             float4 extraV2F1 : TEXCOORD12;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             float4 extraV2F2 : TEXCOORD13;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             float4 extraV2F3 : TEXCOORD14;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // float4 extraV2F4 : TEXCOORD15;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // float4 extraV2F5 : TEXCOORD16;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // float4 extraV2F6 : TEXCOORD17;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // float4 extraV2F7 : TEXCOORD18;
            // #endif

            UNITY_VERTEX_INPUT_INSTANCE_ID
            UNITY_VERTEX_OUTPUT_STEREO

         };

         
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
                float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef UNITY_MATRIX_I_M

               #define UNITY_MATRIX_I_M   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)UNITY_MATRIX_M, transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)UNITY_MATRIX_V, norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
         
	half4 _Color;
	half _Alpha;
	half _AlphaCutoffValue;

	half _TimingSeed;

	#if TIMEISCUSTOM_ON
		float4 globalCustomTime;
	#endif

	half4 _MainTex_ST, _ShapeColor;
	half _ShapeXSpeed, _ShapeYSpeed, _ShapeColorWeight, _ShapeAlphaWeight;
	
	#if SHAPE1CONTRAST_ON
		half _ShapeContrast, _ShapeBrightness;
	#endif
	
	#if SHAPE1DISTORT_ON
		half4 _ShapeDistortTex_ST;
		half _ShapeDistortAmount, _ShapeDistortXSpeed, _ShapeDistortYSpeed;
	#endif
	
	#if SHAPE1ROTATE_ON
		half _ShapeRotationOffset, _ShapeRotationSpeed;
	#endif
	
	#if OFFSETSTREAM_ON
		half _OffsetSh1;
	#endif
	
	#if SHAPEWEIGHTS_ON
		half _Sh1BlendOffset;
	#endif

	#if SHAPE2_ON
		half4 _Shape2Tex_ST, _Shape2Color;
		half _Shape2XSpeed, _Shape2YSpeed, _Shape2ColorWeight, _Shape2AlphaWeight;
		#if SHAPE2CONTRAST_ON
			half _Shape2Contrast, _Shape2Brightness;
		#endif
		#if SHAPE2DISTORT_ON
			half4 _Shape2DistortTex_ST;
			half _Shape2DistortAmount, _Shape2DistortXSpeed, _Shape2DistortYSpeed;
		#endif
		#if SHAPE2ROTATE_ON
			half _Shape2RotationOffset, _Shape2RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh2;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh2BlendOffset;
		#endif
	#endif

	#if SHAPE3_ON
		half4 _Shape3Tex_ST, _Shape3Color;
		half _Shape3XSpeed, _Shape3YSpeed, _Shape3ColorWeight, _Shape3AlphaWeight;
		#if SHAPE3CONTRAST_ON
			half _Shape3Contrast, _Shape3Brightness;
		#endif
		#if SHAPE3DISTORT_ON
			half4 _Shape3DistortTex_ST;
			half _Shape3DistortAmount, _Shape3DistortXSpeed, _Shape3DistortYSpeed;
		#endif
		#if SHAPE3ROTATE_ON
			half _Shape3RotationOffset, _Shape3RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh3;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh3BlendOffset;
		#endif
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
		#if GLOWTEX_ON
			half4 _GlowTex_ST;
		#endif
	#endif

	#if MASK_ON
		half4 _MaskTex_ST;
		half _MaskPow;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if ALPHASMOOTHSTEP_ON
		half _AlphaStepMin, _AlphaStepMax;
	#endif

	#if ALPHAFADE_ON
		half _AlphaFadeAmount, _AlphaFadeSmooth, _AlphaFadePow;
	#endif

	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if WAVEUV_ON
		half _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if ROUNDWAVEUV_ON || PIXELATE_ON
		half4 _MainTex_TexelSize;
	#endif

	#if VERTOFFSET_ON
		half4 _VertOffsetTex_ST;
		half _VertOffsetAmount, _VertOffsetPower, _VertOffsetTexXSpeed, _VertOffsetTexYSpeed;
	#endif

	#if FADE_ON
		half4 _FadeTex_ST;
		half _FadeAmount, _FadeTransition, _FadePower, _FadeScrollXSpeed, _FadeScrollYSpeed;
		#if FADEBURN_ON
			half4 _FadeBurnColor, _FadeBurnTex_ST;
			half _FadeBurnWidth, _FadeBurnGlow;
		#endif
	#endif

	#if COLORGRADING_ON
		half3 _ColorGradingLight, _ColorGradingMiddle, _ColorGradingDark;
		half _ColorGradingMidPoint;
	#endif
            
	#if CAMDISTFADE_ON
		half _CamDistFadeStepMin, _CamDistFadeStepMax, _CamDistProximityFade;
	#endif

	#if RIM_ON
		half _RimBias, _RimScale, _RimPower, _RimIntensity, _RimAddAmount, _RimErodesAlpha;
		half4 _RimColor;
	#endif

	#if BACKFACETINT_ON
		half4 _BackFaceTint, _FrontFaceTint;
	#endif

	#if SHAPEDEBUG_ON
		half _DebugShape;
	#endif

	#if SHAPE1MASK_ON
		half4 _Shape1MaskTex_ST;
		half _Shape1MaskPow;
	#endif

	#if TRAILWIDTH_ON
		half _TrailWidthPower;
	#endif

	#if LIGHTANDSHADOW_ON
		half3 _All1VfxLightDir;
		half _ShadowAmount, _ShadowStepMin, _ShadowStepMax, _LightAmount;
		half4 _LightColor;
	#endif

	#if SHAPETEXOFFSET_ON
		half _RandomSh1Mult, _RandomSh2Mult, _RandomSh3Mult;
	#endif

	#if DEPTHGLOW_ON
		half _DepthGlowDist, _DepthGlowPow, _DepthGlow, _DepthGlowGlobal;
		half4 _DepthGlowColor;
    #endif

	#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
        half _ScreenUvShDistScale,_ScreenUvSh2DistScale, _ScreenUvSh3DistScale;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif




         

         

         

	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if SHAPE1DISTORT_ON
		TEXTURE2D(_ShapeDistortTex);
		SAMPLER(sampler_ShapeDistortTex);
	#endif

	#if SHAPE2_ON
		TEXTURE2D(_Shape2Tex);
		SAMPLER(sampler_Shape2Tex);
		#if SHAPE2DISTORT_ON
			TEXTURE2D(_Shape2DistortTex);
			SAMPLER(sampler_Shape2DistortTex);
		#endif
	#endif

	#if SHAPE3_ON
		TEXTURE2D(_Shape3Tex);
		SAMPLER(sampler_Shape3Tex);
		#if SHAPE3DISTORT_ON
			TEXTURE2D(_Shape3DistortTex);
			SAMPLER(sampler_Shape3DistortTex);
		#endif
	#endif

	#if GLOW_ON
		#if GLOWTEX_ON
			TEXTURE2D(_GlowTex);
			SAMPLER(sampler_GlowTex);
		#endif
	#endif

	#if MASK_ON
		TEXTURE2D(_MaskTex);
		SAMPLER(sampler_MaskTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		SAMPLER(sampler_ColorRampTex);
	#endif

	#if COLORRAMPGRAD_ON
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif
	
	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);
	#endif

	#if VERTOFFSET_ON
		TEXTURE2D(_VertOffsetTex);
		SAMPLER(sampler_VertOffsetTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);
		#if FADEBURN_ON
			TEXTURE2D(_FadeBurnTex);
			SAMPLER(sampler_FadeBurnTex);
		#endif
	#endif

	#if SHAPE1MASK_ON
		TEXTURE2D(_Shape1MaskTex);
		SAMPLER(sampler_Shape1MaskTex);
	#endif

	#if TRAILWIDTH_ON
		TEXTURE2D(_TrailWidthGradient);
		SAMPLER(sampler_TrailWidthGradient);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif

	half4 SampleTextureWithScroll(in Texture2D _tex, in SamplerState _sampler, in float2 uv, in half scrollXSpeed, in half scrollYSpeed, in float time)
	{
		half2 _uv = uv;
		_uv.x += (time * scrollXSpeed) % 1;
		_uv.y += (time * scrollYSpeed) % 1;
		return SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
	}

	half EaseOutQuint(half x) 
	{
		return 1 - pow(1 - x, 5);
	}

	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax)
	{
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}

	float2 RotateUvs(float2 uv, half rotation, half4 scaleAndTranslate)
	{
		half2 center = half2(0.5 * scaleAndTranslate.x + scaleAndTranslate.z, 0.5 * scaleAndTranslate.y + scaleAndTranslate.w);
		half cosAngle = cos(rotation);
		half sinAngle = sin(rotation);
		uv -= center;
		uv = mul(half2x2(cosAngle, -sinAngle, sinAngle, cosAngle), uv);
		uv += center;
		return uv; 
	}

	half4 GetDebugColor(float4 resColor, half4 shape1, half4 shape2, half4 shape3)
	{
		half4 res = resColor;

		//MAKE SURE THE FOLLOWING CODE BLOCK IS UNCOMMENTED-------------------------------------------
        #if SHAPEDEBUG_ON
			if(_DebugShape < 1.5) return shape1;
			#if SHAPE2_ON
				else if (_DebugShape < 2.5) return shape2;
			#endif
			#if SHAPE3_ON
				else return shape3;
			#endif
        #endif

		return res;
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//uvDistTex --> extraV2F0
		//uvSh1DistTex --> extraV2F1
		//uvSh2DistTex --> extraV2F2
		//uvSh3DistTex --> extraV2F3
 
		#if VERTOFFSET_ON
			#if TIMEISCUSTOM_ON
				const half time = v.texcoord0.z + globalCustomTime.y;
			#else
				const half time = v.texcoord0.z + _Time.y;
			#endif
				half4 offsetUv = half4(TRANSFORM_TEX(v.texcoord0.xy, _VertOffsetTex), 0, 0);
            	offsetUv.x += (time * _VertOffsetTexXSpeed) % 1;
				offsetUv.y += (time * _VertOffsetTexYSpeed) % 1;
                v.vertex.xyz += v.normal * _VertOffsetAmount * pow(SAMPLE_TEXTURE2D_LOD(_VertOffsetTex, sampler_VertOffsetTex, offsetUv, 0).r, _VertOffsetPower); 
		#endif

		#if DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F0.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif

		#if SHAPE1DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F1.xy = TRANSFORM_TEX(v.texcoord0.xy, _ShapeDistortTex);
        #endif

		#if SHAPE2_ON
			#if SHAPE2DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F2.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape2DistortTex);;
			#endif
		#endif

		#if SHAPE3_ON
			#if SHAPE3DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F3.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape3DistortTex);
			#endif
        #endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		//i.uvSeed -> d.texcoord0.xy

		float seed = d.texcoord0.z + _TimingSeed;
		#if TIMEISCUSTOM_ON
			const float4 shaderTime = globalCustomTime;
		#else
			const float4 shaderTime = _Time;
		#endif
		float time = shaderTime.y + seed;

		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 originalUvs = d.texcoord0.xy;
        #endif

		#if PIXELATE_ON
			half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif

		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif

		#if TWISTUV_ON
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		#if DOODLE_ON
			half2 uvCopy = d.texcoord0.xy;
			_HandDrawnSpeed = (floor((shaderTime.x + seed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		#if SHAKEUV_ON
			half xShake = sin((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		#if WAVEUV_ON
			half2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
			half angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((time * _WaveSpeed) % 360.0);
			d.texcoord0.xy = d.texcoord0.xy + normalize(uvWave) * sin(angWave) * (_WaveStrength / 1000.0);
		#endif

		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - d.texcoord0.x);
			half yWave = ((0.5 * _MainTex_ST.y) - d.texcoord0.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
            d.texcoord0.xy += (sin((ripple + time * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif

		#if POLARUV_ON
            half2 prePolarUvs = d.texcoord0.xy;
            d.texcoord0.xy = d.texcoord0.xy - half2(0.5, 0.5);
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (1.0 * 6.28318530718), length(d.texcoord0.xy) * 2.0);
            d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		#if DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 distortUvs = TRANSFORM_TEX(d.texcoord0.xy, _DistortTex);
			#else
				half2 distortUvs = d.extraV2F0.xy;
			#endif
			distortUvs.x += ((shaderTime.x + seed) * _DistortTexXSpeed) % 1;
			distortUvs.y += ((shaderTime.x + seed) * _DistortTexYSpeed) % 1;
			#if ATLAS_ON
				d.extraV2F0.xy = half2((d.extraV2F0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.extraV2F0.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, distortUvs).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif

		#if TEXTURESCROLL_ON
			d.texcoord0.x += (time * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += (time * _TextureScrollYSpeed) % 1;
		#endif

		#if TRAILWIDTH_ON
            half width = pow(SAMPLE_TEXTURE2D(_TrailWidthGradient, sampler_TrailWidthGradient, d.texcoord0).r, _TrailWidthPower);
            d.texcoord0.y = (d.texcoord0.y * 2 - 1) / width * 0.5 + 0.5;
            clip(d.texcoord0.y);
            clip(1 - d.texcoord0.y);
        #endif

		float2 shape1Uv = d.texcoord0.xy;
        #if SHAPE2_ON
			float2 shape2Uv = shape1Uv;
        #endif
        #if SHAPE3_ON
			float2 shape3Uv = shape1Uv;
        #endif

        #if CAMDISTFADE_ON || SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half camDistance = distance(d.worldSpacePosition, _WorldSpaceCameraPos);
		#endif
		 
		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 uvOffsetPostFx = d.texcoord0.xy - originalUvs;
			d.texcoord0.xy = d.screenPos.xy / d.screenPos.w;
			d.texcoord0.x = d.texcoord0.x * (_ScreenParams.x / _ScreenParams.y);
			d.texcoord0.x -= 0.5;
			d.texcoord0.xy -= uvOffsetPostFx;
			originalUvs += uvOffsetPostFx;
			half distanceZoom = camDistance * 0.1;
			half2 scaleWithDistUvs = d.texcoord0.xy * distanceZoom + ((-distanceZoom * 0.5) + 0.5);
			#if SHAPE1SCREENUV_ON
				shape1Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvShDistScale);
			#else
				shape1Uv = originalUvs;
			#endif
			#if SHAPE2SCREENUV_ON && SHAPE2_ON
				shape2Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh2DistScale);
			#else
				#if SHAPE2_ON
					shape2Uv = originalUvs;
				#endif
			#endif
			#if SHAPE3SCREENUV_ON && SHAPE3_ON
				shape3Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh3DistScale);
			#else
				#if SHAPE3_ON
					shape3Uv = originalUvs;
				#endif
			#endif
		#endif

		shape1Uv = TRANSFORM_TEX(shape1Uv, _MainTex);
		#if OFFSETSTREAM_ON
			shape1Uv.x += i.offsetCustomData.x * _OffsetSh1;
			shape1Uv.y += i.offsetCustomData.y * _OffsetSh1;
		#endif
        #if SHAPETEXOFFSET_ON
			shape1Uv += seed * _RandomSh1Mult;
		#endif
        
		#if SHAPE1DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 sh1DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _ShapeDistortTex);
			#else
				half2 sh1DistortUvs = d.extraV2F1.xy;
			#endif
			
			sh1DistortUvs.x += ((time + seed) * _ShapeDistortXSpeed) % 1;
			sh1DistortUvs.y += ((time + seed) * _ShapeDistortYSpeed) % 1;
			half distortAmount = (SAMPLE_TEXTURE2D(_ShapeDistortTex, sampler_ShapeDistortTex, sh1DistortUvs).r - 0.5) * 0.2 * _ShapeDistortAmount;
			shape1Uv.x += distortAmount;
			shape1Uv.y += distortAmount;
		#endif
		#if SHAPE1ROTATE_ON
			shape1Uv = RotateUvs(shape1Uv, _ShapeRotationOffset + ((_ShapeRotationSpeed * time) % 6.28318530718), _MainTex_ST);
		#endif

		half4 shape1 = SampleTextureWithScroll(_MainTex, sampler_MainTex, shape1Uv, _ShapeXSpeed, _ShapeYSpeed, time);
		#if SHAPE1SHAPECOLOR_ON
			shape1.a = shape1.r;
			shape1.rgb = _ShapeColor.rgb;
		#else
			shape1 *= _ShapeColor;
		#endif
		#if SHAPE1CONTRAST_ON
			#if SHAPE1SHAPECOLOR_ON
				shape1.a = saturate((shape1.a - 0.5) * _ShapeContrast + 0.5 + _ShapeBrightness);
			#else
				shape1.rgb = max(0, (shape1.rgb - half3(0.5, 0.5, 0.5)) * _ShapeContrast + half3(0.5, 0.5, 0.5) + _ShapeBrightness);
			#endif
        #endif

		half4 shape2 = 1.0;
		#if SHAPE2_ON
			shape2Uv = TRANSFORM_TEX(shape2Uv, _Shape2Tex);
			#if OFFSETSTREAM_ON
				shape2Uv.x += i.offsetCustomData.x * _OffsetSh2;
				shape2Uv.y += i.offsetCustomData.y * _OffsetSh2;
			#endif
			#if SHAPETEXOFFSET_ON
				shape2Uv += seed * _RandomSh2Mult;
			#endif
			#if SHAPE2DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh2DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape2DistortTex);
				#else
					half2 sh2DistortUvs = d.extraV2F2.xy;
				#endif
				sh2DistortUvs.x += ((time + seed) * _Shape2DistortXSpeed) % 1;
				sh2DistortUvs.y += ((time + seed) * _Shape2DistortYSpeed) % 1;
				half distortAmnt2 = (SAMPLE_TEXTURE2D(_Shape2DistortTex, sampler_Shape2DistortTex, sh2DistortUvs).r - 0.5) * 0.2 * _Shape2DistortAmount;
				shape2Uv.x += distortAmnt2;
				shape2Uv.y += distortAmnt2;
			#endif
			#if SHAPE2ROTATE_ON
				shape2Uv = RotateUvs(shape2Uv, _Shape2RotationOffset + ((_Shape2RotationSpeed * time) % 6.28318530718), _Shape2Tex_ST);
			#endif
			
			shape2 = SampleTextureWithScroll(_Shape2Tex, sampler_Shape2Tex, shape2Uv, _Shape2XSpeed, _Shape2YSpeed, time); 
			#if SHAPE2SHAPECOLOR_ON
				shape2.a = shape2.r;
				shape2.rgb = _Shape2Color.rgb;
			#else
				shape2 *= _Shape2Color;
			#endif
			#if SHAPE2CONTRAST_ON
				#if SHAPE2SHAPECOLOR_ON
					shape2.a = max(0, (shape2.a - 0.5) * _Shape2Contrast + 0.5 + _Shape2Brightness);
				#else
					shape2.rgb = max(0, (shape2.rgb - half3(0.5, 0.5, 0.5)) * _Shape2Contrast + half3(0.5, 0.5, 0.5) + _Shape2Brightness);
				#endif
			#endif
        #endif

		half4 shape3 = 1.0;
		 #if SHAPE3_ON
            shape3Uv = TRANSFORM_TEX(shape3Uv, _Shape3Tex);
			
            #if OFFSETSTREAM_ON
				shape3Uv.x += i.offsetCustomData.x * _OffsetSh3;
				shape3Uv.y += i.offsetCustomData.y * _OffsetSh3;
			#endif
            #if SHAPETEXOFFSET_ON
				shape3Uv += seed * _RandomSh3Mult;
			#endif
            #if SHAPE3DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh3DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape3DistortTex);
				#else
					half2 sh3DistortUvs = d.extraV2F3.xy;
				#endif
				sh3DistortUvs.x += ((time + seed) * _Shape3DistortXSpeed) % 1;
				sh3DistortUvs.y += ((time + seed) * _Shape3DistortYSpeed) % 1;
				half distortAmnt3 = (SAMPLE_TEXTURE2D(_Shape3DistortTex, sampler_Shape3DistortTex, sh3DistortUvs).r - 0.5) * 0.3 * _Shape3DistortAmount;
				shape3Uv.x += distortAmnt3;
				shape3Uv.y += distortAmnt3;
            #endif
            #if SHAPE3ROTATE_ON
				shape3Uv = RotateUvs(shape3Uv, _Shape3RotationOffset + ((_Shape3RotationSpeed * time) % 6.28318530718), _Shape3Tex_ST);
            #endif
				shape3 = SampleTextureWithScroll(_Shape3Tex, sampler_Shape3Tex, shape3Uv, _Shape3XSpeed, _Shape3YSpeed, time);
            #if SHAPE3SHAPECOLOR_ON
				shape3.a = shape3.r;
				shape3.rgb = _Shape3Color.rgb;
            #else
				shape3 *= _Shape3Color;
            #endif
            #if SHAPE3CONTRAST_ON
				#if SHAPE3SHAPECOLOR_ON
					shape3.a = max(0, (shape3.a - 0.5) * _Shape3Contrast + 0.5 + _Shape3Brightness);
				#else
					shape3.rgb = max(0, (shape3.rgb - half3(0.5, 0.5, 0.5)) * _Shape3Contrast + half3(0.5, 0.5, 0.5) + _Shape3Brightness);
				#endif
            #endif
		#endif

		half4 col = shape1;
		//Mix all shapes pre: change weights if custom vertex effect active
        #if SHAPEWEIGHTS_ON
			half shapeWeightOffset;
			#if SHAPE2_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh1BlendOffset;
				_ShapeColorWeight = max(0, _ShapeColorWeight + shapeWeightOffset);
				_ShapeAlphaWeight = max(0, _ShapeAlphaWeight + shapeWeightOffset);
				shapeWeightOffset = i.offsetCustomData.z * _Sh2BlendOffset;
				_Shape2ColorWeight = max(0, _Shape2ColorWeight + shapeWeightOffset);
				_Shape2AlphaWeight = max(0, _Shape2AlphaWeight + shapeWeightOffset);
			#endif
			#if SHAPE3_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh3BlendOffset;
				_Shape3ColorWeight = max(0, _Shape3ColorWeight + shapeWeightOffset);
				_Shape3AlphaWeight = max(0, _Shape3AlphaWeight + shapeWeightOffset);
			#endif
		#endif

		//Mix all shapes
        #if SHAPE2_ON
			#if !SPLITRGBA_ON
				_ShapeAlphaWeight = _ShapeColorWeight;
				_Shape2AlphaWeight = _Shape2ColorWeight;
			#endif
			#if SHAPE3_ON //Shape3 On
				#if !SPLITRGBA_ON
					_Shape3AlphaWeight = _Shape3ColorWeight;
				#endif
			#if SHAPEADD_ON
				col.rgb = ((shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight)) + (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(max(shape3.a * _Shape3AlphaWeight, max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight)));
			#else
				col.rgb = ((shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight)) * (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight)) * (shape3.a * _Shape3AlphaWeight));
			#endif
			#else //Shape3 Off
				#if SHAPEADD_ON
					col.rgb = (shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate(max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight));
				#else
					col.rgb = (shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight));
				#endif
			#endif
        #endif

		#if SHAPE1MASK_ON
            col = lerp(col, shape1, pow(SAMPLE_TEXTURE2D(_Shape1MaskTex, sampler_Shape1MaskTex, TRANSFORM_TEX(i.uvSeed.xy, _Shape1MaskTex)).r, _Shape1MaskPow));
        #endif
		
		#if PREMULTIPLYCOLOR_ON
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
			col.a = min(luminance, col.a);
        #endif

		col.rgb *= _Color.rgb * d.vertexColor.rgb;
		#if PREMULTIPLYALPHA_ON
			col.rgb *= col.a;
        #endif

        #if !PREMULTIPLYCOLOR_ON && (COLORRAMP_ON || ALPHAFADE_ON || COLORGRADING_ON || FADE_ON || (ADDITIVECONFIG_ON && (GLOW_ON || DEPTHGLOW_ON)))
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
        #endif

		#if (FADE_ON || ALPHAFADE_ON) && ALPHAFADEINPUTSTREAM_ON
			col.a *= d.vertexColor.a;
			d.vertexColor.a = d.texcoord0.w;
        #endif

		#if FADE_ON
			half preFadeAlpha = col.a;
			_FadeAmount = saturate(_FadeAmount + (1 - d.vertexColor.a));
			_FadeTransition = max(0.01, _FadeTransition * EaseOutQuint(saturate(_FadeAmount)));
			half2 fadeUv;
			fadeUv = d.texcoord0.xy + seed;
			fadeUv.x += (time * _FadeScrollXSpeed) % 1;
			fadeUv.y += (time * _FadeScrollYSpeed) % 1;
			half2 tiledUvFade1 = TRANSFORM_TEX(fadeUv, _FadeTex);
			#if ADDITIVECONFIG_ON && !PREMULTIPLYCOLOR_ON
				preFadeAlpha *= luminance;
			#endif
			_FadeAmount = saturate(pow(_FadeAmount, _FadePower));
			#if FADEBURN_ON
				half2 tiledUvFade2 = TRANSFORM_TEX(fadeUv, _FadeBurnTex);
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				half fadeNaturalEdge = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fadeNaturalEdge;
				half fadeBurn = saturate(smoothstep(0.0 , _FadeTransition + _FadeBurnWidth, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				fadeBurn = fadeNaturalEdge - fadeBurn;
				_FadeBurnColor.rgb *= _FadeBurnGlow;
				col.rgb += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2).rgb * _FadeBurnColor.rgb * preFadeAlpha;
			#else
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				float fade = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fade;
			#endif
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _FadeAmount;
			#endif
		#endif

		#if ALPHAFADE_ON
			half alphaFadeLuminance;
			_AlphaFadeAmount = saturate(_AlphaFadeAmount + (1 - d.vertexColor.a));
			_AlphaFadeAmount = saturate(pow(_AlphaFadeAmount, _AlphaFadePow));
			_AlphaFadeSmooth = max(0.01, _AlphaFadeSmooth * EaseOutQuint(saturate(_AlphaFadeAmount)));
			#if ALPHAFADEUSESHAPE1_ON
				alphaFadeLuminance = shape1.r;
			#else
				alphaFadeLuminance = luminance;
			#endif
				alphaFadeLuminance = saturate(alphaFadeLuminance - 0.001);
			#if ALPHAFADEUSEREDCHANNEL_ON
				col.a *= col.r;
			#endif
				col.a = saturate(col.a);
				float alphaFade = saturate(smoothstep(0.0 , _AlphaFadeSmooth, RemapFloat(1.0 - _AlphaFadeAmount, 0.0, 1.0, -1.0, 1.0) + alphaFadeLuminance));
				col.a *= alphaFade;
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _AlphaFadeAmount;
			#endif
        #endif

		#if BACKFACETINT_ON
			col.rgb = lerp(col.rgb * _BackFaceTint, col.rgb * _FrontFaceTint, step(0, dot(d.worldSpaceNormal, d.worldSpaceViewDir)));
        #endif

		//#if LIGHTANDSHADOW_ON
			//half NdL = saturate(dot(d.worldSpaceNormal, -_All1VfxLightDir));
			//col.rgb += _LightColor * _LightAmount * NdL;
			//NdL = max(_ShadowAmount, NdL);
            //NdL = smoothstep(_ShadowStepMin, _ShadowStepMax, NdL);
            //col.rgb *= NdL;
		//#endif

		#if COLORGRADING_ON
			col.rgb *= lerp(lerp(_ColorGradingDark, _ColorGradingMiddle, luminance/_ColorGradingMidPoint),
			lerp(_ColorGradingMiddle, _ColorGradingLight, (luminance - _ColorGradingMidPoint)/(1.0 - _ColorGradingMidPoint)), step(_ColorGradingMidPoint, luminance));
        #endif

		#if COLORRAMP_ON
			half colorRampLuminance = saturate(luminance + _ColorRampLuminosity);
			#if COLORRAMPGRAD_ON
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(colorRampLuminance, 0));
			#else
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(colorRampLuminance, 0));
			#endif
			col.rgb = lerp(col.rgb, colorRampRes.rgb, _ColorRampBlend);
			col.a = lerp(col.a, saturate(col.a * colorRampRes.a), _ColorRampBlend);
        #endif

		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = floor(col.rgb / (1.0 / _PosterizeNumColors)) * (1.0 / _PosterizeNumColors);
		#endif

		#if DEPTHGLOW_ON
			half sceneDepthDiff = GetLinearEyeDepth(d.screenUV) - d.screenPos.w;
        #endif

		#if RIM_ON
			half NdV = 1 - abs(dot(d.worldSpaceNormal, d.worldSpaceViewDir));
			half rimFactor = saturate(_RimBias + _RimScale * pow(NdV, _RimPower));
			half4 rimCol = _RimColor * rimFactor;
			rimCol.rgb *= _RimIntensity;
			col.rgb = lerp(col.rgb * (rimCol.rgb + half3(1,1,1)), col.rgb + rimCol.rgb, _RimAddAmount);
			col.a = saturate(col.a * (1 - rimFactor * _RimErodesAlpha));
        #endif

		#if DEPTHGLOW_ON
			half depthGlowMask = saturate(_DepthGlowDist * pow((1 - sceneDepthDiff), _DepthGlowPow));
			col.rgb = lerp(col.rgb, _DepthGlowGlobal * col.rgb, depthGlowMask);
			half depthGlowMult = 1;
			#if ADDITIVECONFIG_ON
				depthGlowMult = luminance;
			#endif
			col.rgb += _DepthGlowColor.rgb * _DepthGlow * depthGlowMask * col.a * depthGlowMult;
        #endif

		#if GLOW_ON
			half glowMask = 1;
			#if GLOWTEX_ON
				glowMask = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, TRANSFORM_TEX(d.texcoord0.xy, _GlowTex));
			#endif
				col.rgb *= _GlowGlobal * glowMask;
				half glowMult = 1;
			#if ADDITIVECONFIG_ON
				glowMult = luminance;
			#endif
			
			col.rgb += _GlowColor.rgb * _Glow * glowMask * col.a * glowMult;
        #endif

		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
				+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
				+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
				+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
				+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif

		#if CAMDISTFADE_ON
			col.a *= 1 - saturate(smoothstep(_CamDistFadeStepMin, _CamDistFadeStepMax, camDistance));
			col.a *= smoothstep(0.0, _CamDistProximityFade, camDistance);
		#endif

		#if MASK_ON
            half2 maskUv = d.texcoord0.xy;
            #if POLARUV_ON
				maskUv = prePolarUvs;
			#endif
            half4 maskSample = SAMPLE_TEXTURE2D(_MaskTex, sampler_MaskTex, TRANSFORM_TEX(maskUv, _MaskTex));
			half mask = pow(min(maskSample.r, maskSample.a), _MaskPow);
			col.a *= mask;
        #endif

		#if ALPHASMOOTHSTEP_ON
			col.a = smoothstep(_AlphaStepMin, _AlphaStepMax, col.a);
        #endif

		half4 debugColor = col;
		#if SHAPEDEBUG_ON
			debugColor = GetDebugColor(col, shape1, shape2, shape3);
		#endif

		clip(debugColor.a - _AlphaCutoffValue - 0.01);

		//#if FOG_ON
			//UNITY_APPLY_FOG(i.fogCoord, col);
        //#endif
		
		//Don't use a starting i.color.a lower than 1 unless using vertex stream dissolve when using a FADE effect
        #if !FADE_ON && !ALPHAFADE_ON
			col.a *= _Alpha * d.vertexColor.a;
        #endif
        #if FADE_ON || ALPHAFADE_ON
			col.a *= _Alpha;
        #endif
        #if ADDITIVECONFIG_ON
			col.rgb *= col.a;
        #endif

		
		#if SHAPEDEBUG_ON
		o.Albedo = debugColor.rgb; 
		o.Alpha = debugColor.a;
		#else
		o.Albedo = col.rgb; 
		o.Alpha = col.a;
		#endif
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                  v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                  v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                  v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                  v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
                d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
                v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif

         
         


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
            // d.texcoord1 = i.texcoord1;
            // d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
             d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
           UNITY_SETUP_INSTANCE_ID(v);
           VertexToPixel o;
           UNITY_INITIALIZE_OUTPUT(VertexToPixel,o);
           UNITY_TRANSFER_INSTANCE_ID(v,o);
           UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

           o.pos = UnityObjectToClipPos(v.vertex);
            o.texcoord0 = v.texcoord0;
           // o.texcoord1 = v.texcoord1;
           // o.texcoord2 = v.texcoord2;

           // #if %TEXCOORD3REQUIREKEY%
           // o.texcoord3 = v.texcoord3;
           // #endif

           // #if %VERTEXCOLORREQUIREKEY%
            o.vertexColor = v.vertexColor;
           // #endif

           // #if %SCREENPOSREQUIREKEY%
            o.screenPos = ComputeScreenPos(o.pos);
           // #endif

           o.worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
           o.worldNormal = UnityObjectToWorldNormal(v.normal);
           o.worldTangent = float4(UnityObjectToWorldDir(v.tangent.xyz), v.tangent.w);


           UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy); // pass shadow and, possibly, light cookie coordinates to pixel shader
           UNITY_TRANSFER_FOG(o,o.pos); // pass fog coordinates to pixel shader

           return o;
         }

         

         // fragment shader
         fixed4 Frag (VertexToPixel IN
         #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
         #endif
         #if NEED_FACING
            , bool facing : SV_IsFrontFace
         #endif
         ) : SV_Target
         {
           UNITY_SETUP_INSTANCE_ID(IN);
           // prepare and unpack data

           #ifdef FOG_COMBINED_WITH_TSPACE
             UNITY_EXTRACT_FOG_FROM_TSPACE(IN);
           #elif defined (FOG_COMBINED_WITH_WORLD_POS)
             UNITY_EXTRACT_FOG_FROM_WORLD_POS(IN);
           #else
             UNITY_EXTRACT_FOG(IN);
           #endif



           ShaderData d = CreateShaderData(IN
              #if NEED_FACING
                 , facing
              #endif
           );
           Surface l = (Surface)0;


           #ifdef _DEPTHOFFSET_ON
              l.outputDepth = outputDepth;
           #endif

           l.Albedo = half3(0.5, 0.5, 0.5);
           l.Normal = float3(0,0,1);
           l.Occlusion = 1;
           l.Alpha = 1;

           ChainSurfaceFunction(l, d);

           #ifdef _DEPTHOFFSET_ON
              outputDepth = l.outputDepth;
           #endif


           #ifndef USING_DIRECTIONAL_LIGHT
             fixed3 lightDir = normalize(UnityWorldSpaceLightDir(d.worldSpacePosition));
           #else
             fixed3 lightDir = _WorldSpaceLightPos0.xyz;
           #endif
           float3 worldViewDir = normalize(UnityWorldSpaceViewDir(d.worldSpacePosition));

           #if _USESPECULAR || _USESPECULARWORKFLOW || _SPECULARFROMMETALLIC
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
              #else
                 SurfaceOutputStandardSpecular o;
              #endif
              o.Specular = l.Specular;
              o.Occlusion = l.Occlusion;
              o.Smoothness = l.Smoothness;
           #elif _BDRFLAMBERT || _BDRF3 || _SIMPLELIT
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutput o = (SurfaceOutput)0;
              #else
                 SurfaceOutput o;
              #endif

              o.Specular = l.SpecularPower;
              o.Gloss = l.Smoothness;
              _SpecColor.rgb = l.Specular; // fucking hell Unity, wtf..
           #else
              #ifdef UNITY_COMPILER_HLSL
                 SurfaceOutputStandard o = (SurfaceOutputStandard)0;
              #else
                 SurfaceOutputStandard o;
              #endif
              o.Smoothness = l.Smoothness;
              o.Metallic = l.Metallic;
              o.Occlusion = l.Occlusion;
           #endif

   
           o.Albedo = l.Albedo;
           o.Emission = l.Emission;
           o.Alpha = l.Alpha;

           #if _WORLDSPACENORMAL
              o.Normal = l.Normal;
           #else
              o.Normal = normalize(TangentToWorldSpace(d, l.Normal));
           #endif



           UNITY_LIGHT_ATTENUATION(atten, IN, d.worldSpacePosition)
           half4 c = 0;

           // Setup lighting environment
           UnityGI gi;
           UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
           gi.indirect.diffuse = 0;
           gi.indirect.specular = 0;
           gi.light.color = _LightColor0.rgb;
           gi.light.dir = lightDir;
           gi.light.color *= atten;

           #if defined(_OVERRIDE_SHADOWMASK)
               float4 mulColor = saturate(dot(l.ShadowMask, unity_OcclusionMaskSelector));
               gi.light.color *= mulColor;
            #endif

           #if _USESPECULAR
              c += LightingStandardSpecular (o, worldViewDir, gi);
           #elif _BDRF3 || _SIMPLELIT
              c += LightingBlinnPhong (o, d.worldSpaceViewDir, gi);
           #else
              c += LightingStandard (o, worldViewDir, gi);
           #endif
           

           ChainFinalColorForward(l, d, c);

           #if !DISABLEFOG
            UNITY_APPLY_FOG(_unity_fogCoord, c); // apply fog
           #endif
           #if !_ALPHABLEND_ON
              UNITY_OPAQUE_ALPHA(c.a);
           #endif
           
           return c;
         }

         ENDCG

      }

      
	   Pass {
		   Name "ShadowCaster"
		   Tags { "LightMode" = "ShadowCaster" }
		   ZWrite On ZTest LEqual

         	Tags
    {
        "RenderType" = "Opaque" "Queue" = "Geometry" "PreviewType" = "Sphere"
    }   
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	ColorMask [_ColorMask]
Lighting Off


         CGPROGRAM

            #pragma vertex Vert
   #pragma fragment Frag
         // compile directives
         #pragma target 3.0
         #pragma multi_compile_instancing
         #pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
         #pragma multi_compile_shadowcaster
         #include "HLSLSupport.cginc"
         #define UNITY_INSTANCED_LOD_FADE
         #define UNITY_INSTANCED_SH
         #define UNITY_INSTANCED_LIGHTMAPSTS
         #include "UnityShaderVariables.cginc"
         #include "UnityShaderUtilities.cginc"

         #include "UnityCG.cginc"
         #include "Lighting.cginc"
         #include "UnityPBSLighting.cginc"

         #define _PASSSHADOW 1

         
    #pragma shader_feature_local TIMEISCUSTOM_ON
    #pragma shader_feature_local ADDITIVECONFIG_ON
    #pragma shader_feature_local PREMULTIPLYALPHA_ON
    #pragma shader_feature_local PREMULTIPLYCOLOR_ON
    #pragma shader_feature_local SPLITRGBA_ON
    #pragma shader_feature_local SHAPEADD_ON

    #pragma shader_feature_local SHAPE1SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE2SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE3SCREENUV_ON /////////////////Pipeline specific implementation

    #pragma shader_feature_local SHAPEDEBUG_ON
            
    #pragma shader_feature_local SHAPE1CONTRAST_ON
    #pragma shader_feature_local SHAPE1DISTORT_ON
    #pragma shader_feature_local SHAPE1ROTATE_ON
    #pragma shader_feature_local SHAPE1SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE2_ON
    #pragma shader_feature_local SHAPE2CONTRAST_ON
    #pragma shader_feature_local SHAPE2DISTORT_ON
    #pragma shader_feature_local SHAPE2ROTATE_ON
    #pragma shader_feature_local SHAPE2SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE3_ON
    #pragma shader_feature_local SHAPE3CONTRAST_ON
    #pragma shader_feature_local SHAPE3DISTORT_ON
    #pragma shader_feature_local SHAPE3ROTATE_ON
    #pragma shader_feature_local SHAPE3SHAPECOLOR_ON

    #pragma shader_feature_local GLOW_ON
    #pragma shader_feature_local GLOWTEX_ON
    #pragma shader_feature_local DEPTHGLOW_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local MASK_ON
    #pragma shader_feature_local COLORRAMP_ON
    #pragma shader_feature_local COLORRAMPGRAD_ON
    #pragma shader_feature_local COLORGRADING_ON
    #pragma shader_feature_local HSV_ON
    #pragma shader_feature_local POSTERIZE_ON
    #pragma shader_feature_local PIXELATE_ON
    #pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local SHAKEUV_ON
    #pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
    #pragma shader_feature_local TWISTUV_ON
    #pragma shader_feature_local DOODLE_ON
    #pragma shader_feature_local OFFSETSTREAM_ON
    #pragma shader_feature_local TEXTURESCROLL_ON
    #pragma shader_feature_local VERTOFFSET_ON
    #pragma shader_feature_local RIM_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local BACKFACETINT_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local POLARUV_ON
    #pragma shader_feature_local POLARUVDISTORT_ON
    #pragma shader_feature_local SHAPE1MASK_ON
    #pragma shader_feature_local TRAILWIDTH_ON
    #pragma shader_feature_local LIGHTANDSHADOW_ON
    #pragma shader_feature_local SHAPETEXOFFSET_ON
    #pragma shader_feature_local SHAPEWEIGHTS_ON
            
    #pragma shader_feature_local ALPHACUTOFF_ON
    #pragma shader_feature_local ALPHASMOOTHSTEP_ON
    #pragma shader_feature_local FADE_ON
    #pragma shader_feature_local FADEBURN_ON
    #pragma shader_feature_local ALPHAFADE_ON
    #pragma shader_feature_local ALPHAFADEUSESHAPE1_ON
    #pragma shader_feature_local ALPHAFADEUSEREDCHANNEL_ON
    #pragma shader_feature_local ALPHAFADETRANSPARENCYTOO_ON
    #pragma shader_feature_local ALPHAFADEINPUTSTREAM_ON
    #pragma shader_feature_local CAMDISTFADE_ON

	#pragma shader_feature NORMALMAP_ON


   #define _STANDARD 1
// If your looking in here and thinking WTF, yeah, I know. These are taken from the SRPs, to allow us to use the same
// texturing library they use. However, since they are not included in the standard pipeline by default, there is no
// way to include them in and they have to be inlined, since someone could copy this shader onto another machine without
// Better Shaders installed. Unfortunate, but I'd rather do this and have a nice library for texture sampling instead
// of the patchy one Unity provides being inlined/emulated in HDRP/URP. Strangely, PSSL and XBoxOne libraries are not
// included in the standard SRP code, but they are in tons of Unity own projects on the web, so I grabbed them from there.

#if defined(SHADER_API_GAMECORE)

	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName
	#define ASSIGN_SAMPLER(samplerName, samplerValue) samplerName = samplerValue

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define SAMPLE_DEPTH_TEXTURE(textureName, samplerName, coord2)          SAMPLE_TEXTURE2D(textureName, samplerName, coord2).r
	#define SAMPLE_DEPTH_TEXTURE_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod).r

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_XBOXONE)
	
	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_PSSL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.GetLOD(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RW_Texture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RW_Texture2D_Array<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RW_Texture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)



#elif defined(SHADER_API_D3D11)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_METAL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_VULKAN)
// This file assume SHADER_API_VULKAN is defined
	// TODO: This is a straight copy from D3D11.hlsl. Go through all this stuff and adjust where needed.


	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_SWITCH)
	// This file assume SHADER_API_SWITCH is defined

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod) textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)              textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_GLCORE)

	// OpenGL 4.1 SM 5.0 https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 46)
	#define OPENGL4_1_SM5 1
	#else
	#define OPENGL4_1_SM5 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)          TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)            TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)             TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)       TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)           TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)             TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, bias) ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))

	#if OPENGL4_1_SM5
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#endif


	#elif defined(SHADER_API_GLES3)

	// GLES 3.1 + AEP shader feature https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 40)
	#define GLES3_1_AEP 1
	#else
	#define GLES3_1_AEP 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)          TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)            Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)             Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)       Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)           TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)             Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#if GLES3_1_AEP
	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName
	#else
	#define RW_TEXTURE2D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)   ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)
	#endif

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)

	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif

	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)        textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                 textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                              textureName.Load(int4(unCoord3, lod))

	#if GLES3_1_AEP
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherAlpha(samplerName, coord2)
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)
	#endif


#elif defined(SHADER_API_GLES)


	#define uint int

	#define rcp(x) 1.0 / (x)
	#define ddx_fine ddx
	#define ddy_fine ddy
	#define asfloat
	#define asuint(x) asint(x)
	#define f32tof16
	#define f16tof32

	#define ERROR_ON_UNSUPPORTED_FUNCTION(funcName) #error #funcName is not supported on GLES 2.0

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }


	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) #error calculate Level of Detail not supported in GLES2

	// Texture abstraction

	#define TEXTURE2D(textureName)                          sampler2D textureName
	#define TEXTURE2D_ARRAY(textureName)                    samplerCUBE textureName // No support to texture2DArray
	#define TEXTURECUBE(textureName)                        samplerCUBE textureName
	#define TEXTURECUBE_ARRAY(textureName)                  samplerCUBE textureName // No supoport to textureCubeArray and can't emulate with texture2DArray
	#define TEXTURE3D(textureName)                          sampler3D textureName

	#define TEXTURE2D_FLOAT(textureName)                    sampler2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)              TEXTURECUBE_FLOAT(textureName) // No support to texture2DArray
	#define TEXTURECUBE_FLOAT(textureName)                  samplerCUBE_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)            TEXTURECUBE_FLOAT(textureName) // No support to textureCubeArray
	#define TEXTURE3D_FLOAT(textureName)                    sampler3D_float textureName

	#define TEXTURE2D_HALF(textureName)                     sampler2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)               TEXTURECUBE_HALF(textureName) // No support to texture2DArray
	#define TEXTURECUBE_HALF(textureName)                   samplerCUBE_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)             TEXTURECUBE_HALF(textureName) // No support to textureCubeArray
	#define TEXTURE3D_HALF(textureName)                     sampler3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)                   SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW(textureName)             TEXTURECUBE_SHADOW(textureName) // No support to texture array
	#define TEXTURECUBE_SHADOW(textureName)                 SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)           TEXTURECUBE_SHADOW(textureName) // No support to texture array

	#define RW_TEXTURE2D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)           ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)

	#define SAMPLER(samplerName)
	#define SAMPLER_CMP(samplerName)

	#define TEXTURE2D_PARAM(textureName, samplerName)                sampler2D textureName
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)          samplerCUBE textureName
	#define TEXTURECUBE_PARAM(textureName, samplerName)              samplerCUBE textureName
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)        samplerCUBE textureName
	#define TEXTURE3D_PARAM(textureName, samplerName)                sampler3D textureName
	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)         SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)   SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)       SHADOWCUBE_TEXTURE_AND_SAMPLER textureName

	#define TEXTURE2D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)         textureName
	#define TEXTURECUBE_ARGS(textureName, samplerName)             textureName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)       textureName
	#define TEXTURE3D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)        textureName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)  textureName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)      textureName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2) tex2D(textureName, coord2)

	#if (SHADER_TARGET >= 30)
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) tex2Dlod(textureName, float4(coord2, 0, lod))
	#else
	    // No lod support. Very poor approximation with bias.
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, lod)
	#endif

	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                       tex2Dbias(textureName, float4(coord2, 0, bias))
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                   SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                     ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_LOD)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_BIAS)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)    ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_GRAD)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                                texCUBE(textureName, coord3)
	// No lod support. Very poor approximation with bias.
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                       SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                     texCUBEbias(textureName, float4(coord3, bias))
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                   ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)        ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                                  tex3D(textureName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                         ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE3D_LOD)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                           SHADOW2D_SAMPLE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)              ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_SHADOW)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                         SHADOWCUBE_SAMPLE(textureName, samplerName, coord4)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_SHADOW)


	// Not supported. Can't define as error because shader library is calling these functions.
	#define LOAD_TEXTURE2D(textureName, unCoord2)                                               half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                                      half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                             half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                                  half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)                half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                         half4(0, 0, 0, 0)
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                               ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D)
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                                      ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D_LOD)

	// Gather not supported. Fallback to regular texture sampling.
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)

#else
#error unsupported shader api
#endif




// default flow control attributes
#ifndef UNITY_BRANCH
#   define UNITY_BRANCH
#endif
#ifndef UNITY_FLATTEN
#   define UNITY_FLATTEN
#endif
#ifndef UNITY_UNROLL
#   define UNITY_UNROLL
#endif
#ifndef UNITY_UNROLLX
#   define UNITY_UNROLLX(_x)
#endif
#ifndef UNITY_LOOP
#   define UNITY_LOOP
#endif





         


         // data across stages, stripped like the above.
         struct VertexToPixel
         {
            V2F_SHADOW_CASTER; // may declare TEXCOORD0 for the wonderfully named .vec
            float3 worldPos : TEXCOORD1;
            float3 worldNormal : TEXCOORD2;
            float4 worldTangent : TEXCOORD3;
             float4 texcoord0 : TEXCOORD4;
            // float4 texcoord1 : TEXCOORD5;
            // float4 texcoord2 : TEXCOORD6;

            // #if %TEXCOORD3REQUIREKEY%
            // float4 texcoord3 : TEXCOORD7;
            // #endif

            // #if %SCREENPOSREQUIREKEY%
             float4 screenPos : TEXCOORD8;
            // #endif
            
            // #if %VERTEXCOLORREQUIREKEY%
             float4 vertexColor : COLOR;
            // #endif

            // #if %EXTRAV2F0REQUIREKEY%
             float4 extraV2F0 : TEXCOORD9;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             float4 extraV2F1 : TEXCOORD10;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             float4 extraV2F2 : TEXCOORD11;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             float4 extraV2F3 : TEXCOORD12;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // float4 extraV2F4 : TEXCOORD13;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // float4 extraV2F5 : TEXCOORD14;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // float4 extraV2F6 : TEXCOORD15;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // float4 extraV2F7 : TEXCOORD16;
            // #endif

            UNITY_VERTEX_INPUT_INSTANCE_ID
            UNITY_VERTEX_OUTPUT_STEREO
         };

         
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
                float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef UNITY_MATRIX_I_M

               #define UNITY_MATRIX_I_M   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)UNITY_MATRIX_M, transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)UNITY_MATRIX_V, norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
         
	half4 _Color;
	half _Alpha;
	half _AlphaCutoffValue;

	half _TimingSeed;

	#if TIMEISCUSTOM_ON
		float4 globalCustomTime;
	#endif

	half4 _MainTex_ST, _ShapeColor;
	half _ShapeXSpeed, _ShapeYSpeed, _ShapeColorWeight, _ShapeAlphaWeight;
	
	#if SHAPE1CONTRAST_ON
		half _ShapeContrast, _ShapeBrightness;
	#endif
	
	#if SHAPE1DISTORT_ON
		half4 _ShapeDistortTex_ST;
		half _ShapeDistortAmount, _ShapeDistortXSpeed, _ShapeDistortYSpeed;
	#endif
	
	#if SHAPE1ROTATE_ON
		half _ShapeRotationOffset, _ShapeRotationSpeed;
	#endif
	
	#if OFFSETSTREAM_ON
		half _OffsetSh1;
	#endif
	
	#if SHAPEWEIGHTS_ON
		half _Sh1BlendOffset;
	#endif

	#if SHAPE2_ON
		half4 _Shape2Tex_ST, _Shape2Color;
		half _Shape2XSpeed, _Shape2YSpeed, _Shape2ColorWeight, _Shape2AlphaWeight;
		#if SHAPE2CONTRAST_ON
			half _Shape2Contrast, _Shape2Brightness;
		#endif
		#if SHAPE2DISTORT_ON
			half4 _Shape2DistortTex_ST;
			half _Shape2DistortAmount, _Shape2DistortXSpeed, _Shape2DistortYSpeed;
		#endif
		#if SHAPE2ROTATE_ON
			half _Shape2RotationOffset, _Shape2RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh2;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh2BlendOffset;
		#endif
	#endif

	#if SHAPE3_ON
		half4 _Shape3Tex_ST, _Shape3Color;
		half _Shape3XSpeed, _Shape3YSpeed, _Shape3ColorWeight, _Shape3AlphaWeight;
		#if SHAPE3CONTRAST_ON
			half _Shape3Contrast, _Shape3Brightness;
		#endif
		#if SHAPE3DISTORT_ON
			half4 _Shape3DistortTex_ST;
			half _Shape3DistortAmount, _Shape3DistortXSpeed, _Shape3DistortYSpeed;
		#endif
		#if SHAPE3ROTATE_ON
			half _Shape3RotationOffset, _Shape3RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh3;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh3BlendOffset;
		#endif
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
		#if GLOWTEX_ON
			half4 _GlowTex_ST;
		#endif
	#endif

	#if MASK_ON
		half4 _MaskTex_ST;
		half _MaskPow;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if ALPHASMOOTHSTEP_ON
		half _AlphaStepMin, _AlphaStepMax;
	#endif

	#if ALPHAFADE_ON
		half _AlphaFadeAmount, _AlphaFadeSmooth, _AlphaFadePow;
	#endif

	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if WAVEUV_ON
		half _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if ROUNDWAVEUV_ON || PIXELATE_ON
		half4 _MainTex_TexelSize;
	#endif

	#if VERTOFFSET_ON
		half4 _VertOffsetTex_ST;
		half _VertOffsetAmount, _VertOffsetPower, _VertOffsetTexXSpeed, _VertOffsetTexYSpeed;
	#endif

	#if FADE_ON
		half4 _FadeTex_ST;
		half _FadeAmount, _FadeTransition, _FadePower, _FadeScrollXSpeed, _FadeScrollYSpeed;
		#if FADEBURN_ON
			half4 _FadeBurnColor, _FadeBurnTex_ST;
			half _FadeBurnWidth, _FadeBurnGlow;
		#endif
	#endif

	#if COLORGRADING_ON
		half3 _ColorGradingLight, _ColorGradingMiddle, _ColorGradingDark;
		half _ColorGradingMidPoint;
	#endif
            
	#if CAMDISTFADE_ON
		half _CamDistFadeStepMin, _CamDistFadeStepMax, _CamDistProximityFade;
	#endif

	#if RIM_ON
		half _RimBias, _RimScale, _RimPower, _RimIntensity, _RimAddAmount, _RimErodesAlpha;
		half4 _RimColor;
	#endif

	#if BACKFACETINT_ON
		half4 _BackFaceTint, _FrontFaceTint;
	#endif

	#if SHAPEDEBUG_ON
		half _DebugShape;
	#endif

	#if SHAPE1MASK_ON
		half4 _Shape1MaskTex_ST;
		half _Shape1MaskPow;
	#endif

	#if TRAILWIDTH_ON
		half _TrailWidthPower;
	#endif

	#if LIGHTANDSHADOW_ON
		half3 _All1VfxLightDir;
		half _ShadowAmount, _ShadowStepMin, _ShadowStepMax, _LightAmount;
		half4 _LightColor;
	#endif

	#if SHAPETEXOFFSET_ON
		half _RandomSh1Mult, _RandomSh2Mult, _RandomSh3Mult;
	#endif

	#if DEPTHGLOW_ON
		half _DepthGlowDist, _DepthGlowPow, _DepthGlow, _DepthGlowGlobal;
		half4 _DepthGlowColor;
    #endif

	#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
        half _ScreenUvShDistScale,_ScreenUvSh2DistScale, _ScreenUvSh3DistScale;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif




         

         

         

	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if SHAPE1DISTORT_ON
		TEXTURE2D(_ShapeDistortTex);
		SAMPLER(sampler_ShapeDistortTex);
	#endif

	#if SHAPE2_ON
		TEXTURE2D(_Shape2Tex);
		SAMPLER(sampler_Shape2Tex);
		#if SHAPE2DISTORT_ON
			TEXTURE2D(_Shape2DistortTex);
			SAMPLER(sampler_Shape2DistortTex);
		#endif
	#endif

	#if SHAPE3_ON
		TEXTURE2D(_Shape3Tex);
		SAMPLER(sampler_Shape3Tex);
		#if SHAPE3DISTORT_ON
			TEXTURE2D(_Shape3DistortTex);
			SAMPLER(sampler_Shape3DistortTex);
		#endif
	#endif

	#if GLOW_ON
		#if GLOWTEX_ON
			TEXTURE2D(_GlowTex);
			SAMPLER(sampler_GlowTex);
		#endif
	#endif

	#if MASK_ON
		TEXTURE2D(_MaskTex);
		SAMPLER(sampler_MaskTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		SAMPLER(sampler_ColorRampTex);
	#endif

	#if COLORRAMPGRAD_ON
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif
	
	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);
	#endif

	#if VERTOFFSET_ON
		TEXTURE2D(_VertOffsetTex);
		SAMPLER(sampler_VertOffsetTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);
		#if FADEBURN_ON
			TEXTURE2D(_FadeBurnTex);
			SAMPLER(sampler_FadeBurnTex);
		#endif
	#endif

	#if SHAPE1MASK_ON
		TEXTURE2D(_Shape1MaskTex);
		SAMPLER(sampler_Shape1MaskTex);
	#endif

	#if TRAILWIDTH_ON
		TEXTURE2D(_TrailWidthGradient);
		SAMPLER(sampler_TrailWidthGradient);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif

	half4 SampleTextureWithScroll(in Texture2D _tex, in SamplerState _sampler, in float2 uv, in half scrollXSpeed, in half scrollYSpeed, in float time)
	{
		half2 _uv = uv;
		_uv.x += (time * scrollXSpeed) % 1;
		_uv.y += (time * scrollYSpeed) % 1;
		return SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
	}

	half EaseOutQuint(half x) 
	{
		return 1 - pow(1 - x, 5);
	}

	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax)
	{
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}

	float2 RotateUvs(float2 uv, half rotation, half4 scaleAndTranslate)
	{
		half2 center = half2(0.5 * scaleAndTranslate.x + scaleAndTranslate.z, 0.5 * scaleAndTranslate.y + scaleAndTranslate.w);
		half cosAngle = cos(rotation);
		half sinAngle = sin(rotation);
		uv -= center;
		uv = mul(half2x2(cosAngle, -sinAngle, sinAngle, cosAngle), uv);
		uv += center;
		return uv; 
	}

	half4 GetDebugColor(float4 resColor, half4 shape1, half4 shape2, half4 shape3)
	{
		half4 res = resColor;

		//MAKE SURE THE FOLLOWING CODE BLOCK IS UNCOMMENTED-------------------------------------------
        #if SHAPEDEBUG_ON
			if(_DebugShape < 1.5) return shape1;
			#if SHAPE2_ON
				else if (_DebugShape < 2.5) return shape2;
			#endif
			#if SHAPE3_ON
				else return shape3;
			#endif
        #endif

		return res;
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//uvDistTex --> extraV2F0
		//uvSh1DistTex --> extraV2F1
		//uvSh2DistTex --> extraV2F2
		//uvSh3DistTex --> extraV2F3
 
		#if VERTOFFSET_ON
			#if TIMEISCUSTOM_ON
				const half time = v.texcoord0.z + globalCustomTime.y;
			#else
				const half time = v.texcoord0.z + _Time.y;
			#endif
				half4 offsetUv = half4(TRANSFORM_TEX(v.texcoord0.xy, _VertOffsetTex), 0, 0);
            	offsetUv.x += (time * _VertOffsetTexXSpeed) % 1;
				offsetUv.y += (time * _VertOffsetTexYSpeed) % 1;
                v.vertex.xyz += v.normal * _VertOffsetAmount * pow(SAMPLE_TEXTURE2D_LOD(_VertOffsetTex, sampler_VertOffsetTex, offsetUv, 0).r, _VertOffsetPower); 
		#endif

		#if DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F0.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif

		#if SHAPE1DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F1.xy = TRANSFORM_TEX(v.texcoord0.xy, _ShapeDistortTex);
        #endif

		#if SHAPE2_ON
			#if SHAPE2DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F2.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape2DistortTex);;
			#endif
		#endif

		#if SHAPE3_ON
			#if SHAPE3DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F3.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape3DistortTex);
			#endif
        #endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		//i.uvSeed -> d.texcoord0.xy

		float seed = d.texcoord0.z + _TimingSeed;
		#if TIMEISCUSTOM_ON
			const float4 shaderTime = globalCustomTime;
		#else
			const float4 shaderTime = _Time;
		#endif
		float time = shaderTime.y + seed;

		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 originalUvs = d.texcoord0.xy;
        #endif

		#if PIXELATE_ON
			half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif

		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif

		#if TWISTUV_ON
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		#if DOODLE_ON
			half2 uvCopy = d.texcoord0.xy;
			_HandDrawnSpeed = (floor((shaderTime.x + seed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		#if SHAKEUV_ON
			half xShake = sin((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		#if WAVEUV_ON
			half2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
			half angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((time * _WaveSpeed) % 360.0);
			d.texcoord0.xy = d.texcoord0.xy + normalize(uvWave) * sin(angWave) * (_WaveStrength / 1000.0);
		#endif

		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - d.texcoord0.x);
			half yWave = ((0.5 * _MainTex_ST.y) - d.texcoord0.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
            d.texcoord0.xy += (sin((ripple + time * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif

		#if POLARUV_ON
            half2 prePolarUvs = d.texcoord0.xy;
            d.texcoord0.xy = d.texcoord0.xy - half2(0.5, 0.5);
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (1.0 * 6.28318530718), length(d.texcoord0.xy) * 2.0);
            d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		#if DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 distortUvs = TRANSFORM_TEX(d.texcoord0.xy, _DistortTex);
			#else
				half2 distortUvs = d.extraV2F0.xy;
			#endif
			distortUvs.x += ((shaderTime.x + seed) * _DistortTexXSpeed) % 1;
			distortUvs.y += ((shaderTime.x + seed) * _DistortTexYSpeed) % 1;
			#if ATLAS_ON
				d.extraV2F0.xy = half2((d.extraV2F0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.extraV2F0.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, distortUvs).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif

		#if TEXTURESCROLL_ON
			d.texcoord0.x += (time * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += (time * _TextureScrollYSpeed) % 1;
		#endif

		#if TRAILWIDTH_ON
            half width = pow(SAMPLE_TEXTURE2D(_TrailWidthGradient, sampler_TrailWidthGradient, d.texcoord0).r, _TrailWidthPower);
            d.texcoord0.y = (d.texcoord0.y * 2 - 1) / width * 0.5 + 0.5;
            clip(d.texcoord0.y);
            clip(1 - d.texcoord0.y);
        #endif

		float2 shape1Uv = d.texcoord0.xy;
        #if SHAPE2_ON
			float2 shape2Uv = shape1Uv;
        #endif
        #if SHAPE3_ON
			float2 shape3Uv = shape1Uv;
        #endif

        #if CAMDISTFADE_ON || SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half camDistance = distance(d.worldSpacePosition, _WorldSpaceCameraPos);
		#endif
		 
		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 uvOffsetPostFx = d.texcoord0.xy - originalUvs;
			d.texcoord0.xy = d.screenPos.xy / d.screenPos.w;
			d.texcoord0.x = d.texcoord0.x * (_ScreenParams.x / _ScreenParams.y);
			d.texcoord0.x -= 0.5;
			d.texcoord0.xy -= uvOffsetPostFx;
			originalUvs += uvOffsetPostFx;
			half distanceZoom = camDistance * 0.1;
			half2 scaleWithDistUvs = d.texcoord0.xy * distanceZoom + ((-distanceZoom * 0.5) + 0.5);
			#if SHAPE1SCREENUV_ON
				shape1Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvShDistScale);
			#else
				shape1Uv = originalUvs;
			#endif
			#if SHAPE2SCREENUV_ON && SHAPE2_ON
				shape2Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh2DistScale);
			#else
				#if SHAPE2_ON
					shape2Uv = originalUvs;
				#endif
			#endif
			#if SHAPE3SCREENUV_ON && SHAPE3_ON
				shape3Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh3DistScale);
			#else
				#if SHAPE3_ON
					shape3Uv = originalUvs;
				#endif
			#endif
		#endif

		shape1Uv = TRANSFORM_TEX(shape1Uv, _MainTex);
		#if OFFSETSTREAM_ON
			shape1Uv.x += i.offsetCustomData.x * _OffsetSh1;
			shape1Uv.y += i.offsetCustomData.y * _OffsetSh1;
		#endif
        #if SHAPETEXOFFSET_ON
			shape1Uv += seed * _RandomSh1Mult;
		#endif
        
		#if SHAPE1DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 sh1DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _ShapeDistortTex);
			#else
				half2 sh1DistortUvs = d.extraV2F1.xy;
			#endif
			
			sh1DistortUvs.x += ((time + seed) * _ShapeDistortXSpeed) % 1;
			sh1DistortUvs.y += ((time + seed) * _ShapeDistortYSpeed) % 1;
			half distortAmount = (SAMPLE_TEXTURE2D(_ShapeDistortTex, sampler_ShapeDistortTex, sh1DistortUvs).r - 0.5) * 0.2 * _ShapeDistortAmount;
			shape1Uv.x += distortAmount;
			shape1Uv.y += distortAmount;
		#endif
		#if SHAPE1ROTATE_ON
			shape1Uv = RotateUvs(shape1Uv, _ShapeRotationOffset + ((_ShapeRotationSpeed * time) % 6.28318530718), _MainTex_ST);
		#endif

		half4 shape1 = SampleTextureWithScroll(_MainTex, sampler_MainTex, shape1Uv, _ShapeXSpeed, _ShapeYSpeed, time);
		#if SHAPE1SHAPECOLOR_ON
			shape1.a = shape1.r;
			shape1.rgb = _ShapeColor.rgb;
		#else
			shape1 *= _ShapeColor;
		#endif
		#if SHAPE1CONTRAST_ON
			#if SHAPE1SHAPECOLOR_ON
				shape1.a = saturate((shape1.a - 0.5) * _ShapeContrast + 0.5 + _ShapeBrightness);
			#else
				shape1.rgb = max(0, (shape1.rgb - half3(0.5, 0.5, 0.5)) * _ShapeContrast + half3(0.5, 0.5, 0.5) + _ShapeBrightness);
			#endif
        #endif

		half4 shape2 = 1.0;
		#if SHAPE2_ON
			shape2Uv = TRANSFORM_TEX(shape2Uv, _Shape2Tex);
			#if OFFSETSTREAM_ON
				shape2Uv.x += i.offsetCustomData.x * _OffsetSh2;
				shape2Uv.y += i.offsetCustomData.y * _OffsetSh2;
			#endif
			#if SHAPETEXOFFSET_ON
				shape2Uv += seed * _RandomSh2Mult;
			#endif
			#if SHAPE2DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh2DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape2DistortTex);
				#else
					half2 sh2DistortUvs = d.extraV2F2.xy;
				#endif
				sh2DistortUvs.x += ((time + seed) * _Shape2DistortXSpeed) % 1;
				sh2DistortUvs.y += ((time + seed) * _Shape2DistortYSpeed) % 1;
				half distortAmnt2 = (SAMPLE_TEXTURE2D(_Shape2DistortTex, sampler_Shape2DistortTex, sh2DistortUvs).r - 0.5) * 0.2 * _Shape2DistortAmount;
				shape2Uv.x += distortAmnt2;
				shape2Uv.y += distortAmnt2;
			#endif
			#if SHAPE2ROTATE_ON
				shape2Uv = RotateUvs(shape2Uv, _Shape2RotationOffset + ((_Shape2RotationSpeed * time) % 6.28318530718), _Shape2Tex_ST);
			#endif
			
			shape2 = SampleTextureWithScroll(_Shape2Tex, sampler_Shape2Tex, shape2Uv, _Shape2XSpeed, _Shape2YSpeed, time); 
			#if SHAPE2SHAPECOLOR_ON
				shape2.a = shape2.r;
				shape2.rgb = _Shape2Color.rgb;
			#else
				shape2 *= _Shape2Color;
			#endif
			#if SHAPE2CONTRAST_ON
				#if SHAPE2SHAPECOLOR_ON
					shape2.a = max(0, (shape2.a - 0.5) * _Shape2Contrast + 0.5 + _Shape2Brightness);
				#else
					shape2.rgb = max(0, (shape2.rgb - half3(0.5, 0.5, 0.5)) * _Shape2Contrast + half3(0.5, 0.5, 0.5) + _Shape2Brightness);
				#endif
			#endif
        #endif

		half4 shape3 = 1.0;
		 #if SHAPE3_ON
            shape3Uv = TRANSFORM_TEX(shape3Uv, _Shape3Tex);
			
            #if OFFSETSTREAM_ON
				shape3Uv.x += i.offsetCustomData.x * _OffsetSh3;
				shape3Uv.y += i.offsetCustomData.y * _OffsetSh3;
			#endif
            #if SHAPETEXOFFSET_ON
				shape3Uv += seed * _RandomSh3Mult;
			#endif
            #if SHAPE3DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh3DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape3DistortTex);
				#else
					half2 sh3DistortUvs = d.extraV2F3.xy;
				#endif
				sh3DistortUvs.x += ((time + seed) * _Shape3DistortXSpeed) % 1;
				sh3DistortUvs.y += ((time + seed) * _Shape3DistortYSpeed) % 1;
				half distortAmnt3 = (SAMPLE_TEXTURE2D(_Shape3DistortTex, sampler_Shape3DistortTex, sh3DistortUvs).r - 0.5) * 0.3 * _Shape3DistortAmount;
				shape3Uv.x += distortAmnt3;
				shape3Uv.y += distortAmnt3;
            #endif
            #if SHAPE3ROTATE_ON
				shape3Uv = RotateUvs(shape3Uv, _Shape3RotationOffset + ((_Shape3RotationSpeed * time) % 6.28318530718), _Shape3Tex_ST);
            #endif
				shape3 = SampleTextureWithScroll(_Shape3Tex, sampler_Shape3Tex, shape3Uv, _Shape3XSpeed, _Shape3YSpeed, time);
            #if SHAPE3SHAPECOLOR_ON
				shape3.a = shape3.r;
				shape3.rgb = _Shape3Color.rgb;
            #else
				shape3 *= _Shape3Color;
            #endif
            #if SHAPE3CONTRAST_ON
				#if SHAPE3SHAPECOLOR_ON
					shape3.a = max(0, (shape3.a - 0.5) * _Shape3Contrast + 0.5 + _Shape3Brightness);
				#else
					shape3.rgb = max(0, (shape3.rgb - half3(0.5, 0.5, 0.5)) * _Shape3Contrast + half3(0.5, 0.5, 0.5) + _Shape3Brightness);
				#endif
            #endif
		#endif

		half4 col = shape1;
		//Mix all shapes pre: change weights if custom vertex effect active
        #if SHAPEWEIGHTS_ON
			half shapeWeightOffset;
			#if SHAPE2_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh1BlendOffset;
				_ShapeColorWeight = max(0, _ShapeColorWeight + shapeWeightOffset);
				_ShapeAlphaWeight = max(0, _ShapeAlphaWeight + shapeWeightOffset);
				shapeWeightOffset = i.offsetCustomData.z * _Sh2BlendOffset;
				_Shape2ColorWeight = max(0, _Shape2ColorWeight + shapeWeightOffset);
				_Shape2AlphaWeight = max(0, _Shape2AlphaWeight + shapeWeightOffset);
			#endif
			#if SHAPE3_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh3BlendOffset;
				_Shape3ColorWeight = max(0, _Shape3ColorWeight + shapeWeightOffset);
				_Shape3AlphaWeight = max(0, _Shape3AlphaWeight + shapeWeightOffset);
			#endif
		#endif

		//Mix all shapes
        #if SHAPE2_ON
			#if !SPLITRGBA_ON
				_ShapeAlphaWeight = _ShapeColorWeight;
				_Shape2AlphaWeight = _Shape2ColorWeight;
			#endif
			#if SHAPE3_ON //Shape3 On
				#if !SPLITRGBA_ON
					_Shape3AlphaWeight = _Shape3ColorWeight;
				#endif
			#if SHAPEADD_ON
				col.rgb = ((shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight)) + (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(max(shape3.a * _Shape3AlphaWeight, max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight)));
			#else
				col.rgb = ((shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight)) * (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight)) * (shape3.a * _Shape3AlphaWeight));
			#endif
			#else //Shape3 Off
				#if SHAPEADD_ON
					col.rgb = (shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate(max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight));
				#else
					col.rgb = (shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight));
				#endif
			#endif
        #endif

		#if SHAPE1MASK_ON
            col = lerp(col, shape1, pow(SAMPLE_TEXTURE2D(_Shape1MaskTex, sampler_Shape1MaskTex, TRANSFORM_TEX(i.uvSeed.xy, _Shape1MaskTex)).r, _Shape1MaskPow));
        #endif
		
		#if PREMULTIPLYCOLOR_ON
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
			col.a = min(luminance, col.a);
        #endif

		col.rgb *= _Color.rgb * d.vertexColor.rgb;
		#if PREMULTIPLYALPHA_ON
			col.rgb *= col.a;
        #endif

        #if !PREMULTIPLYCOLOR_ON && (COLORRAMP_ON || ALPHAFADE_ON || COLORGRADING_ON || FADE_ON || (ADDITIVECONFIG_ON && (GLOW_ON || DEPTHGLOW_ON)))
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
        #endif

		#if (FADE_ON || ALPHAFADE_ON) && ALPHAFADEINPUTSTREAM_ON
			col.a *= d.vertexColor.a;
			d.vertexColor.a = d.texcoord0.w;
        #endif

		#if FADE_ON
			half preFadeAlpha = col.a;
			_FadeAmount = saturate(_FadeAmount + (1 - d.vertexColor.a));
			_FadeTransition = max(0.01, _FadeTransition * EaseOutQuint(saturate(_FadeAmount)));
			half2 fadeUv;
			fadeUv = d.texcoord0.xy + seed;
			fadeUv.x += (time * _FadeScrollXSpeed) % 1;
			fadeUv.y += (time * _FadeScrollYSpeed) % 1;
			half2 tiledUvFade1 = TRANSFORM_TEX(fadeUv, _FadeTex);
			#if ADDITIVECONFIG_ON && !PREMULTIPLYCOLOR_ON
				preFadeAlpha *= luminance;
			#endif
			_FadeAmount = saturate(pow(_FadeAmount, _FadePower));
			#if FADEBURN_ON
				half2 tiledUvFade2 = TRANSFORM_TEX(fadeUv, _FadeBurnTex);
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				half fadeNaturalEdge = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fadeNaturalEdge;
				half fadeBurn = saturate(smoothstep(0.0 , _FadeTransition + _FadeBurnWidth, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				fadeBurn = fadeNaturalEdge - fadeBurn;
				_FadeBurnColor.rgb *= _FadeBurnGlow;
				col.rgb += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2).rgb * _FadeBurnColor.rgb * preFadeAlpha;
			#else
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				float fade = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fade;
			#endif
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _FadeAmount;
			#endif
		#endif

		#if ALPHAFADE_ON
			half alphaFadeLuminance;
			_AlphaFadeAmount = saturate(_AlphaFadeAmount + (1 - d.vertexColor.a));
			_AlphaFadeAmount = saturate(pow(_AlphaFadeAmount, _AlphaFadePow));
			_AlphaFadeSmooth = max(0.01, _AlphaFadeSmooth * EaseOutQuint(saturate(_AlphaFadeAmount)));
			#if ALPHAFADEUSESHAPE1_ON
				alphaFadeLuminance = shape1.r;
			#else
				alphaFadeLuminance = luminance;
			#endif
				alphaFadeLuminance = saturate(alphaFadeLuminance - 0.001);
			#if ALPHAFADEUSEREDCHANNEL_ON
				col.a *= col.r;
			#endif
				col.a = saturate(col.a);
				float alphaFade = saturate(smoothstep(0.0 , _AlphaFadeSmooth, RemapFloat(1.0 - _AlphaFadeAmount, 0.0, 1.0, -1.0, 1.0) + alphaFadeLuminance));
				col.a *= alphaFade;
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _AlphaFadeAmount;
			#endif
        #endif

		#if BACKFACETINT_ON
			col.rgb = lerp(col.rgb * _BackFaceTint, col.rgb * _FrontFaceTint, step(0, dot(d.worldSpaceNormal, d.worldSpaceViewDir)));
        #endif

		//#if LIGHTANDSHADOW_ON
			//half NdL = saturate(dot(d.worldSpaceNormal, -_All1VfxLightDir));
			//col.rgb += _LightColor * _LightAmount * NdL;
			//NdL = max(_ShadowAmount, NdL);
            //NdL = smoothstep(_ShadowStepMin, _ShadowStepMax, NdL);
            //col.rgb *= NdL;
		//#endif

		#if COLORGRADING_ON
			col.rgb *= lerp(lerp(_ColorGradingDark, _ColorGradingMiddle, luminance/_ColorGradingMidPoint),
			lerp(_ColorGradingMiddle, _ColorGradingLight, (luminance - _ColorGradingMidPoint)/(1.0 - _ColorGradingMidPoint)), step(_ColorGradingMidPoint, luminance));
        #endif

		#if COLORRAMP_ON
			half colorRampLuminance = saturate(luminance + _ColorRampLuminosity);
			#if COLORRAMPGRAD_ON
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(colorRampLuminance, 0));
			#else
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(colorRampLuminance, 0));
			#endif
			col.rgb = lerp(col.rgb, colorRampRes.rgb, _ColorRampBlend);
			col.a = lerp(col.a, saturate(col.a * colorRampRes.a), _ColorRampBlend);
        #endif

		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = floor(col.rgb / (1.0 / _PosterizeNumColors)) * (1.0 / _PosterizeNumColors);
		#endif

		#if DEPTHGLOW_ON
			half sceneDepthDiff = GetLinearEyeDepth(d.screenUV) - d.screenPos.w;
        #endif

		#if RIM_ON
			half NdV = 1 - abs(dot(d.worldSpaceNormal, d.worldSpaceViewDir));
			half rimFactor = saturate(_RimBias + _RimScale * pow(NdV, _RimPower));
			half4 rimCol = _RimColor * rimFactor;
			rimCol.rgb *= _RimIntensity;
			col.rgb = lerp(col.rgb * (rimCol.rgb + half3(1,1,1)), col.rgb + rimCol.rgb, _RimAddAmount);
			col.a = saturate(col.a * (1 - rimFactor * _RimErodesAlpha));
        #endif

		#if DEPTHGLOW_ON
			half depthGlowMask = saturate(_DepthGlowDist * pow((1 - sceneDepthDiff), _DepthGlowPow));
			col.rgb = lerp(col.rgb, _DepthGlowGlobal * col.rgb, depthGlowMask);
			half depthGlowMult = 1;
			#if ADDITIVECONFIG_ON
				depthGlowMult = luminance;
			#endif
			col.rgb += _DepthGlowColor.rgb * _DepthGlow * depthGlowMask * col.a * depthGlowMult;
        #endif

		#if GLOW_ON
			half glowMask = 1;
			#if GLOWTEX_ON
				glowMask = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, TRANSFORM_TEX(d.texcoord0.xy, _GlowTex));
			#endif
				col.rgb *= _GlowGlobal * glowMask;
				half glowMult = 1;
			#if ADDITIVECONFIG_ON
				glowMult = luminance;
			#endif
			
			col.rgb += _GlowColor.rgb * _Glow * glowMask * col.a * glowMult;
        #endif

		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
				+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
				+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
				+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
				+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif

		#if CAMDISTFADE_ON
			col.a *= 1 - saturate(smoothstep(_CamDistFadeStepMin, _CamDistFadeStepMax, camDistance));
			col.a *= smoothstep(0.0, _CamDistProximityFade, camDistance);
		#endif

		#if MASK_ON
            half2 maskUv = d.texcoord0.xy;
            #if POLARUV_ON
				maskUv = prePolarUvs;
			#endif
            half4 maskSample = SAMPLE_TEXTURE2D(_MaskTex, sampler_MaskTex, TRANSFORM_TEX(maskUv, _MaskTex));
			half mask = pow(min(maskSample.r, maskSample.a), _MaskPow);
			col.a *= mask;
        #endif

		#if ALPHASMOOTHSTEP_ON
			col.a = smoothstep(_AlphaStepMin, _AlphaStepMax, col.a);
        #endif

		half4 debugColor = col;
		#if SHAPEDEBUG_ON
			debugColor = GetDebugColor(col, shape1, shape2, shape3);
		#endif

		clip(debugColor.a - _AlphaCutoffValue - 0.01);

		//#if FOG_ON
			//UNITY_APPLY_FOG(i.fogCoord, col);
        //#endif
		
		//Don't use a starting i.color.a lower than 1 unless using vertex stream dissolve when using a FADE effect
        #if !FADE_ON && !ALPHAFADE_ON
			col.a *= _Alpha * d.vertexColor.a;
        #endif
        #if FADE_ON || ALPHAFADE_ON
			col.a *= _Alpha;
        #endif
        #if ADDITIVECONFIG_ON
			col.rgb *= col.a;
        #endif

		
		#if SHAPEDEBUG_ON
		o.Albedo = debugColor.rgb; 
		o.Alpha = debugColor.a;
		#else
		o.Albedo = col.rgb; 
		o.Alpha = col.a;
		#endif
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                  v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                  v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                  v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                  v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
                d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
                v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


         


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
            // d.texcoord1 = i.texcoord1;
            // d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
             d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif


         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
            UNITY_SETUP_INSTANCE_ID(v);
            VertexToPixel o;
            UNITY_INITIALIZE_OUTPUT(VertexToPixel,o);
            UNITY_TRANSFER_INSTANCE_ID(v,o);
            UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

             o.texcoord0 = v.texcoord0;
            // o.texcoord1 = v.texcoord1;
            // o.texcoord2 = v.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // o.texcoord3 = v.texcoord3;
            // #endif

            // #if %VERTEXCOLORREQUIREKEY%
             o.vertexColor = v.vertexColor;
            // #endif

            

            o.worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
            o.worldNormal = UnityObjectToWorldNormal(v.normal);
            o.worldTangent = float4(UnityObjectToWorldDir(v.tangent.xyz), v.tangent.w);


            // sets o.pos, so do screenpos after.
            TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)

            // #if %SCREENPOSREQUIREKEY%
             o.screenPos = ComputeScreenPos(o.pos);
            // #endif

            return o;
         }

         

         // fragment shader
         fixed4 Frag (VertexToPixel IN
         #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
         #endif
         #if NEED_FACING
            , bool facing : SV_IsFrontFace
         #endif
         ) : SV_Target
         {
           UNITY_SETUP_INSTANCE_ID(IN);
           // prepare and unpack data

           #ifdef FOG_COMBINED_WITH_TSPACE
             UNITY_EXTRACT_FOG_FROM_TSPACE(IN);
           #elif defined (FOG_COMBINED_WITH_WORLD_POS)
             UNITY_EXTRACT_FOG_FROM_WORLD_POS(IN);
           #else
             UNITY_EXTRACT_FOG(IN);
           #endif

           #ifndef USING_DIRECTIONAL_LIGHT
             fixed3 lightDir = normalize(UnityWorldSpaceLightDir(IN.worldPos));
           #else
             fixed3 lightDir = _WorldSpaceLightPos0.xyz;
           #endif

           

           ShaderData d = CreateShaderData(IN
              #if NEED_FACING
                 , facing
              #endif
           );

           Surface l = (Surface)0;

           #ifdef _DEPTHOFFSET_ON
              l.outputDepth = outputDepth;
           #endif

           l.Albedo = half3(0.5, 0.5, 0.5);
           l.Normal = float3(0,0,1);
           l.Occlusion = 1;
           l.Alpha = 1;

           ChainSurfaceFunction(l, d);

           #ifdef _DEPTHOFFSET_ON
              outputDepth = l.outputDepth;
           #endif

           SHADOW_CASTER_FRAGMENT(IN)
         }


         ENDCG

      }

      
	   // ---- meta information extraction pass:
	   Pass
      {
		   Name "Meta"
		   Tags { "LightMode" = "Meta" }
		   Cull Off

         	Tags
    {
        "RenderType" = "Opaque" "Queue" = "Geometry" "PreviewType" = "Sphere"
    }   
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	ColorMask [_ColorMask]
Lighting Off


         CGPROGRAM

            #pragma vertex Vert
   #pragma fragment Frag

         // compile directives
         #pragma target 3.0
         #pragma multi_compile_instancing
         #pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
         #pragma shader_feature EDITOR_VISUALIZATION

         #include "HLSLSupport.cginc"
         #define UNITY_INSTANCED_LOD_FADE
         #define UNITY_INSTANCED_SH
         #define UNITY_INSTANCED_LIGHTMAPSTS
         #include "UnityShaderVariables.cginc"
         #include "UnityShaderUtilities.cginc"

         #include "UnityCG.cginc"
         #include "Lighting.cginc"
         #include "UnityPBSLighting.cginc"
         #include "UnityMetaPass.cginc"

         #define _PASSMETA 1

         
    #pragma shader_feature_local TIMEISCUSTOM_ON
    #pragma shader_feature_local ADDITIVECONFIG_ON
    #pragma shader_feature_local PREMULTIPLYALPHA_ON
    #pragma shader_feature_local PREMULTIPLYCOLOR_ON
    #pragma shader_feature_local SPLITRGBA_ON
    #pragma shader_feature_local SHAPEADD_ON

    #pragma shader_feature_local SHAPE1SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE2SCREENUV_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local SHAPE3SCREENUV_ON /////////////////Pipeline specific implementation

    #pragma shader_feature_local SHAPEDEBUG_ON
            
    #pragma shader_feature_local SHAPE1CONTRAST_ON
    #pragma shader_feature_local SHAPE1DISTORT_ON
    #pragma shader_feature_local SHAPE1ROTATE_ON
    #pragma shader_feature_local SHAPE1SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE2_ON
    #pragma shader_feature_local SHAPE2CONTRAST_ON
    #pragma shader_feature_local SHAPE2DISTORT_ON
    #pragma shader_feature_local SHAPE2ROTATE_ON
    #pragma shader_feature_local SHAPE2SHAPECOLOR_ON

    #pragma shader_feature_local SHAPE3_ON
    #pragma shader_feature_local SHAPE3CONTRAST_ON
    #pragma shader_feature_local SHAPE3DISTORT_ON
    #pragma shader_feature_local SHAPE3ROTATE_ON
    #pragma shader_feature_local SHAPE3SHAPECOLOR_ON

    #pragma shader_feature_local GLOW_ON
    #pragma shader_feature_local GLOWTEX_ON
    #pragma shader_feature_local DEPTHGLOW_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local MASK_ON
    #pragma shader_feature_local COLORRAMP_ON
    #pragma shader_feature_local COLORRAMPGRAD_ON
    #pragma shader_feature_local COLORGRADING_ON
    #pragma shader_feature_local HSV_ON
    #pragma shader_feature_local POSTERIZE_ON
    #pragma shader_feature_local PIXELATE_ON
    #pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local SHAKEUV_ON
    #pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
    #pragma shader_feature_local TWISTUV_ON
    #pragma shader_feature_local DOODLE_ON
    #pragma shader_feature_local OFFSETSTREAM_ON
    #pragma shader_feature_local TEXTURESCROLL_ON
    #pragma shader_feature_local VERTOFFSET_ON
    #pragma shader_feature_local RIM_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local BACKFACETINT_ON /////////////////Pipeline specific implementation
    #pragma shader_feature_local POLARUV_ON
    #pragma shader_feature_local POLARUVDISTORT_ON
    #pragma shader_feature_local SHAPE1MASK_ON
    #pragma shader_feature_local TRAILWIDTH_ON
    #pragma shader_feature_local LIGHTANDSHADOW_ON
    #pragma shader_feature_local SHAPETEXOFFSET_ON
    #pragma shader_feature_local SHAPEWEIGHTS_ON
            
    #pragma shader_feature_local ALPHACUTOFF_ON
    #pragma shader_feature_local ALPHASMOOTHSTEP_ON
    #pragma shader_feature_local FADE_ON
    #pragma shader_feature_local FADEBURN_ON
    #pragma shader_feature_local ALPHAFADE_ON
    #pragma shader_feature_local ALPHAFADEUSESHAPE1_ON
    #pragma shader_feature_local ALPHAFADEUSEREDCHANNEL_ON
    #pragma shader_feature_local ALPHAFADETRANSPARENCYTOO_ON
    #pragma shader_feature_local ALPHAFADEINPUTSTREAM_ON
    #pragma shader_feature_local CAMDISTFADE_ON

	#pragma shader_feature NORMALMAP_ON


   #define _STANDARD 1
// If your looking in here and thinking WTF, yeah, I know. These are taken from the SRPs, to allow us to use the same
// texturing library they use. However, since they are not included in the standard pipeline by default, there is no
// way to include them in and they have to be inlined, since someone could copy this shader onto another machine without
// Better Shaders installed. Unfortunate, but I'd rather do this and have a nice library for texture sampling instead
// of the patchy one Unity provides being inlined/emulated in HDRP/URP. Strangely, PSSL and XBoxOne libraries are not
// included in the standard SRP code, but they are in tons of Unity own projects on the web, so I grabbed them from there.

#if defined(SHADER_API_GAMECORE)

	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName
	#define ASSIGN_SAMPLER(samplerName, samplerValue) samplerName = samplerValue

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               PLATFORM_SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      PLATFORM_SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    PLATFORM_SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              PLATFORM_SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  PLATFORM_SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         PLATFORM_SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       PLATFORM_SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) PLATFORM_SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             PLATFORM_SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    PLATFORM_SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  PLATFORM_SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                PLATFORM_SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     PLATFORM_SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               PLATFORM_SAMPLE_TEXTURE3D(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      PLATFORM_SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define SAMPLE_DEPTH_TEXTURE(textureName, samplerName, coord2)          SAMPLE_TEXTURE2D(textureName, samplerName, coord2).r
	#define SAMPLE_DEPTH_TEXTURE_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod).r

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_XBOXONE)
	
	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)


#elif defined(SHADER_API_PSSL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.GetLOD(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RW_Texture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RW_Texture2D_Array<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RW_Texture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)



#elif defined(SHADER_API_D3D11)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)        TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)          TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)           TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_METAL)

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_VULKAN)
// This file assume SHADER_API_VULKAN is defined
	// TODO: This is a straight copy from D3D11.hlsl. Go through all this stuff and adjust where needed.


	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                   textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                          textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_SWITCH)
	// This file assume SHADER_API_SWITCH is defined

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)          Texture2DArray textureName
	#define TEXTURECUBE(textureName)              TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)        TextureCubeArray textureName
	#define TEXTURE3D(textureName)                Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)          Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)    Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)        TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)  TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)          Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)           Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)     Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)         TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)   TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)           Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)         TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)   TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)       TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName) TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)       RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName) RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)       RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                  SamplerState samplerName
	#define SAMPLER_CMP(samplerName)              SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, dpdx, dpdy)              textureName.SampleGrad(samplerName, coord2, dpdx, dpdy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)       textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)     textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                               textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                      textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                    textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)       textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                  textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)     textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod) textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)              textureName.Load(int4(unCoord3, lod))

	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)   textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)              textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index) textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)           textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)          textureName.GatherAlpha(samplerName, coord2)

#elif defined(SHADER_API_GLCORE)

	// OpenGL 4.1 SM 5.0 https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 46)
	#define OPENGL4_1_SM5 1
	#else
	#define OPENGL4_1_SM5 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_FLOAT(textureName)          TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_FLOAT(textureName)            TEXTURE3D(textureName)

	#define TEXTURE2D_HALF(textureName)             TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_HALF(textureName)       TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_HALF(textureName)           TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TEXTURECUBE_ARRAY(textureName)
	#define TEXTURE3D_HALF(textureName)             TEXTURE3D(textureName)

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)
	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, bias) ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)

	#define LOAD_TEXTURE2D(textureName, unCoord2)                                   textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                          textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                 textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                      textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)    textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)             textureName.Load(int4(unCoord2, index, lod))

	#if OPENGL4_1_SM5
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#endif


	#elif defined(SHADER_API_GLES3)

	// GLES 3.1 + AEP shader feature https://docs.unity3d.com/Manual/SL-ShaderCompileTargets.html
	#if (SHADER_TARGET >= 40)
	#define GLES3_1_AEP 1
	#else
	#define GLES3_1_AEP 0
	#endif

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }

	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) textureName.CalculateLevelOfDetail(samplerName, coord2)

	// Texture abstraction

	#define TEXTURE2D(textureName)                  Texture2D textureName
	#define TEXTURE2D_ARRAY(textureName)            Texture2DArray textureName
	#define TEXTURECUBE(textureName)                TextureCube textureName
	#define TEXTURECUBE_ARRAY(textureName)          TextureCubeArray textureName
	#define TEXTURE3D(textureName)                  Texture3D textureName

	#define TEXTURE2D_FLOAT(textureName)            Texture2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)      Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_FLOAT(textureName)          TextureCube_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)    TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_FLOAT(textureName)            Texture3D_float textureName

	#define TEXTURE2D_HALF(textureName)             Texture2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)       Texture2DArray textureName    // no support to _float on Array, it's being added
	#define TEXTURECUBE_HALF(textureName)           TextureCube_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)     TextureCubeArray textureName  // no support to _float on Array, it's being added
	#define TEXTURE3D_HALF(textureName)             Texture3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)           TEXTURE2D(textureName)
	#define TEXTURE2D_ARRAY_SHADOW(textureName)     TEXTURE2D_ARRAY(textureName)
	#define TEXTURECUBE_SHADOW(textureName)         TEXTURECUBE(textureName)
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)   TEXTURECUBE_ARRAY(textureName)

	#if GLES3_1_AEP
	#define RW_TEXTURE2D(type, textureName)         RWTexture2D<type> textureName
	#define RW_TEXTURE2D_ARRAY(type, textureName)   RWTexture2DArray<type> textureName
	#define RW_TEXTURE3D(type, textureName)         RWTexture3D<type> textureName
	#else
	#define RW_TEXTURE2D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)   ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureName)         ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)
	#endif

	#define SAMPLER(samplerName)                    SamplerState samplerName
	#define SAMPLER_CMP(samplerName)                SamplerComparisonState samplerName

	#define TEXTURE2D_PARAM(textureName, samplerName)                 TEXTURE2D(textureName),         SAMPLER(samplerName)
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)           TEXTURE2D_ARRAY(textureName),   SAMPLER(samplerName)
	#define TEXTURECUBE_PARAM(textureName, samplerName)               TEXTURECUBE(textureName),       SAMPLER(samplerName)
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)         TEXTURECUBE_ARRAY(textureName), SAMPLER(samplerName)
	#define TEXTURE3D_PARAM(textureName, samplerName)                 TEXTURE3D(textureName),         SAMPLER(samplerName)

	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)          TEXTURE2D(textureName),         SAMPLER_CMP(samplerName)
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)    TEXTURE2D_ARRAY(textureName),   SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)        TEXTURECUBE(textureName),       SAMPLER_CMP(samplerName)
	#define TEXTURECUBE_ARRAY_SHADOW_PARAM(textureName, samplerName)  TEXTURECUBE_ARRAY(textureName), SAMPLER_CMP(samplerName)

	#define TEXTURE2D_ARGS(textureName, samplerName)                textureName, samplerName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)          textureName, samplerName
	#define TEXTURECUBE_ARGS(textureName, samplerName)              textureName, samplerName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)        textureName, samplerName
	#define TEXTURE3D_ARGS(textureName, samplerName)                textureName, samplerName

	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)         textureName, samplerName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)   textureName, samplerName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)       textureName, samplerName
	#define TEXTURECUBE_ARRAY_SHADOW_ARGS(textureName, samplerName) textureName, samplerName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2)                               textureName.Sample(samplerName, coord2)
	#define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)                      textureName.SampleLevel(samplerName, coord2, lod)
	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                    textureName.SampleBias(samplerName, coord2, bias)
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                textureName.SampleGrad(samplerName, coord2, ddx, ddy)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                  textureName.Sample(samplerName, float3(coord2, index))
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)         textureName.SampleLevel(samplerName, float3(coord2, index), lod)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)       textureName.SampleBias(samplerName, float3(coord2, index), bias)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy) textureName.SampleGrad(samplerName, float3(coord2, index), dpdx, dpdy)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                             textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                    textureName.SampleLevel(samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                  textureName.SampleBias(samplerName, coord3, bias)

	#ifdef UNITY_NO_CUBEMAP_ARRAY
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#else
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)           textureName.Sample(samplerName, float4(coord3, index))
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)  textureName.SampleLevel(samplerName, float4(coord3, index), lod)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)textureName.SampleBias(samplerName, float4(coord3, index), bias)
	#endif

	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                          textureName.Sample(samplerName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                 textureName.SampleLevel(samplerName, coord3, lod)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                   textureName.SampleCmpLevelZero(samplerName, (coord3).xy, (coord3).z)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)      textureName.SampleCmpLevelZero(samplerName, float3((coord3).xy, index), (coord3).z)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                 textureName.SampleCmpLevelZero(samplerName, (coord4).xyz, (coord4).w)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)    textureName.SampleCmpLevelZero(samplerName, float4((coord4).xyz, index), (coord4).w)


	#define LOAD_TEXTURE2D(textureName, unCoord2)                                       textureName.Load(int3(unCoord2, 0))
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                              textureName.Load(int3(unCoord2, lod))
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                     textureName.Load(unCoord2, sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                          textureName.Load(int4(unCoord2, index, 0))
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)        textureName.Load(int3(unCoord2, index), sampleIndex)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                 textureName.Load(int4(unCoord2, index, lod))
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                       textureName.Load(int4(unCoord3, 0))
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                              textureName.Load(int4(unCoord3, lod))

	#if GLES3_1_AEP
	#define PLATFORM_SUPPORT_GATHER
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  textureName.Gather(samplerName, coord2)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     textureName.Gather(samplerName, float3(coord2, index))
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                textureName.Gather(samplerName, coord3)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   textureName.Gather(samplerName, float4(coord3, index))
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              textureName.GatherRed(samplerName, coord2)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherGreen(samplerName, coord2)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             textureName.GatherBlue(samplerName, coord2)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            textureName.GatherAlpha(samplerName, coord2)
	#else
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)
	#endif


#elif defined(SHADER_API_GLES)


	#define uint int

	#define rcp(x) 1.0 / (x)
	#define ddx_fine ddx
	#define ddy_fine ddy
	#define asfloat
	#define asuint(x) asint(x)
	#define f32tof16
	#define f16tof32

	#define ERROR_ON_UNSUPPORTED_FUNCTION(funcName) #error #funcName is not supported on GLES 2.0

	// Initialize arbitrary structure with zero values.
	// Do not exist on some platform, in this case we need to have a standard name that call a function that will initialize all parameters to 0
	#define ZERO_INITIALIZE(type, name) name = (type)0;
	#define ZERO_INITIALIZE_ARRAY(type, name, arraySize) { for (int arrayIndex = 0; arrayIndex < arraySize; arrayIndex++) { name[arrayIndex] = (type)0; } }


	// Texture util abstraction

	#define CALCULATE_TEXTURE2D_LOD(textureName, samplerName, coord2) #error calculate Level of Detail not supported in GLES2

	// Texture abstraction

	#define TEXTURE2D(textureName)                          sampler2D textureName
	#define TEXTURE2D_ARRAY(textureName)                    samplerCUBE textureName // No support to texture2DArray
	#define TEXTURECUBE(textureName)                        samplerCUBE textureName
	#define TEXTURECUBE_ARRAY(textureName)                  samplerCUBE textureName // No supoport to textureCubeArray and can't emulate with texture2DArray
	#define TEXTURE3D(textureName)                          sampler3D textureName

	#define TEXTURE2D_FLOAT(textureName)                    sampler2D_float textureName
	#define TEXTURE2D_ARRAY_FLOAT(textureName)              TEXTURECUBE_FLOAT(textureName) // No support to texture2DArray
	#define TEXTURECUBE_FLOAT(textureName)                  samplerCUBE_float textureName
	#define TEXTURECUBE_ARRAY_FLOAT(textureName)            TEXTURECUBE_FLOAT(textureName) // No support to textureCubeArray
	#define TEXTURE3D_FLOAT(textureName)                    sampler3D_float textureName

	#define TEXTURE2D_HALF(textureName)                     sampler2D_half textureName
	#define TEXTURE2D_ARRAY_HALF(textureName)               TEXTURECUBE_HALF(textureName) // No support to texture2DArray
	#define TEXTURECUBE_HALF(textureName)                   samplerCUBE_half textureName
	#define TEXTURECUBE_ARRAY_HALF(textureName)             TEXTURECUBE_HALF(textureName) // No support to textureCubeArray
	#define TEXTURE3D_HALF(textureName)                     sampler3D_half textureName

	#define TEXTURE2D_SHADOW(textureName)                   SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW(textureName)             TEXTURECUBE_SHADOW(textureName) // No support to texture array
	#define TEXTURECUBE_SHADOW(textureName)                 SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_ARRAY_SHADOW(textureName)           TEXTURECUBE_SHADOW(textureName) // No support to texture array

	#define RW_TEXTURE2D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2D)
	#define RW_TEXTURE2D_ARRAY(type, textureName)           ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture2DArray)
	#define RW_TEXTURE3D(type, textureNam)                  ERROR_ON_UNSUPPORTED_FUNCTION(RWTexture3D)

	#define SAMPLER(samplerName)
	#define SAMPLER_CMP(samplerName)

	#define TEXTURE2D_PARAM(textureName, samplerName)                sampler2D textureName
	#define TEXTURE2D_ARRAY_PARAM(textureName, samplerName)          samplerCUBE textureName
	#define TEXTURECUBE_PARAM(textureName, samplerName)              samplerCUBE textureName
	#define TEXTURECUBE_ARRAY_PARAM(textureName, samplerName)        samplerCUBE textureName
	#define TEXTURE3D_PARAM(textureName, samplerName)                sampler3D textureName
	#define TEXTURE2D_SHADOW_PARAM(textureName, samplerName)         SHADOW2D_TEXTURE_AND_SAMPLER textureName
	#define TEXTURE2D_ARRAY_SHADOW_PARAM(textureName, samplerName)   SHADOWCUBE_TEXTURE_AND_SAMPLER textureName
	#define TEXTURECUBE_SHADOW_PARAM(textureName, samplerName)       SHADOWCUBE_TEXTURE_AND_SAMPLER textureName

	#define TEXTURE2D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_ARRAY_ARGS(textureName, samplerName)         textureName
	#define TEXTURECUBE_ARGS(textureName, samplerName)             textureName
	#define TEXTURECUBE_ARRAY_ARGS(textureName, samplerName)       textureName
	#define TEXTURE3D_ARGS(textureName, samplerName)               textureName
	#define TEXTURE2D_SHADOW_ARGS(textureName, samplerName)        textureName
	#define TEXTURE2D_ARRAY_SHADOW_ARGS(textureName, samplerName)  textureName
	#define TEXTURECUBE_SHADOW_ARGS(textureName, samplerName)      textureName

	#define SAMPLE_TEXTURE2D(textureName, samplerName, coord2) tex2D(textureName, coord2)

	#if (SHADER_TARGET >= 30)
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) tex2Dlod(textureName, float4(coord2, 0, lod))
	#else
	    // No lod support. Very poor approximation with bias.
	    #define SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, lod)
	#endif

	#define SAMPLE_TEXTURE2D_BIAS(textureName, samplerName, coord2, bias)                       tex2Dbias(textureName, float4(coord2, 0, bias))
	#define SAMPLE_TEXTURE2D_GRAD(textureName, samplerName, coord2, ddx, ddy)                   SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	#define SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)                     ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY)
	#define SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, index, lod)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_LOD)
	#define SAMPLE_TEXTURE2D_ARRAY_BIAS(textureName, samplerName, coord2, index, bias)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_BIAS)
	#define SAMPLE_TEXTURE2D_ARRAY_GRAD(textureName, samplerName, coord2, index, dpdx, dpdy)    ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_GRAD)
	#define SAMPLE_TEXTURECUBE(textureName, samplerName, coord3)                                texCUBE(textureName, coord3)
	// No lod support. Very poor approximation with bias.
	#define SAMPLE_TEXTURECUBE_LOD(textureName, samplerName, coord3, lod)                       SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, lod)
	#define SAMPLE_TEXTURECUBE_BIAS(textureName, samplerName, coord3, bias)                     texCUBEbias(textureName, float4(coord3, bias))
	#define SAMPLE_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)                   ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY)
	#define SAMPLE_TEXTURECUBE_ARRAY_LOD(textureName, samplerName, coord3, index, lod)          ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_LOD)
	#define SAMPLE_TEXTURECUBE_ARRAY_BIAS(textureName, samplerName, coord3, index, bias)        ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_BIAS)
	#define SAMPLE_TEXTURE3D(textureName, samplerName, coord3)                                  tex3D(textureName, coord3)
	#define SAMPLE_TEXTURE3D_LOD(textureName, samplerName, coord3, lod)                         ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE3D_LOD)

	#define SAMPLE_TEXTURE2D_SHADOW(textureName, samplerName, coord3)                           SHADOW2D_SAMPLE(textureName, samplerName, coord3)
	#define SAMPLE_TEXTURE2D_ARRAY_SHADOW(textureName, samplerName, coord3, index)              ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURE2D_ARRAY_SHADOW)
	#define SAMPLE_TEXTURECUBE_SHADOW(textureName, samplerName, coord4)                         SHADOWCUBE_SAMPLE(textureName, samplerName, coord4)
	#define SAMPLE_TEXTURECUBE_ARRAY_SHADOW(textureName, samplerName, coord4, index)            ERROR_ON_UNSUPPORTED_FUNCTION(SAMPLE_TEXTURECUBE_ARRAY_SHADOW)


	// Not supported. Can't define as error because shader library is calling these functions.
	#define LOAD_TEXTURE2D(textureName, unCoord2)                                               half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)                                      half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_MSAA(textureName, unCoord2, sampleIndex)                             half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, index)                                  half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_MSAA(textureName, unCoord2, index, sampleIndex)                half4(0, 0, 0, 0)
	#define LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, index, lod)                         half4(0, 0, 0, 0)
	#define LOAD_TEXTURE3D(textureName, unCoord3)                                               ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D)
	#define LOAD_TEXTURE3D_LOD(textureName, unCoord3, lod)                                      ERROR_ON_UNSUPPORTED_FUNCTION(LOAD_TEXTURE3D_LOD)

	// Gather not supported. Fallback to regular texture sampling.
	#define GATHER_TEXTURE2D(textureName, samplerName, coord2)                  ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D)
	#define GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, index)     ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURE2D_ARRAY)
	#define GATHER_TEXTURECUBE(textureName, samplerName, coord3)                ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE)
	#define GATHER_TEXTURECUBE_ARRAY(textureName, samplerName, coord3, index)   ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_TEXTURECUBE_ARRAY)
	#define GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)              ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_RED_TEXTURE2D)
	#define GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_GREEN_TEXTURE2D)
	#define GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)             ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_BLUE_TEXTURE2D)
	#define GATHER_ALPHA_TEXTURE2D(textureName, samplerName, coord2)            ERROR_ON_UNSUPPORTED_FUNCTION(GATHER_ALPHA_TEXTURE2D)

#else
#error unsupported shader api
#endif




// default flow control attributes
#ifndef UNITY_BRANCH
#   define UNITY_BRANCH
#endif
#ifndef UNITY_FLATTEN
#   define UNITY_FLATTEN
#endif
#ifndef UNITY_UNROLL
#   define UNITY_UNROLL
#endif
#ifndef UNITY_UNROLLX
#   define UNITY_UNROLLX(_x)
#endif
#ifndef UNITY_LOOP
#   define UNITY_LOOP
#endif





         

         // data across stages, stripped like the above.
         struct VertexToPixel
         {
            UNITY_POSITION(pos);
            float3 worldPos : TEXCOORD0;
            float3 worldNormal : TEXCOORD1;
            float4 worldTangent : TEXCOORD2;
             float4 texcoord0 : TEXCOORD3;
            // float4 texcoord1 : TEXCOORD4;
            // float4 texcoord2 : TEXCOORD5;

            // #if %TEXCOORD3REQUIREKEY%
            // float4 texcoord3 : TEXCOORD6;
            // #endif

            // #if %SCREENPOSREQUIREKEY%
             float4 screenPos : TEXCOORD7;
            // #endif

            #ifdef EDITOR_VISUALIZATION
              float2 vizUV : TEXCOORD8;
              float4 lightCoord : TEXCOORD9;
            #endif

            
            // #if %VERTEXCOLORREQUIREKEY%
             float4 vertexColor : COLOR;
            // #endif

            // #if %EXTRAV2F0REQUIREKEY%
             float4 extraV2F0 : TEXCOORD10;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             float4 extraV2F1 : TEXCOORD11;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             float4 extraV2F2 : TEXCOORD12;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             float4 extraV2F3 : TEXCOORD13;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // float4 extraV2F4 : TEXCOORD14;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // float4 extraV2F5 : TEXCOORD15;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // float4 extraV2F6 : TEXCOORD16;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // float4 extraV2F7 : TEXCOORD17;
            // #endif


            UNITY_VERTEX_INPUT_INSTANCE_ID
            UNITY_VERTEX_OUTPUT_STEREO
         };

         
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
                float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef UNITY_MATRIX_I_M

               #define UNITY_MATRIX_I_M   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)UNITY_MATRIX_M, transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)UNITY_MATRIX_V, norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
         
	half4 _Color;
	half _Alpha;
	half _AlphaCutoffValue;

	half _TimingSeed;

	#if TIMEISCUSTOM_ON
		float4 globalCustomTime;
	#endif

	half4 _MainTex_ST, _ShapeColor;
	half _ShapeXSpeed, _ShapeYSpeed, _ShapeColorWeight, _ShapeAlphaWeight;
	
	#if SHAPE1CONTRAST_ON
		half _ShapeContrast, _ShapeBrightness;
	#endif
	
	#if SHAPE1DISTORT_ON
		half4 _ShapeDistortTex_ST;
		half _ShapeDistortAmount, _ShapeDistortXSpeed, _ShapeDistortYSpeed;
	#endif
	
	#if SHAPE1ROTATE_ON
		half _ShapeRotationOffset, _ShapeRotationSpeed;
	#endif
	
	#if OFFSETSTREAM_ON
		half _OffsetSh1;
	#endif
	
	#if SHAPEWEIGHTS_ON
		half _Sh1BlendOffset;
	#endif

	#if SHAPE2_ON
		half4 _Shape2Tex_ST, _Shape2Color;
		half _Shape2XSpeed, _Shape2YSpeed, _Shape2ColorWeight, _Shape2AlphaWeight;
		#if SHAPE2CONTRAST_ON
			half _Shape2Contrast, _Shape2Brightness;
		#endif
		#if SHAPE2DISTORT_ON
			half4 _Shape2DistortTex_ST;
			half _Shape2DistortAmount, _Shape2DistortXSpeed, _Shape2DistortYSpeed;
		#endif
		#if SHAPE2ROTATE_ON
			half _Shape2RotationOffset, _Shape2RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh2;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh2BlendOffset;
		#endif
	#endif

	#if SHAPE3_ON
		half4 _Shape3Tex_ST, _Shape3Color;
		half _Shape3XSpeed, _Shape3YSpeed, _Shape3ColorWeight, _Shape3AlphaWeight;
		#if SHAPE3CONTRAST_ON
			half _Shape3Contrast, _Shape3Brightness;
		#endif
		#if SHAPE3DISTORT_ON
			half4 _Shape3DistortTex_ST;
			half _Shape3DistortAmount, _Shape3DistortXSpeed, _Shape3DistortYSpeed;
		#endif
		#if SHAPE3ROTATE_ON
			half _Shape3RotationOffset, _Shape3RotationSpeed;
		#endif
		#if OFFSETSTREAM_ON
			half _OffsetSh3;
		#endif
		#if SHAPEWEIGHTS_ON
			half _Sh3BlendOffset;
		#endif
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
		#if GLOWTEX_ON
			half4 _GlowTex_ST;
		#endif
	#endif

	#if MASK_ON
		half4 _MaskTex_ST;
		half _MaskPow;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if ALPHASMOOTHSTEP_ON
		half _AlphaStepMin, _AlphaStepMax;
	#endif

	#if ALPHAFADE_ON
		half _AlphaFadeAmount, _AlphaFadeSmooth, _AlphaFadePow;
	#endif

	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if WAVEUV_ON
		half _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if ROUNDWAVEUV_ON || PIXELATE_ON
		half4 _MainTex_TexelSize;
	#endif

	#if VERTOFFSET_ON
		half4 _VertOffsetTex_ST;
		half _VertOffsetAmount, _VertOffsetPower, _VertOffsetTexXSpeed, _VertOffsetTexYSpeed;
	#endif

	#if FADE_ON
		half4 _FadeTex_ST;
		half _FadeAmount, _FadeTransition, _FadePower, _FadeScrollXSpeed, _FadeScrollYSpeed;
		#if FADEBURN_ON
			half4 _FadeBurnColor, _FadeBurnTex_ST;
			half _FadeBurnWidth, _FadeBurnGlow;
		#endif
	#endif

	#if COLORGRADING_ON
		half3 _ColorGradingLight, _ColorGradingMiddle, _ColorGradingDark;
		half _ColorGradingMidPoint;
	#endif
            
	#if CAMDISTFADE_ON
		half _CamDistFadeStepMin, _CamDistFadeStepMax, _CamDistProximityFade;
	#endif

	#if RIM_ON
		half _RimBias, _RimScale, _RimPower, _RimIntensity, _RimAddAmount, _RimErodesAlpha;
		half4 _RimColor;
	#endif

	#if BACKFACETINT_ON
		half4 _BackFaceTint, _FrontFaceTint;
	#endif

	#if SHAPEDEBUG_ON
		half _DebugShape;
	#endif

	#if SHAPE1MASK_ON
		half4 _Shape1MaskTex_ST;
		half _Shape1MaskPow;
	#endif

	#if TRAILWIDTH_ON
		half _TrailWidthPower;
	#endif

	#if LIGHTANDSHADOW_ON
		half3 _All1VfxLightDir;
		half _ShadowAmount, _ShadowStepMin, _ShadowStepMax, _LightAmount;
		half4 _LightColor;
	#endif

	#if SHAPETEXOFFSET_ON
		half _RandomSh1Mult, _RandomSh2Mult, _RandomSh3Mult;
	#endif

	#if DEPTHGLOW_ON
		half _DepthGlowDist, _DepthGlowPow, _DepthGlow, _DepthGlowGlobal;
		half4 _DepthGlowColor;
    #endif

	#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
        half _ScreenUvShDistScale,_ScreenUvSh2DistScale, _ScreenUvSh3DistScale;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif




         

         

         

	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if SHAPE1DISTORT_ON
		TEXTURE2D(_ShapeDistortTex);
		SAMPLER(sampler_ShapeDistortTex);
	#endif

	#if SHAPE2_ON
		TEXTURE2D(_Shape2Tex);
		SAMPLER(sampler_Shape2Tex);
		#if SHAPE2DISTORT_ON
			TEXTURE2D(_Shape2DistortTex);
			SAMPLER(sampler_Shape2DistortTex);
		#endif
	#endif

	#if SHAPE3_ON
		TEXTURE2D(_Shape3Tex);
		SAMPLER(sampler_Shape3Tex);
		#if SHAPE3DISTORT_ON
			TEXTURE2D(_Shape3DistortTex);
			SAMPLER(sampler_Shape3DistortTex);
		#endif
	#endif

	#if GLOW_ON
		#if GLOWTEX_ON
			TEXTURE2D(_GlowTex);
			SAMPLER(sampler_GlowTex);
		#endif
	#endif

	#if MASK_ON
		TEXTURE2D(_MaskTex);
		SAMPLER(sampler_MaskTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		SAMPLER(sampler_ColorRampTex);
	#endif

	#if COLORRAMPGRAD_ON
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif
	
	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);
	#endif

	#if VERTOFFSET_ON
		TEXTURE2D(_VertOffsetTex);
		SAMPLER(sampler_VertOffsetTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);
		#if FADEBURN_ON
			TEXTURE2D(_FadeBurnTex);
			SAMPLER(sampler_FadeBurnTex);
		#endif
	#endif

	#if SHAPE1MASK_ON
		TEXTURE2D(_Shape1MaskTex);
		SAMPLER(sampler_Shape1MaskTex);
	#endif

	#if TRAILWIDTH_ON
		TEXTURE2D(_TrailWidthGradient);
		SAMPLER(sampler_TrailWidthGradient);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif

	half4 SampleTextureWithScroll(in Texture2D _tex, in SamplerState _sampler, in float2 uv, in half scrollXSpeed, in half scrollYSpeed, in float time)
	{
		half2 _uv = uv;
		_uv.x += (time * scrollXSpeed) % 1;
		_uv.y += (time * scrollYSpeed) % 1;
		return SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
	}

	half EaseOutQuint(half x) 
	{
		return 1 - pow(1 - x, 5);
	}

	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax)
	{
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}

	float2 RotateUvs(float2 uv, half rotation, half4 scaleAndTranslate)
	{
		half2 center = half2(0.5 * scaleAndTranslate.x + scaleAndTranslate.z, 0.5 * scaleAndTranslate.y + scaleAndTranslate.w);
		half cosAngle = cos(rotation);
		half sinAngle = sin(rotation);
		uv -= center;
		uv = mul(half2x2(cosAngle, -sinAngle, sinAngle, cosAngle), uv);
		uv += center;
		return uv; 
	}

	half4 GetDebugColor(float4 resColor, half4 shape1, half4 shape2, half4 shape3)
	{
		half4 res = resColor;

		//MAKE SURE THE FOLLOWING CODE BLOCK IS UNCOMMENTED-------------------------------------------
        #if SHAPEDEBUG_ON
			if(_DebugShape < 1.5) return shape1;
			#if SHAPE2_ON
				else if (_DebugShape < 2.5) return shape2;
			#endif
			#if SHAPE3_ON
				else return shape3;
			#endif
        #endif

		return res;
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//uvDistTex --> extraV2F0
		//uvSh1DistTex --> extraV2F1
		//uvSh2DistTex --> extraV2F2
		//uvSh3DistTex --> extraV2F3
 
		#if VERTOFFSET_ON
			#if TIMEISCUSTOM_ON
				const half time = v.texcoord0.z + globalCustomTime.y;
			#else
				const half time = v.texcoord0.z + _Time.y;
			#endif
				half4 offsetUv = half4(TRANSFORM_TEX(v.texcoord0.xy, _VertOffsetTex), 0, 0);
            	offsetUv.x += (time * _VertOffsetTexXSpeed) % 1;
				offsetUv.y += (time * _VertOffsetTexYSpeed) % 1;
                v.vertex.xyz += v.normal * _VertOffsetAmount * pow(SAMPLE_TEXTURE2D_LOD(_VertOffsetTex, sampler_VertOffsetTex, offsetUv, 0).r, _VertOffsetPower); 
		#endif

		#if DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F0.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif

		#if SHAPE1DISTORT_ON && !POLARUVDISTORT_ON
			d.extraV2F1.xy = TRANSFORM_TEX(v.texcoord0.xy, _ShapeDistortTex);
        #endif

		#if SHAPE2_ON
			#if SHAPE2DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F2.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape2DistortTex);;
			#endif
		#endif

		#if SHAPE3_ON
			#if SHAPE3DISTORT_ON && !POLARUVDISTORT_ON
				d.extraV2F3.xy = TRANSFORM_TEX(v.texcoord0.xy, _Shape3DistortTex);
			#endif
        #endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		//i.uvSeed -> d.texcoord0.xy

		float seed = d.texcoord0.z + _TimingSeed;
		#if TIMEISCUSTOM_ON
			const float4 shaderTime = globalCustomTime;
		#else
			const float4 shaderTime = _Time;
		#endif
		float time = shaderTime.y + seed;

		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 originalUvs = d.texcoord0.xy;
        #endif

		#if PIXELATE_ON
			half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif

		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif

		#if TWISTUV_ON
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX * _MainTex_ST.x, _TwistUvPosY * _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		#if DOODLE_ON
			half2 uvCopy = d.texcoord0.xy;
			_HandDrawnSpeed = (floor((shaderTime.x + seed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		#if SHAKEUV_ON
			half xShake = sin((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((shaderTime.x + seed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		#if WAVEUV_ON
			half2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
			half angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((time * _WaveSpeed) % 360.0);
			d.texcoord0.xy = d.texcoord0.xy + normalize(uvWave) * sin(angWave) * (_WaveStrength / 1000.0);
		#endif

		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - d.texcoord0.x);
			half yWave = ((0.5 * _MainTex_ST.y) - d.texcoord0.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
            d.texcoord0.xy += (sin((ripple + time * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif

		#if POLARUV_ON
            half2 prePolarUvs = d.texcoord0.xy;
            d.texcoord0.xy = d.texcoord0.xy - half2(0.5, 0.5);
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (1.0 * 6.28318530718), length(d.texcoord0.xy) * 2.0);
            d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		#if DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 distortUvs = TRANSFORM_TEX(d.texcoord0.xy, _DistortTex);
			#else
				half2 distortUvs = d.extraV2F0.xy;
			#endif
			distortUvs.x += ((shaderTime.x + seed) * _DistortTexXSpeed) % 1;
			distortUvs.y += ((shaderTime.x + seed) * _DistortTexYSpeed) % 1;
			#if ATLAS_ON
				d.extraV2F0.xy = half2((d.extraV2F0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.extraV2F0.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, distortUvs).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif

		#if TEXTURESCROLL_ON
			d.texcoord0.x += (time * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += (time * _TextureScrollYSpeed) % 1;
		#endif

		#if TRAILWIDTH_ON
            half width = pow(SAMPLE_TEXTURE2D(_TrailWidthGradient, sampler_TrailWidthGradient, d.texcoord0).r, _TrailWidthPower);
            d.texcoord0.y = (d.texcoord0.y * 2 - 1) / width * 0.5 + 0.5;
            clip(d.texcoord0.y);
            clip(1 - d.texcoord0.y);
        #endif

		float2 shape1Uv = d.texcoord0.xy;
        #if SHAPE2_ON
			float2 shape2Uv = shape1Uv;
        #endif
        #if SHAPE3_ON
			float2 shape3Uv = shape1Uv;
        #endif

        #if CAMDISTFADE_ON || SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half camDistance = distance(d.worldSpacePosition, _WorldSpaceCameraPos);
		#endif
		 
		#if SHAPE1SCREENUV_ON || SHAPE2SCREENUV_ON || SHAPE3SCREENUV_ON
			half2 uvOffsetPostFx = d.texcoord0.xy - originalUvs;
			d.texcoord0.xy = d.screenPos.xy / d.screenPos.w;
			d.texcoord0.x = d.texcoord0.x * (_ScreenParams.x / _ScreenParams.y);
			d.texcoord0.x -= 0.5;
			d.texcoord0.xy -= uvOffsetPostFx;
			originalUvs += uvOffsetPostFx;
			half distanceZoom = camDistance * 0.1;
			half2 scaleWithDistUvs = d.texcoord0.xy * distanceZoom + ((-distanceZoom * 0.5) + 0.5);
			#if SHAPE1SCREENUV_ON
				shape1Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvShDistScale);
			#else
				shape1Uv = originalUvs;
			#endif
			#if SHAPE2SCREENUV_ON && SHAPE2_ON
				shape2Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh2DistScale);
			#else
				#if SHAPE2_ON
					shape2Uv = originalUvs;
				#endif
			#endif
			#if SHAPE3SCREENUV_ON && SHAPE3_ON
				shape3Uv = lerp(d.texcoord0.xy, scaleWithDistUvs, _ScreenUvSh3DistScale);
			#else
				#if SHAPE3_ON
					shape3Uv = originalUvs;
				#endif
			#endif
		#endif

		shape1Uv = TRANSFORM_TEX(shape1Uv, _MainTex);
		#if OFFSETSTREAM_ON
			shape1Uv.x += i.offsetCustomData.x * _OffsetSh1;
			shape1Uv.y += i.offsetCustomData.y * _OffsetSh1;
		#endif
        #if SHAPETEXOFFSET_ON
			shape1Uv += seed * _RandomSh1Mult;
		#endif
        
		#if SHAPE1DISTORT_ON
			#if POLARUVDISTORT_ON
				half2 sh1DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _ShapeDistortTex);
			#else
				half2 sh1DistortUvs = d.extraV2F1.xy;
			#endif
			
			sh1DistortUvs.x += ((time + seed) * _ShapeDistortXSpeed) % 1;
			sh1DistortUvs.y += ((time + seed) * _ShapeDistortYSpeed) % 1;
			half distortAmount = (SAMPLE_TEXTURE2D(_ShapeDistortTex, sampler_ShapeDistortTex, sh1DistortUvs).r - 0.5) * 0.2 * _ShapeDistortAmount;
			shape1Uv.x += distortAmount;
			shape1Uv.y += distortAmount;
		#endif
		#if SHAPE1ROTATE_ON
			shape1Uv = RotateUvs(shape1Uv, _ShapeRotationOffset + ((_ShapeRotationSpeed * time) % 6.28318530718), _MainTex_ST);
		#endif

		half4 shape1 = SampleTextureWithScroll(_MainTex, sampler_MainTex, shape1Uv, _ShapeXSpeed, _ShapeYSpeed, time);
		#if SHAPE1SHAPECOLOR_ON
			shape1.a = shape1.r;
			shape1.rgb = _ShapeColor.rgb;
		#else
			shape1 *= _ShapeColor;
		#endif
		#if SHAPE1CONTRAST_ON
			#if SHAPE1SHAPECOLOR_ON
				shape1.a = saturate((shape1.a - 0.5) * _ShapeContrast + 0.5 + _ShapeBrightness);
			#else
				shape1.rgb = max(0, (shape1.rgb - half3(0.5, 0.5, 0.5)) * _ShapeContrast + half3(0.5, 0.5, 0.5) + _ShapeBrightness);
			#endif
        #endif

		half4 shape2 = 1.0;
		#if SHAPE2_ON
			shape2Uv = TRANSFORM_TEX(shape2Uv, _Shape2Tex);
			#if OFFSETSTREAM_ON
				shape2Uv.x += i.offsetCustomData.x * _OffsetSh2;
				shape2Uv.y += i.offsetCustomData.y * _OffsetSh2;
			#endif
			#if SHAPETEXOFFSET_ON
				shape2Uv += seed * _RandomSh2Mult;
			#endif
			#if SHAPE2DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh2DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape2DistortTex);
				#else
					half2 sh2DistortUvs = d.extraV2F2.xy;
				#endif
				sh2DistortUvs.x += ((time + seed) * _Shape2DistortXSpeed) % 1;
				sh2DistortUvs.y += ((time + seed) * _Shape2DistortYSpeed) % 1;
				half distortAmnt2 = (SAMPLE_TEXTURE2D(_Shape2DistortTex, sampler_Shape2DistortTex, sh2DistortUvs).r - 0.5) * 0.2 * _Shape2DistortAmount;
				shape2Uv.x += distortAmnt2;
				shape2Uv.y += distortAmnt2;
			#endif
			#if SHAPE2ROTATE_ON
				shape2Uv = RotateUvs(shape2Uv, _Shape2RotationOffset + ((_Shape2RotationSpeed * time) % 6.28318530718), _Shape2Tex_ST);
			#endif
			
			shape2 = SampleTextureWithScroll(_Shape2Tex, sampler_Shape2Tex, shape2Uv, _Shape2XSpeed, _Shape2YSpeed, time); 
			#if SHAPE2SHAPECOLOR_ON
				shape2.a = shape2.r;
				shape2.rgb = _Shape2Color.rgb;
			#else
				shape2 *= _Shape2Color;
			#endif
			#if SHAPE2CONTRAST_ON
				#if SHAPE2SHAPECOLOR_ON
					shape2.a = max(0, (shape2.a - 0.5) * _Shape2Contrast + 0.5 + _Shape2Brightness);
				#else
					shape2.rgb = max(0, (shape2.rgb - half3(0.5, 0.5, 0.5)) * _Shape2Contrast + half3(0.5, 0.5, 0.5) + _Shape2Brightness);
				#endif
			#endif
        #endif

		half4 shape3 = 1.0;
		 #if SHAPE3_ON
            shape3Uv = TRANSFORM_TEX(shape3Uv, _Shape3Tex);
			
            #if OFFSETSTREAM_ON
				shape3Uv.x += i.offsetCustomData.x * _OffsetSh3;
				shape3Uv.y += i.offsetCustomData.y * _OffsetSh3;
			#endif
            #if SHAPETEXOFFSET_ON
				shape3Uv += seed * _RandomSh3Mult;
			#endif
            #if SHAPE3DISTORT_ON
				#if POLARUVDISTORT_ON
					half2 sh3DistortUvs = TRANSFORM_TEX(d.texcoord0.xy, _Shape3DistortTex);
				#else
					half2 sh3DistortUvs = d.extraV2F3.xy;
				#endif
				sh3DistortUvs.x += ((time + seed) * _Shape3DistortXSpeed) % 1;
				sh3DistortUvs.y += ((time + seed) * _Shape3DistortYSpeed) % 1;
				half distortAmnt3 = (SAMPLE_TEXTURE2D(_Shape3DistortTex, sampler_Shape3DistortTex, sh3DistortUvs).r - 0.5) * 0.3 * _Shape3DistortAmount;
				shape3Uv.x += distortAmnt3;
				shape3Uv.y += distortAmnt3;
            #endif
            #if SHAPE3ROTATE_ON
				shape3Uv = RotateUvs(shape3Uv, _Shape3RotationOffset + ((_Shape3RotationSpeed * time) % 6.28318530718), _Shape3Tex_ST);
            #endif
				shape3 = SampleTextureWithScroll(_Shape3Tex, sampler_Shape3Tex, shape3Uv, _Shape3XSpeed, _Shape3YSpeed, time);
            #if SHAPE3SHAPECOLOR_ON
				shape3.a = shape3.r;
				shape3.rgb = _Shape3Color.rgb;
            #else
				shape3 *= _Shape3Color;
            #endif
            #if SHAPE3CONTRAST_ON
				#if SHAPE3SHAPECOLOR_ON
					shape3.a = max(0, (shape3.a - 0.5) * _Shape3Contrast + 0.5 + _Shape3Brightness);
				#else
					shape3.rgb = max(0, (shape3.rgb - half3(0.5, 0.5, 0.5)) * _Shape3Contrast + half3(0.5, 0.5, 0.5) + _Shape3Brightness);
				#endif
            #endif
		#endif

		half4 col = shape1;
		//Mix all shapes pre: change weights if custom vertex effect active
        #if SHAPEWEIGHTS_ON
			half shapeWeightOffset;
			#if SHAPE2_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh1BlendOffset;
				_ShapeColorWeight = max(0, _ShapeColorWeight + shapeWeightOffset);
				_ShapeAlphaWeight = max(0, _ShapeAlphaWeight + shapeWeightOffset);
				shapeWeightOffset = i.offsetCustomData.z * _Sh2BlendOffset;
				_Shape2ColorWeight = max(0, _Shape2ColorWeight + shapeWeightOffset);
				_Shape2AlphaWeight = max(0, _Shape2AlphaWeight + shapeWeightOffset);
			#endif
			#if SHAPE3_ON
				shapeWeightOffset = i.offsetCustomData.z * _Sh3BlendOffset;
				_Shape3ColorWeight = max(0, _Shape3ColorWeight + shapeWeightOffset);
				_Shape3AlphaWeight = max(0, _Shape3AlphaWeight + shapeWeightOffset);
			#endif
		#endif

		//Mix all shapes
        #if SHAPE2_ON
			#if !SPLITRGBA_ON
				_ShapeAlphaWeight = _ShapeColorWeight;
				_Shape2AlphaWeight = _Shape2ColorWeight;
			#endif
			#if SHAPE3_ON //Shape3 On
				#if !SPLITRGBA_ON
					_Shape3AlphaWeight = _Shape3ColorWeight;
				#endif
			#if SHAPEADD_ON
				col.rgb = ((shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight)) + (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(max(shape3.a * _Shape3AlphaWeight, max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight)));
			#else
				col.rgb = ((shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight)) * (shape3.rgb * _Shape3ColorWeight);
				col.a = saturate(((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight)) * (shape3.a * _Shape3AlphaWeight));
			#endif
			#else //Shape3 Off
				#if SHAPEADD_ON
					col.rgb = (shape1.rgb * _ShapeColorWeight) + (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate(max(shape1.a * _ShapeAlphaWeight, shape2.a * _Shape2AlphaWeight));
				#else
					col.rgb = (shape1.rgb * _ShapeColorWeight) * (shape2.rgb * _Shape2ColorWeight);
					col.a = saturate((shape1.a * _ShapeAlphaWeight) * (shape2.a * _Shape2AlphaWeight));
				#endif
			#endif
        #endif

		#if SHAPE1MASK_ON
            col = lerp(col, shape1, pow(SAMPLE_TEXTURE2D(_Shape1MaskTex, sampler_Shape1MaskTex, TRANSFORM_TEX(i.uvSeed.xy, _Shape1MaskTex)).r, _Shape1MaskPow));
        #endif
		
		#if PREMULTIPLYCOLOR_ON
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
			col.a = min(luminance, col.a);
        #endif

		col.rgb *= _Color.rgb * d.vertexColor.rgb;
		#if PREMULTIPLYALPHA_ON
			col.rgb *= col.a;
        #endif

        #if !PREMULTIPLYCOLOR_ON && (COLORRAMP_ON || ALPHAFADE_ON || COLORGRADING_ON || FADE_ON || (ADDITIVECONFIG_ON && (GLOW_ON || DEPTHGLOW_ON)))
			half luminance = 0;
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance *= col.a;
        #endif

		#if (FADE_ON || ALPHAFADE_ON) && ALPHAFADEINPUTSTREAM_ON
			col.a *= d.vertexColor.a;
			d.vertexColor.a = d.texcoord0.w;
        #endif

		#if FADE_ON
			half preFadeAlpha = col.a;
			_FadeAmount = saturate(_FadeAmount + (1 - d.vertexColor.a));
			_FadeTransition = max(0.01, _FadeTransition * EaseOutQuint(saturate(_FadeAmount)));
			half2 fadeUv;
			fadeUv = d.texcoord0.xy + seed;
			fadeUv.x += (time * _FadeScrollXSpeed) % 1;
			fadeUv.y += (time * _FadeScrollYSpeed) % 1;
			half2 tiledUvFade1 = TRANSFORM_TEX(fadeUv, _FadeTex);
			#if ADDITIVECONFIG_ON && !PREMULTIPLYCOLOR_ON
				preFadeAlpha *= luminance;
			#endif
			_FadeAmount = saturate(pow(_FadeAmount, _FadePower));
			#if FADEBURN_ON
				half2 tiledUvFade2 = TRANSFORM_TEX(fadeUv, _FadeBurnTex);
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				half fadeNaturalEdge = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fadeNaturalEdge;
				half fadeBurn = saturate(smoothstep(0.0 , _FadeTransition + _FadeBurnWidth, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				fadeBurn = fadeNaturalEdge - fadeBurn;
				_FadeBurnColor.rgb *= _FadeBurnGlow;
				col.rgb += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2).rgb * _FadeBurnColor.rgb * preFadeAlpha;
			#else
				half fadeSample = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
				float fade = saturate(smoothstep(0.0 , _FadeTransition, RemapFloat(1.0 - _FadeAmount, 0.0, 1.0, -1.0, 1.0) + fadeSample));
				col.a *= fade;
			#endif
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _FadeAmount;
			#endif
		#endif

		#if ALPHAFADE_ON
			half alphaFadeLuminance;
			_AlphaFadeAmount = saturate(_AlphaFadeAmount + (1 - d.vertexColor.a));
			_AlphaFadeAmount = saturate(pow(_AlphaFadeAmount, _AlphaFadePow));
			_AlphaFadeSmooth = max(0.01, _AlphaFadeSmooth * EaseOutQuint(saturate(_AlphaFadeAmount)));
			#if ALPHAFADEUSESHAPE1_ON
				alphaFadeLuminance = shape1.r;
			#else
				alphaFadeLuminance = luminance;
			#endif
				alphaFadeLuminance = saturate(alphaFadeLuminance - 0.001);
			#if ALPHAFADEUSEREDCHANNEL_ON
				col.a *= col.r;
			#endif
				col.a = saturate(col.a);
				float alphaFade = saturate(smoothstep(0.0 , _AlphaFadeSmooth, RemapFloat(1.0 - _AlphaFadeAmount, 0.0, 1.0, -1.0, 1.0) + alphaFadeLuminance));
				col.a *= alphaFade;
			#if ALPHAFADETRANSPARENCYTOO_ON
				col.a *= 1 - _AlphaFadeAmount;
			#endif
        #endif

		#if BACKFACETINT_ON
			col.rgb = lerp(col.rgb * _BackFaceTint, col.rgb * _FrontFaceTint, step(0, dot(d.worldSpaceNormal, d.worldSpaceViewDir)));
        #endif

		//#if LIGHTANDSHADOW_ON
			//half NdL = saturate(dot(d.worldSpaceNormal, -_All1VfxLightDir));
			//col.rgb += _LightColor * _LightAmount * NdL;
			//NdL = max(_ShadowAmount, NdL);
            //NdL = smoothstep(_ShadowStepMin, _ShadowStepMax, NdL);
            //col.rgb *= NdL;
		//#endif

		#if COLORGRADING_ON
			col.rgb *= lerp(lerp(_ColorGradingDark, _ColorGradingMiddle, luminance/_ColorGradingMidPoint),
			lerp(_ColorGradingMiddle, _ColorGradingLight, (luminance - _ColorGradingMidPoint)/(1.0 - _ColorGradingMidPoint)), step(_ColorGradingMidPoint, luminance));
        #endif

		#if COLORRAMP_ON
			half colorRampLuminance = saturate(luminance + _ColorRampLuminosity);
			#if COLORRAMPGRAD_ON
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(colorRampLuminance, 0));
			#else
				half4 colorRampRes = SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(colorRampLuminance, 0));
			#endif
			col.rgb = lerp(col.rgb, colorRampRes.rgb, _ColorRampBlend);
			col.a = lerp(col.a, saturate(col.a * colorRampRes.a), _ColorRampBlend);
        #endif

		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = floor(col.rgb / (1.0 / _PosterizeNumColors)) * (1.0 / _PosterizeNumColors);
		#endif

		#if DEPTHGLOW_ON
			half sceneDepthDiff = GetLinearEyeDepth(d.screenUV) - d.screenPos.w;
        #endif

		#if RIM_ON
			half NdV = 1 - abs(dot(d.worldSpaceNormal, d.worldSpaceViewDir));
			half rimFactor = saturate(_RimBias + _RimScale * pow(NdV, _RimPower));
			half4 rimCol = _RimColor * rimFactor;
			rimCol.rgb *= _RimIntensity;
			col.rgb = lerp(col.rgb * (rimCol.rgb + half3(1,1,1)), col.rgb + rimCol.rgb, _RimAddAmount);
			col.a = saturate(col.a * (1 - rimFactor * _RimErodesAlpha));
        #endif

		#if DEPTHGLOW_ON
			half depthGlowMask = saturate(_DepthGlowDist * pow((1 - sceneDepthDiff), _DepthGlowPow));
			col.rgb = lerp(col.rgb, _DepthGlowGlobal * col.rgb, depthGlowMask);
			half depthGlowMult = 1;
			#if ADDITIVECONFIG_ON
				depthGlowMult = luminance;
			#endif
			col.rgb += _DepthGlowColor.rgb * _DepthGlow * depthGlowMask * col.a * depthGlowMult;
        #endif

		#if GLOW_ON
			half glowMask = 1;
			#if GLOWTEX_ON
				glowMask = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, TRANSFORM_TEX(d.texcoord0.xy, _GlowTex));
			#endif
				col.rgb *= _GlowGlobal * glowMask;
				half glowMult = 1;
			#if ADDITIVECONFIG_ON
				glowMult = luminance;
			#endif
			
			col.rgb += _GlowColor.rgb * _Glow * glowMask * col.a * glowMult;
        #endif

		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
				+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
				+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
				+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
				+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
				+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif

		#if CAMDISTFADE_ON
			col.a *= 1 - saturate(smoothstep(_CamDistFadeStepMin, _CamDistFadeStepMax, camDistance));
			col.a *= smoothstep(0.0, _CamDistProximityFade, camDistance);
		#endif

		#if MASK_ON
            half2 maskUv = d.texcoord0.xy;
            #if POLARUV_ON
				maskUv = prePolarUvs;
			#endif
            half4 maskSample = SAMPLE_TEXTURE2D(_MaskTex, sampler_MaskTex, TRANSFORM_TEX(maskUv, _MaskTex));
			half mask = pow(min(maskSample.r, maskSample.a), _MaskPow);
			col.a *= mask;
        #endif

		#if ALPHASMOOTHSTEP_ON
			col.a = smoothstep(_AlphaStepMin, _AlphaStepMax, col.a);
        #endif

		half4 debugColor = col;
		#if SHAPEDEBUG_ON
			debugColor = GetDebugColor(col, shape1, shape2, shape3);
		#endif

		clip(debugColor.a - _AlphaCutoffValue - 0.01);

		//#if FOG_ON
			//UNITY_APPLY_FOG(i.fogCoord, col);
        //#endif
		
		//Don't use a starting i.color.a lower than 1 unless using vertex stream dissolve when using a FADE effect
        #if !FADE_ON && !ALPHAFADE_ON
			col.a *= _Alpha * d.vertexColor.a;
        #endif
        #if FADE_ON || ALPHAFADE_ON
			col.a *= _Alpha;
        #endif
        #if ADDITIVECONFIG_ON
			col.rgb *= col.a;
        #endif

		
		#if SHAPEDEBUG_ON
		o.Albedo = debugColor.rgb; 
		o.Alpha = debugColor.a;
		#else
		o.Albedo = col.rgb; 
		o.Alpha = col.a;
		#endif
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                  v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                  v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                  v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                  v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
                d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
                v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
                v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
                v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
                v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


         


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
            // d.texcoord1 = i.texcoord1;
            // d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
             d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
             d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
             d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
             d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
            UNITY_SETUP_INSTANCE_ID(v);
            VertexToPixel o;
            UNITY_INITIALIZE_OUTPUT(VertexToPixel,o);
            UNITY_TRANSFER_INSTANCE_ID(v,o);
            UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif


            o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
            #ifdef EDITOR_VISUALIZATION
               o.vizUV = 0;
               o.lightCoord = 0;
               if (unity_VisualizationMode == EDITORVIZ_TEXTURE)
                  o.vizUV = UnityMetaVizUV(unity_EditorViz_UVIndex, v.texcoord0.xy, v.texcoord1.xy, v.texcoord2.xy, unity_EditorViz_Texture_ST);
               else if (unity_VisualizationMode == EDITORVIZ_SHOWLIGHTMASK)
               {
                  o.vizUV = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                  o.lightCoord = mul(unity_EditorViz_WorldToLight, mul(GetObjectToWorldMatrix(), float4(v.vertex.xyz, 1)));
               }
            #endif


             o.texcoord0 = v.texcoord0;
            // o.texcoord1 = v.texcoord1;
            // o.texcoord2 = v.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // o.texcoord3 = v.texcoord3;
            // #endif

            // #if %VERTEXCOLORREQUIREKEY%
             o.vertexColor = v.vertexColor;
            // #endif

            // #if %SCREENPOSREQUIREKEY%
             o.screenPos = ComputeScreenPos(o.pos);
            // #endif

            o.worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
            o.worldNormal = UnityObjectToWorldNormal(v.normal);
            o.worldTangent = float4(UnityObjectToWorldDir(v.tangent.xyz), v.tangent.w);

            return o;
         }

         

         // fragment shader
         fixed4 Frag (VertexToPixel IN
         #if NEED_FACING
            , bool facing : SV_IsFrontFace
         #endif
         ) : SV_Target
         {
            UNITY_SETUP_INSTANCE_ID(IN);

            #ifdef FOG_COMBINED_WITH_TSPACE
               UNITY_EXTRACT_FOG_FROM_TSPACE(IN);
            #elif defined (FOG_COMBINED_WITH_WORLD_POS)
               UNITY_EXTRACT_FOG_FROM_WORLD_POS(IN);
            #else
               UNITY_EXTRACT_FOG(IN);
            #endif

            ShaderData d = CreateShaderData(IN
               #if NEED_FACING
                 , facing
              #endif
            );

            Surface l = (Surface)0;

            l.Albedo = half3(0.5, 0.5, 0.5);
            l.Normal = float3(0,0,1);
            l.Occlusion = 1;
            l.Alpha = 1;

            
            ChainSurfaceFunction(l, d);

            UnityMetaInput metaIN;
            UNITY_INITIALIZE_OUTPUT(UnityMetaInput, metaIN);
            metaIN.Albedo = l.Albedo;
            metaIN.Emission = l.Emission;
          
            #if _USESPECULAR
               metaIN.SpecularColor = l.Specular;
            #endif

            #ifdef EDITOR_VISUALIZATION
              metaIN.VizUV = IN.vizUV;
              metaIN.LightCoord = IN.lightCoord;
            #endif
            return UnityMetaFragment(metaIN);
         }
         ENDCG

      }

      



   }
   
   
   CustomEditor "AllIn1VfxLitCustomMaterialEditor"
}