.class Lcom/airbnb/lottie/TransformKeyframeAnimation;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final endOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private final opacity:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final position:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final scale:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;"
        }
    .end annotation
.end field

.field private final startOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/AnimatableTransform;)V
    .locals 2
    .param p1, "animatableTransform"    # Lcom/airbnb/lottie/AnimatableTransform;

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 21
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getAnchorPoint()Lcom/airbnb/lottie/AnimatablePathValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 22
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 23
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getScale()Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableScaleValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 24
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getRotation()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 25
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 26
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getStartOpacity()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getStartOpacity()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 31
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getEndOpacity()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getEndOpacity()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 36
    :goto_1
    return-void

    .line 29
    :cond_0
    iput-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    goto :goto_0

    .line 34
    :cond_1
    iput-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    goto :goto_1
.end method


# virtual methods
.method addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .locals 1
    .param p1, "layer"    # Lcom/airbnb/lottie/BaseLayer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 50
    :cond_1
    return-void
.end method

.method addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 64
    :cond_1
    return-void
.end method

.method public getEndOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    return-object v0
.end method

.method getMatrix()Landroid/graphics/Matrix;
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 80
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 81
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 82
    .local v1, "position":Landroid/graphics/PointF;
    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 87
    .local v2, "rotation":F
    cmpl-float v4, v2, v7

    if-eqz v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/ScaleXY;

    .line 92
    .local v3, "scaleTransform":Lcom/airbnb/lottie/ScaleXY;
    invoke-virtual {v3}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v4

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_4

    .line 93
    :cond_3
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v5

    invoke-virtual {v3}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 96
    :cond_4
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 97
    .local v0, "anchorPoint":Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_5

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_6

    .line 98
    :cond_5
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    neg-float v5, v5

    iget v6, v0, Landroid/graphics/PointF;->y:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 100
    :cond_6
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    return-object v4
.end method

.method getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .locals 10
    .param p1, "amount"    # F

    .prologue
    .line 107
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 108
    .local v1, "position":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 109
    .local v0, "anchorPoint":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/ScaleXY;

    .line 110
    .local v3, "scale":Lcom/airbnb/lottie/ScaleXY;
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 112
    .local v2, "rotation":F
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 113
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, p1

    iget v6, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, p1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 114
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 115
    invoke-virtual {v3}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v5

    float-to-double v6, v5

    float-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    .line 116
    invoke-virtual {v3}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v6

    float-to-double v6, v6

    float-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 114
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 117
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    mul-float v5, v2, p1

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 119
    iget-object v4, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    return-object v4
.end method

.method getOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/KeyframeAnimation;

    return-object v0
.end method

.method public getStartOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    return-object v0
.end method
