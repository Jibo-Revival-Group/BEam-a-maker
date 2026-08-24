.class Lcom/airbnb/lottie/Layer$Factory;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method static newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;
    .locals 26
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    .line 211
    .local v25, "bounds":Landroid/graphics/Rect;
    new-instance v0, Lcom/airbnb/lottie/Layer;

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v3, "root"

    const-wide/16 v4, -0x1

    sget-object v6, Lcom/airbnb/lottie/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/Layer$LayerType;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 214
    invoke-static {}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 215
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/Layer$MatteType;->None:Lcom/airbnb/lottie/Layer$MatteType;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILcom/airbnb/lottie/AnimatableTextFrame;Lcom/airbnb/lottie/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/Layer$1;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;
    .locals 47
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 220
    const-string v5, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 221
    .local v35, "layerName":Ljava/lang/String;
    const-string v5, "refId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, "refId":Ljava/lang/String;
    const-string v5, ".ai"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "cl"

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ai"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    :cond_0
    const-string v5, "Convert your Illustrator layers to shape layers."

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 227
    :cond_1
    const-string v5, "ind"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 228
    .local v36, "layerId":J
    const/16 v18, 0x0

    .line 229
    .local v18, "solidWidth":I
    const/16 v19, 0x0

    .line 230
    .local v19, "solidHeight":I
    const/16 v20, 0x0

    .line 231
    .local v20, "solidColor":I
    const/16 v23, 0x0

    .line 232
    .local v23, "preCompWidth":I
    const/16 v24, 0x0

    .line 234
    .local v24, "preCompHeight":I
    const-string v5, "ty"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    .line 235
    .local v38, "layerTypeInt":I
    sget-object v5, Lcom/airbnb/lottie/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v5}, Lcom/airbnb/lottie/Layer$LayerType;->ordinal()I

    move-result v5

    move/from16 v0, v38

    if-ge v0, v5, :cond_4

    .line 236
    invoke-static {}, Lcom/airbnb/lottie/Layer$LayerType;->values()[Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v5

    aget-object v12, v5, v38

    .line 241
    .local v12, "layerType":Lcom/airbnb/lottie/Layer$LayerType;
    :goto_0
    sget-object v5, Lcom/airbnb/lottie/Layer$LayerType;->Text:Lcom/airbnb/lottie/Layer$LayerType;

    if-ne v12, v5, :cond_2

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Lcom/airbnb/lottie/Utils;->isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z

    move-result v5

    if-nez v5, :cond_2

    .line 242
    sget-object v12, Lcom/airbnb/lottie/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/Layer$LayerType;

    .line 243
    const-string v5, "Text is only supported on bodymovin >= 4.8.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 246
    :cond_2
    const-string v5, "parent"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 248
    .local v13, "parentId":J
    sget-object v5, Lcom/airbnb/lottie/Layer$LayerType;->Solid:Lcom/airbnb/lottie/Layer$LayerType;

    if-ne v12, v5, :cond_3

    .line 249
    const-string v5, "sw"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v18, v0

    .line 250
    const-string v5, "sh"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v19, v0

    .line 251
    const-string v5, "sc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    .line 258
    :cond_3
    const-string v5, "ks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object v17

    .line 260
    .local v17, "transform":Lcom/airbnb/lottie/AnimatableTransform;
    invoke-static {}, Lcom/airbnb/lottie/Layer$MatteType;->values()[Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v5

    const-string v6, "tt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    aget-object v28, v5, v6

    .line 261
    .local v28, "matteType":Lcom/airbnb/lottie/Layer$MatteType;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v16, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Mask;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v27, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;>;"
    const-string v5, "masksProperties"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    .line 264
    .local v34, "jsonMasks":Lorg/json/JSONArray;
    if-eqz v34, :cond_5

    .line 265
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_1
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_5

    .line 266
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/Mask$Factory;->newMask(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Mask;

    move-result-object v39

    .line 267
    .local v39, "mask":Lcom/airbnb/lottie/Mask;
    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .line 238
    .end local v12    # "layerType":Lcom/airbnb/lottie/Layer$LayerType;
    .end local v13    # "parentId":J
    .end local v16    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Mask;>;"
    .end local v17    # "transform":Lcom/airbnb/lottie/AnimatableTransform;
    .end local v27    # "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;>;"
    .end local v28    # "matteType":Lcom/airbnb/lottie/Layer$MatteType;
    .end local v32    # "i":I
    .end local v34    # "jsonMasks":Lorg/json/JSONArray;
    .end local v39    # "mask":Lcom/airbnb/lottie/Mask;
    :cond_4
    sget-object v12, Lcom/airbnb/lottie/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/Layer$LayerType;

    .restart local v12    # "layerType":Lcom/airbnb/lottie/Layer$LayerType;
    goto/16 :goto_0

    .line 271
    .restart local v13    # "parentId":J
    .restart local v16    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Mask;>;"
    .restart local v17    # "transform":Lcom/airbnb/lottie/AnimatableTransform;
    .restart local v27    # "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;>;"
    .restart local v28    # "matteType":Lcom/airbnb/lottie/Layer$MatteType;
    .restart local v34    # "jsonMasks":Lorg/json/JSONArray;
    :cond_5
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v43, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/ContentModel;>;"
    const-string v5, "shapes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v44

    .line 273
    .local v44, "shapesJson":Lorg/json/JSONArray;
    if-eqz v44, :cond_7

    .line 274
    const/16 v32, 0x0

    .restart local v32    # "i":I
    :goto_2
    invoke-virtual/range {v44 .. v44}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_7

    .line 275
    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/ShapeGroup;->shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ContentModel;

    move-result-object v42

    .line 276
    .local v42, "shape":Lcom/airbnb/lottie/ContentModel;
    if-eqz v42, :cond_6

    .line 277
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_6
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 282
    .end local v32    # "i":I
    .end local v42    # "shape":Lcom/airbnb/lottie/ContentModel;
    :cond_7
    const/16 v25, 0x0

    .line 283
    .local v25, "text":Lcom/airbnb/lottie/AnimatableTextFrame;
    const/16 v26, 0x0

    .line 284
    .local v26, "textProperties":Lcom/airbnb/lottie/AnimatableTextProperties;
    const-string v5, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v46

    .line 285
    .local v46, "textJson":Lorg/json/JSONObject;
    if-eqz v46, :cond_8

    .line 286
    const-string v5, "d"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/AnimatableTextFrame$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTextFrame;

    move-result-object v25

    .line 287
    const-string v5, "a"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    .line 288
    .local v41, "propertiesJson":Lorg/json/JSONObject;
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatableTextProperties$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTextProperties;

    move-result-object v26

    .line 291
    .end local v41    # "propertiesJson":Lorg/json/JSONObject;
    :cond_8
    const-string v5, "ef"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 292
    const-string v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape."

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 297
    :cond_9
    const-string v5, "sr"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v21, v0

    .line 298
    .local v21, "timeStretch":F
    const-string v5, "st"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v45, v0

    .line 299
    .local v45, "startFrame":F
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v31

    .line 300
    .local v31, "frames":F
    div-float v22, v45, v31

    .line 302
    .local v22, "startProgress":F
    sget-object v5, Lcom/airbnb/lottie/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/Layer$LayerType;

    if-ne v12, v5, :cond_a

    .line 303
    const-string v5, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v23, v0

    .line 304
    const-string v5, "h"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v24, v0

    .line 310
    :cond_a
    const-string v5, "ip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v33, v5, v21

    .line 311
    .local v33, "inFrame":F
    const-string v5, "op"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v40, v5, v21

    .line 314
    .local v40, "outFrame":F
    const/4 v5, 0x0

    cmpl-float v5, v33, v5

    if-lez v5, :cond_b

    .line 315
    new-instance v2, Lcom/airbnb/lottie/Keyframe;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 316
    .local v2, "preKeyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v2    # "preKeyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;"
    :cond_b
    const/4 v5, 0x0

    cmpl-float v5, v40, v5

    if-lez v5, :cond_d

    .line 321
    :goto_3
    new-instance v3, Lcom/airbnb/lottie/Keyframe;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 322
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object/from16 v4, p1

    move/from16 v8, v33

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 323
    .local v3, "visibleKeyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v4, Lcom/airbnb/lottie/Keyframe;

    const/4 v5, 0x0

    .line 326
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object/from16 v5, p1

    move/from16 v9, v40

    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 327
    .local v4, "outKeyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const/16 v29, 0x0

    .line 330
    .local v29, "timeRemapping":Lcom/airbnb/lottie/AnimatableFloatValue;
    const-string v5, "tm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 331
    const-string v5, "tm"

    .line 332
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v29

    .line 335
    :cond_c
    new-instance v6, Lcom/airbnb/lottie/Layer;

    const/16 v30, 0x0

    move-object/from16 v7, v43

    move-object/from16 v8, p1

    move-object/from16 v9, v35

    move-wide/from16 v10, v36

    invoke-direct/range {v6 .. v30}, Lcom/airbnb/lottie/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILcom/airbnb/lottie/AnimatableTextFrame;Lcom/airbnb/lottie/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/Layer$1;)V

    return-object v6

    .line 320
    .end local v3    # "visibleKeyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;"
    .end local v4    # "outKeyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;"
    .end local v29    # "timeRemapping":Lcom/airbnb/lottie/AnimatableFloatValue;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-float v0, v6

    move/from16 v40, v0

    goto :goto_3
.end method
