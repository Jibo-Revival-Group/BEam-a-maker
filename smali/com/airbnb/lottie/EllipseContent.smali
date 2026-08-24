.class Lcom/airbnb/lottie/EllipseContent;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final ELLIPSE_CONTROL_POINT_PERCENTAGE:F = 0.55228f


# instance fields
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
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/CircleShape;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "circleShape"    # Lcom/airbnb/lottie/CircleShape;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    .line 23
    invoke-virtual {p3}, Lcom/airbnb/lottie/CircleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->name:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 25
    invoke-virtual {p3}, Lcom/airbnb/lottie/CircleShape;->getSize()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 26
    invoke-virtual {p3}, Lcom/airbnb/lottie/CircleShape;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    return-void
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/EllipseContent;->isPathValid:Z

    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 42
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 17

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/airbnb/lottie/EllipseContent;->isPathValid:Z

    if-eqz v1, :cond_0

    .line 61
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    .line 90
    :goto_0
    return-object v1

    .line 64
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    .line 68
    .local v16, "size":Landroid/graphics/PointF;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    .line 69
    .local v4, "halfWidth":F
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v1, v2

    .line 72
    .local v14, "halfHeight":F
    const v1, 0x3f0d6239    # 0.55228f

    mul-float v13, v4, v1

    .line 73
    .local v13, "cpW":F
    const v1, 0x3f0d6239    # 0.55228f

    mul-float v12, v14, v1

    .line 75
    .local v12, "cpH":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    neg-float v3, v14

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    add-float/2addr v2, v13

    neg-float v3, v14

    const/4 v5, 0x0

    sub-float/2addr v5, v12

    const/4 v7, 0x0

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    add-float v5, v1, v12

    const/4 v1, 0x0

    add-float v6, v1, v13

    const/4 v8, 0x0

    move v7, v14

    move v9, v14

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 79
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    sub-float v6, v1, v13

    neg-float v8, v4

    const/4 v1, 0x0

    add-float v9, v1, v12

    neg-float v10, v4

    const/4 v11, 0x0

    move v7, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 80
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v6, v4

    const/4 v1, 0x0

    sub-float v7, v1, v12

    const/4 v1, 0x0

    sub-float v8, v1, v13

    neg-float v9, v14

    const/4 v10, 0x0

    neg-float v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    .line 83
    .local v15, "position":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    iget v2, v15, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/EllipseContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-static {v1, v2}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V

    .line 89
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/airbnb/lottie/EllipseContent;->isPathValid:Z

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    goto/16 :goto_0
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/lottie/EllipseContent;->invalidate()V

    .line 37
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
    .line 45
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 47
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v2, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/TrimPathContent;

    .line 48
    invoke-virtual {v2}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 49
    check-cast v0, Lcom/airbnb/lottie/TrimPathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    iput-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 50
    iget-object v2, p0, Lcom/airbnb/lottie/EllipseContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method
