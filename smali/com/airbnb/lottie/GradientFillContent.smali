.class Lcom/airbnb/lottie/GradientFillContent;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


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

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation
.end field

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

.field private final shaderMatrix:Landroid/graphics/Matrix;

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
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/GradientFill;)V
    .locals 4
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "fill"    # Lcom/airbnb/lottie/GradientFill;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 26
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->name:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 43
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getGradientType()Lcom/airbnb/lottie/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->type:Lcom/airbnb/lottie/GradientType;

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 45
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    .line 47
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getGradientColor()Lcom/airbnb/lottie/AnimatableGradientColorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 51
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 55
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getStartPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 59
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getEndPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 62
    return-void
.end method

.method private getGradientHash()I
    .locals 6

    .prologue
    .line 167
    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v4

    iget v5, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 168
    .local v3, "startPointProgress":I
    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v4

    iget v5, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 169
    .local v1, "endPointProgress":I
    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v4

    iget v5, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 170
    .local v0, "colorProgress":I
    const/16 v2, 0x11

    .line 171
    .local v2, "hash":I
    if-eqz v3, :cond_0

    .line 172
    mul-int/lit16 v2, v3, 0x20f

    .line 174
    :cond_0
    if-eqz v1, :cond_1

    .line 175
    mul-int/lit8 v4, v2, 0x1f

    mul-int v2, v4, v1

    .line 177
    :cond_1
    if-eqz v0, :cond_2

    .line 178
    mul-int/lit8 v4, v2, 0x1f

    mul-int v2, v4, v0

    .line 180
    :cond_2
    return v2
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 13

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getGradientHash()I

    move-result v11

    .line 130
    .local v11, "gradientHash":I
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    .line 131
    .local v0, "gradient":Landroid/graphics/LinearGradient;
    if-eqz v0, :cond_0

    move-object v9, v0

    .line 142
    .end local v0    # "gradient":Landroid/graphics/LinearGradient;
    .local v9, "gradient":Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 134
    .end local v9    # "gradient":Ljava/lang/Object;
    .restart local v0    # "gradient":Landroid/graphics/LinearGradient;
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    .line 135
    .local v12, "startPoint":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 136
    .local v8, "endPoint":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/GradientColor;

    .line 137
    .local v10, "gradientColor":Lcom/airbnb/lottie/GradientColor;
    invoke-virtual {v10}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v5

    .line 138
    .local v5, "colors":[I
    invoke-virtual {v10}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v6

    .line 139
    .local v6, "positions":[F
    new-instance v0, Landroid/graphics/LinearGradient;

    .end local v0    # "gradient":Landroid/graphics/LinearGradient;
    iget v1, v12, Landroid/graphics/PointF;->x:F

    iget v2, v12, Landroid/graphics/PointF;->y:F

    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 141
    .restart local v0    # "gradient":Landroid/graphics/LinearGradient;
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v9, v0

    .line 142
    .restart local v9    # "gradient":Ljava/lang/Object;
    goto :goto_0
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 20

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/GradientFillContent;->getGradientHash()I

    move-result v12

    .line 147
    .local v12, "gradientHash":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    .line 148
    .local v2, "gradient":Landroid/graphics/RadialGradient;
    if-eqz v2, :cond_0

    move-object v10, v2

    .line 163
    .end local v2    # "gradient":Landroid/graphics/RadialGradient;
    .local v10, "gradient":Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 151
    .end local v10    # "gradient":Ljava/lang/Object;
    .restart local v2    # "gradient":Landroid/graphics/RadialGradient;
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    .line 152
    .local v13, "startPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 153
    .local v9, "endPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v8}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/GradientColor;

    .line 154
    .local v11, "gradientColor":Lcom/airbnb/lottie/GradientColor;
    invoke-virtual {v11}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v6

    .line 155
    .local v6, "colors":[I
    invoke-virtual {v11}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v7

    .line 156
    .local v7, "positions":[F
    iget v3, v13, Landroid/graphics/PointF;->x:F

    .line 157
    .local v3, "x0":F
    iget v4, v13, Landroid/graphics/PointF;->y:F

    .line 158
    .local v4, "y0":F
    iget v14, v9, Landroid/graphics/PointF;->x:F

    .line 159
    .local v14, "x1":F
    iget v15, v9, Landroid/graphics/PointF;->y:F

    .line 160
    .local v15, "y1":F
    sub-float v8, v14, v3

    float-to-double v0, v8

    move-wide/from16 v16, v0

    sub-float v8, v15, v4

    float-to-double v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 161
    .local v5, "r":F
    new-instance v2, Landroid/graphics/RadialGradient;

    .end local v2    # "gradient":Landroid/graphics/RadialGradient;
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 162
    .restart local v2    # "gradient":Landroid/graphics/RadialGradient;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v10, v2

    .line 163
    .restart local v10    # "gradient":Ljava/lang/Object;
    goto :goto_0
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
    .line 122
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 78
    const-string v3, "GradientFillContent#draw"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 81
    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v3}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v4, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 87
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->type:Lcom/airbnb/lottie/GradientType;

    sget-object v4, Lcom/airbnb/lottie/GradientType;->Linear:Lcom/airbnb/lottie/GradientType;

    if-ne v3, v4, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v2

    .line 92
    .local v2, "shader":Landroid/graphics/Shader;
    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 93
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 94
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    int-to-float v3, p3

    div-float v4, v3, v6

    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    .line 97
    .local v0, "alpha":I
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    const-string v3, "GradientFillContent#draw"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 101
    return-void

    .line 90
    .end local v0    # "alpha":I
    .end local v2    # "shader":Landroid/graphics/Shader;
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v2

    .restart local v2    # "shader":Landroid/graphics/Shader;
    goto :goto_1
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 104
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 111
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 66
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 70
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 71
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v2, v0, Lcom/airbnb/lottie/PathContent;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method
