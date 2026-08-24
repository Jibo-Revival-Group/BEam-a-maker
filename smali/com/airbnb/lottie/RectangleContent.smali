.class Lcom/airbnb/lottie/RectangleContent;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private final sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/RectangleShape;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "rectShape"    # Lcom/airbnb/lottie/RectangleShape;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 24
    invoke-virtual {p3}, Lcom/airbnb/lottie/RectangleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->name:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/airbnb/lottie/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 26
    invoke-virtual {p3}, Lcom/airbnb/lottie/RectangleShape;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 27
    invoke-virtual {p3}, Lcom/airbnb/lottie/RectangleShape;->getSize()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/RectangleShape;->getCornerRadius()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 37
    return-void
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/RectangleContent;->isPathValid:Z

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 50
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 12

    .prologue
    .line 64
    iget-boolean v6, p0, Lcom/airbnb/lottie/RectangleContent;->isPathValid:Z

    if-eqz v6, :cond_0

    .line 65
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    .line 128
    :goto_0
    return-object v6

    .line 68
    :cond_0
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 70
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 71
    .local v5, "size":Landroid/graphics/PointF;
    iget v6, v5, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v1, v6, v7

    .line 72
    .local v1, "halfWidth":F
    iget v6, v5, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v0, v6, v7

    .line 73
    .local v0, "halfHeight":F
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez v6, :cond_6

    const/4 v4, 0x0

    .line 74
    .local v4, "radius":F
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 75
    .local v2, "maxRadius":F
    cmpl-float v6, v4, v2

    if-lez v6, :cond_1

    .line 76
    move v4, v2

    .line 80
    :cond_1
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 82
    .local v3, "position":Landroid/graphics/PointF;
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    add-float/2addr v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    sub-float/2addr v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 87
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v1

    iget v10, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 94
    :cond_2
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    add-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 96
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    .line 97
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    iget v10, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 104
    :cond_3
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    add-float/2addr v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_4

    .line 107
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    iget v9, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 114
    :cond_4
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    sub-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    .line 117
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    iget v9, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v1

    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 123
    :cond_5
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 125
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/airbnb/lottie/RectangleContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-static {v6, v7}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V

    .line 127
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/airbnb/lottie/RectangleContent;->isPathValid:Z

    .line 128
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    goto/16 :goto_0

    .line 73
    .end local v2    # "maxRadius":F
    .end local v3    # "position":Landroid/graphics/PointF;
    .end local v4    # "radius":F
    :cond_6
    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto/16 :goto_1
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/lottie/RectangleContent;->invalidate()V

    .line 45
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
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
    .line 53
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 55
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v2, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/TrimPathContent;

    .line 56
    invoke-virtual {v2}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 57
    check-cast v0, Lcom/airbnb/lottie/TrimPathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 58
    iget-object v2, p0, Lcom/airbnb/lottie/RectangleContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method
