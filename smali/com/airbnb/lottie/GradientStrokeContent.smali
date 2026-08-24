.class public Lcom/airbnb/lottie/GradientStrokeContent;
.super Lcom/airbnb/lottie/BaseStrokeContent;
.source "GradientStrokeContent.java"


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private final endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final linearGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final radialGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/GradientType;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/GradientStroke;)V
    .locals 9
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "stroke"    # Lcom/airbnb/lottie/GradientStroke;

    .prologue
    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getCapType()Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    .line 34
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getJoinType()Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getWidth()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v6

    .line 35
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getDashOffset()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 33
    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    .line 21
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 22
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getGradientType()Lcom/airbnb/lottie/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->type:Lcom/airbnb/lottie/GradientType;

    .line 39
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->cacheSteps:I

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getGradientColor()Lcom/airbnb/lottie/AnimatableGradientColorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 45
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getStartPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 47
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 49
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getEndPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 52
    return-void
.end method

.method private getGradientHash()I
    .locals 6

    .prologue
    .line 116
    iget-object v4, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v4

    iget v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 117
    .local v3, "startPointProgress":I
    iget-object v4, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v4

    iget v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 118
    .local v1, "endPointProgress":I
    iget-object v4, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v4

    iget v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 119
    .local v0, "colorProgress":I
    const/16 v2, 0x11

    .line 120
    .local v2, "hash":I
    if-eqz v3, :cond_0

    .line 121
    mul-int/lit16 v2, v3, 0x20f

    .line 123
    :cond_0
    if-eqz v1, :cond_1

    .line 124
    mul-int/lit8 v4, v2, 0x1f

    mul-int v2, v4, v1

    .line 126
    :cond_1
    if-eqz v0, :cond_2

    .line 127
    mul-int/lit8 v4, v2, 0x1f

    mul-int v2, v4, v0

    .line 129
    :cond_2
    return v2
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 19

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/GradientStrokeContent;->getGradientHash()I

    move-result v13

    .line 76
    .local v13, "gradientHash":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v4, v13

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    .line 77
    .local v2, "gradient":Landroid/graphics/LinearGradient;
    if-eqz v2, :cond_0

    move-object v11, v2

    .line 91
    .end local v2    # "gradient":Landroid/graphics/LinearGradient;
    .local v11, "gradient":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 80
    .end local v11    # "gradient":Ljava/lang/Object;
    .restart local v2    # "gradient":Landroid/graphics/LinearGradient;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    .line 81
    .local v14, "startPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 82
    .local v10, "endPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/GradientColor;

    .line 83
    .local v12, "gradientColor":Lcom/airbnb/lottie/GradientColor;
    invoke-virtual {v12}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v7

    .line 84
    .local v7, "colors":[I
    invoke-virtual {v12}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v8

    .line 85
    .local v8, "positions":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-int v15, v3

    .line 86
    .local v15, "x0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v17, v0

    .line 87
    .local v17, "y0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v16, v0

    .line 88
    .local v16, "x1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v18, v0

    .line 89
    .local v18, "y1":I
    new-instance v2, Landroid/graphics/LinearGradient;

    .end local v2    # "gradient":Landroid/graphics/LinearGradient;
    int-to-float v3, v15

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v18

    int-to-float v6, v0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 90
    .restart local v2    # "gradient":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v4, v13

    invoke-virtual {v3, v4, v5, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v11, v2

    .line 91
    .restart local v11    # "gradient":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 22

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/GradientStrokeContent;->getGradientHash()I

    move-result v12

    .line 96
    .local v12, "gradientHash":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    .line 97
    .local v2, "gradient":Landroid/graphics/RadialGradient;
    if-eqz v2, :cond_0

    move-object v10, v2

    .line 112
    .end local v2    # "gradient":Landroid/graphics/RadialGradient;
    .local v10, "gradient":Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 100
    .end local v10    # "gradient":Ljava/lang/Object;
    .restart local v2    # "gradient":Landroid/graphics/RadialGradient;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    .line 101
    .local v13, "startPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 102
    .local v9, "endPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/GradientColor;

    .line 103
    .local v11, "gradientColor":Lcom/airbnb/lottie/GradientColor;
    invoke-virtual {v11}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v6

    .line 104
    .local v6, "colors":[I
    invoke-virtual {v11}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v7

    .line 105
    .local v7, "positions":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v13, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-int v14, v3

    .line 106
    .local v14, "x0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v16, v0

    .line 107
    .local v16, "y0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-int v15, v3

    .line 108
    .local v15, "x1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v17, v0

    .line 109
    .local v17, "y1":I
    sub-int v3, v15, v14

    int-to-double v0, v3

    move-wide/from16 v18, v0

    sub-int v3, v17, v16

    int-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    .line 110
    .local v5, "r":F
    new-instance v2, Landroid/graphics/RadialGradient;

    .end local v2    # "gradient":Landroid/graphics/RadialGradient;
    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 111
    .restart local v2    # "gradient":Landroid/graphics/RadialGradient;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v10, v2

    .line 112
    .restart local v10    # "gradient":Ljava/lang/Object;
    goto/16 :goto_0
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/GradientStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->type:Lcom/airbnb/lottie/GradientType;

    sget-object v1, Lcom/airbnb/lottie/GradientType;->Linear:Lcom/airbnb/lottie/GradientType;

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/airbnb/lottie/GradientStrokeContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 63
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/airbnb/lottie/GradientStrokeContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public bridge synthetic getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onValueChanged()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/lottie/BaseStrokeContent;->onValueChanged()V

    return-void
.end method

.method public bridge synthetic setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
