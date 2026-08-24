.class Lcom/airbnb/lottie/AnimatableTransform$Factory;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/AnimatableTransform;
    .locals 9

    .prologue
    .line 75
    new-instance v1, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    .line 76
    .local v1, "anchorPoint":Lcom/airbnb/lottie/AnimatablePathValue;
    new-instance v2, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v2}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    .line 77
    .local v2, "position":Lcom/airbnb/lottie/AnimatableValue;, "Lcom/airbnb/lottie/AnimatableValue<Landroid/graphics/PointF;>;"
    invoke-static {}, Lcom/airbnb/lottie/AnimatableScaleValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v3

    .line 78
    .local v3, "scale":Lcom/airbnb/lottie/AnimatableScaleValue;
    invoke-static {}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v4

    .line 79
    .local v4, "rotation":Lcom/airbnb/lottie/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v5

    .line 80
    .local v5, "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    invoke-static {}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v6

    .line 81
    .local v6, "startOpacity":Lcom/airbnb/lottie/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v7

    .line 82
    .local v7, "endOpacity":Lcom/airbnb/lottie/AnimatableFloatValue;
    new-instance v0, Lcom/airbnb/lottie/AnimatableTransform;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/AnimatableTransform;-><init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableTransform$1;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTransform;
    .locals 18
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 88
    const/4 v4, 0x0

    .line 90
    .local v4, "position":Lcom/airbnb/lottie/AnimatableValue;, "Lcom/airbnb/lottie/AnimatableValue<Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    .line 92
    .local v6, "rotation":Lcom/airbnb/lottie/AnimatableFloatValue;
    const/4 v8, 0x0

    .line 93
    .local v8, "startOpacity":Lcom/airbnb/lottie/AnimatableFloatValue;
    const/4 v9, 0x0

    .line 94
    .local v9, "endOpacity":Lcom/airbnb/lottie/AnimatableFloatValue;
    const-string v2, "a"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 95
    .local v11, "anchorJson":Lorg/json/JSONObject;
    if-eqz v11, :cond_3

    .line 96
    new-instance v3, Lcom/airbnb/lottie/AnimatablePathValue;

    const-string v2, "k"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    .line 105
    .local v3, "anchorPoint":Lcom/airbnb/lottie/AnimatablePathValue;
    :goto_0
    const-string v2, "p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 106
    .local v14, "positionJson":Lorg/json/JSONObject;
    if-eqz v14, :cond_4

    .line 108
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v4

    .line 113
    :goto_1
    const-string v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 114
    .local v16, "scaleJson":Lorg/json/JSONObject;
    if-eqz v16, :cond_5

    .line 115
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatableScaleValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v5

    .line 121
    .local v5, "scale":Lcom/airbnb/lottie/AnimatableScaleValue;
    :goto_2
    const-string v2, "r"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 122
    .local v15, "rotationJson":Lorg/json/JSONObject;
    if-nez v15, :cond_0

    .line 123
    const-string v2, "rz"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 125
    :cond_0
    if-eqz v15, :cond_6

    .line 126
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v15, v0, v2}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v6

    .line 131
    :goto_3
    const-string v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 132
    .local v13, "opacityJson":Lorg/json/JSONObject;
    if-eqz v13, :cond_7

    .line 133
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v7

    .line 139
    .local v7, "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    :goto_4
    const-string v2, "so"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 140
    .local v17, "startOpacityJson":Lorg/json/JSONObject;
    if-eqz v17, :cond_1

    .line 141
    const/4 v2, 0x0

    .line 142
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v8

    .line 145
    :cond_1
    const-string v2, "eo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 146
    .local v12, "endOpacityJson":Lorg/json/JSONObject;
    if-eqz v12, :cond_2

    .line 147
    const/4 v2, 0x0

    .line 148
    move-object/from16 v0, p1

    invoke-static {v12, v0, v2}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v9

    .line 151
    :cond_2
    new-instance v2, Lcom/airbnb/lottie/AnimatableTransform;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/lottie/AnimatableTransform;-><init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableTransform$1;)V

    return-object v2

    .line 100
    .end local v3    # "anchorPoint":Lcom/airbnb/lottie/AnimatablePathValue;
    .end local v5    # "scale":Lcom/airbnb/lottie/AnimatableScaleValue;
    .end local v7    # "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    .end local v12    # "endOpacityJson":Lorg/json/JSONObject;
    .end local v13    # "opacityJson":Lorg/json/JSONObject;
    .end local v14    # "positionJson":Lorg/json/JSONObject;
    .end local v15    # "rotationJson":Lorg/json/JSONObject;
    .end local v16    # "scaleJson":Lorg/json/JSONObject;
    .end local v17    # "startOpacityJson":Lorg/json/JSONObject;
    :cond_3
    const-string v2, "LOTTIE"

    const-string v10, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v3, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v3}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    .restart local v3    # "anchorPoint":Lcom/airbnb/lottie/AnimatablePathValue;
    goto/16 :goto_0

    .line 110
    .restart local v14    # "positionJson":Lorg/json/JSONObject;
    :cond_4
    const-string v2, "position"

    invoke-static {v2}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    .restart local v16    # "scaleJson":Lorg/json/JSONObject;
    :cond_5
    new-instance v5, Lcom/airbnb/lottie/AnimatableScaleValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v10, Lcom/airbnb/lottie/ScaleXY;

    invoke-direct {v10}, Lcom/airbnb/lottie/ScaleXY;-><init>()V

    invoke-direct {v5, v2, v10}, Lcom/airbnb/lottie/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/ScaleXY;)V

    .restart local v5    # "scale":Lcom/airbnb/lottie/AnimatableScaleValue;
    goto :goto_2

    .line 128
    .restart local v15    # "rotationJson":Lorg/json/JSONObject;
    :cond_6
    const-string v2, "rotation"

    invoke-static {v2}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    goto :goto_3

    .line 136
    .restart local v13    # "opacityJson":Lorg/json/JSONObject;
    :cond_7
    new-instance v7, Lcom/airbnb/lottie/AnimatableIntegerValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v2, v10}, Lcom/airbnb/lottie/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    .restart local v7    # "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    goto :goto_4
.end method

.method private static throwMissingTransform(Ljava/lang/String;)V
    .locals 3
    .param p0, "missingProperty"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transform for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
