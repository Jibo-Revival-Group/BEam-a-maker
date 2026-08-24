.class Lcom/airbnb/lottie/Keyframe$Factory;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# static fields
.field private static final pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/Keyframe;
    .locals 23
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/AnimatableValue$Factory",
            "<TT;>;)",
            "Lcom/airbnb/lottie/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p3, "valueFactory":Lcom/airbnb/lottie/AnimatableValue$Factory;, "Lcom/airbnb/lottie/AnimatableValue$Factory<TT;>;"
    const/4 v11, 0x0

    .line 116
    .local v11, "cp1":Landroid/graphics/PointF;
    const/4 v13, 0x0

    .line 117
    .local v13, "cp2":Landroid/graphics/PointF;
    const/4 v9, 0x0

    .line 118
    .local v9, "startFrame":F
    const/16 v21, 0x0

    .line 119
    .local v21, "startValue":Ljava/lang/Object;, "TT;"
    const/4 v15, 0x0

    .line 120
    .local v15, "endValue":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 122
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    const-string v4, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 123
    const-string v4, "t"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v9, v4

    .line 124
    const-string v4, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 125
    .local v22, "startValueJson":Ljava/lang/Object;
    if-eqz v22, :cond_9

    .line 126
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v16, v21

    .line 129
    .end local v21    # "startValue":Ljava/lang/Object;, "TT;"
    .local v16, "startValue":Ljava/lang/Object;, "TT;"
    :goto_0
    const-string v4, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 130
    .local v17, "endValueJson":Ljava/lang/Object;
    if-eqz v17, :cond_0

    .line 131
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v15

    .line 134
    .end local v15    # "endValue":Ljava/lang/Object;, "TT;"
    :cond_0
    const-string v4, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 135
    .local v12, "cp1Json":Lorg/json/JSONObject;
    const-string v4, "i"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 136
    .local v14, "cp2Json":Lorg/json/JSONObject;
    if-eqz v12, :cond_1

    if-eqz v14, :cond_1

    .line 137
    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v11

    .line 138
    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v13

    .line 141
    :cond_1
    const-string v4, "h"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/16 v19, 0x1

    .line 143
    .local v19, "hold":Z
    :goto_1
    if-eqz v19, :cond_4

    .line 146
    .local v16, "endValue":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/airbnb/lottie/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object/from16 v15, v16

    .end local v16    # "endValue":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_2
    move-object v7, v15

    move-object/from16 v6, v16

    .line 170
    .end local v12    # "cp1Json":Lorg/json/JSONObject;
    .end local v14    # "cp2Json":Lorg/json/JSONObject;
    .end local v17    # "endValueJson":Ljava/lang/Object;
    .end local v19    # "hold":Z
    .end local v22    # "startValueJson":Ljava/lang/Object;
    :goto_3
    new-instance v4, Lcom/airbnb/lottie/Keyframe;

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object v4

    .line 141
    .restart local v12    # "cp1Json":Lorg/json/JSONObject;
    .restart local v14    # "cp2Json":Lorg/json/JSONObject;
    .local v16, "startValue":Ljava/lang/Object;, "TT;"
    .restart local v17    # "endValueJson":Ljava/lang/Object;
    .restart local v22    # "startValueJson":Ljava/lang/Object;
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 147
    .restart local v19    # "hold":Z
    :cond_4
    if-eqz v11, :cond_7

    .line 148
    iget v4, v11, Landroid/graphics/PointF;->x:F

    move/from16 v0, p2

    neg-float v5, v0

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v11, Landroid/graphics/PointF;->x:F

    .line 149
    iget v4, v11, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v11, Landroid/graphics/PointF;->y:F

    .line 150
    iget v4, v13, Landroid/graphics/PointF;->x:F

    move/from16 v0, p2

    neg-float v5, v0

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v13, Landroid/graphics/PointF;->x:F

    .line 151
    iget v4, v13, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v13, Landroid/graphics/PointF;->y:F

    .line 152
    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v11, Landroid/graphics/PointF;->y:F

    iget v6, v13, Landroid/graphics/PointF;->x:F

    iget v7, v13, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5, v6, v7}, Lcom/airbnb/lottie/Utils;->hashFor(FFFF)I

    move-result v18

    .line 153
    .local v18, "hash":I
    sget-object v4, Lcom/airbnb/lottie/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/ref/WeakReference;

    .line 154
    .local v20, "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    if-eqz v20, :cond_5

    .line 155
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    check-cast v8, Landroid/view/animation/Interpolator;

    .line 157
    .restart local v8    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5
    if-eqz v20, :cond_6

    if-nez v8, :cond_2

    .line 158
    :cond_6
    iget v4, v11, Landroid/graphics/PointF;->x:F

    div-float v4, v4, p2

    iget v5, v11, Landroid/graphics/PointF;->y:F

    div-float v5, v5, p2

    iget v6, v13, Landroid/graphics/PointF;->x:F

    div-float v6, v6, p2

    iget v7, v13, Landroid/graphics/PointF;->y:F

    div-float v7, v7, p2

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 160
    sget-object v4, Lcom/airbnb/lottie/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 164
    .end local v18    # "hash":I
    .end local v20    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v8

    goto/16 :goto_2

    .line 167
    .end local v12    # "cp1Json":Lorg/json/JSONObject;
    .end local v14    # "cp2Json":Lorg/json/JSONObject;
    .end local v16    # "startValue":Ljava/lang/Object;, "TT;"
    .end local v17    # "endValueJson":Ljava/lang/Object;
    .end local v19    # "hold":Z
    .end local v22    # "startValueJson":Ljava/lang/Object;
    .restart local v15    # "endValue":Ljava/lang/Object;, "TT;"
    .restart local v21    # "startValue":Ljava/lang/Object;, "TT;"
    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v21

    .line 168
    move-object/from16 v15, v21

    move-object v7, v15

    move-object/from16 v6, v21

    goto/16 :goto_3

    .restart local v22    # "startValueJson":Ljava/lang/Object;
    :cond_9
    move-object/from16 v16, v21

    .end local v21    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v16    # "startValue":Ljava/lang/Object;, "TT;"
    goto/16 :goto_0
.end method

.method static parseKeyframes(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Ljava/util/List;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONArray;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/AnimatableValue$Factory",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p3, "valueFactory":Lcom/airbnb/lottie/AnimatableValue$Factory;, "Lcom/airbnb/lottie/AnimatableValue$Factory<TT;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 176
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 179
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Keyframe<TT;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 181
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/airbnb/lottie/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/Keyframe;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_1
    invoke-static {v1}, Lcom/airbnb/lottie/Keyframe;->setEndFrames(Ljava/util/List;)V

    goto :goto_0
.end method
