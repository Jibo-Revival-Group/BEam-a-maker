.class public Lcom/airbnb/lottie/RepeaterContent;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/GreedyContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private contentGroup:Lcom/airbnb/lottie/ContentGroup;

.field private final copies:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final layer:Lcom/airbnb/lottie/BaseLayer;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/Repeater;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "repeater"    # Lcom/airbnb/lottie/Repeater;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->path:Landroid/graphics/Path;

    .line 30
    iput-object p1, p0, Lcom/airbnb/lottie/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 31
    iput-object p2, p0, Lcom/airbnb/lottie/RepeaterContent;->layer:Lcom/airbnb/lottie/BaseLayer;

    .line 32
    invoke-virtual {p3}, Lcom/airbnb/lottie/Repeater;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/Repeater;->getCopies()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->copies:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->copies:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->copies:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/Repeater;->getOffset()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->offset:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->offset:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->offset:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/Repeater;->getTransform()Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/TransformKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "contentsIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/airbnb/lottie/Content;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 66
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 71
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 72
    new-instance v0, Lcom/airbnb/lottie/ContentGroup;

    iget-object v1, p0, Lcom/airbnb/lottie/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v2, p0, Lcom/airbnb/lottie/RepeaterContent;->layer:Lcom/airbnb/lottie/BaseLayer;

    const-string v3, "Repeater"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Ljava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;)V

    iput-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    goto :goto_0
.end method

.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
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
    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/ContentGroup;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 117
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # I

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 96
    iget-object v6, p0, Lcom/airbnb/lottie/RepeaterContent;->copies:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 97
    .local v0, "copies":F
    iget-object v6, p0, Lcom/airbnb/lottie/RepeaterContent;->offset:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 99
    .local v4, "offset":F
    iget-object v6, p0, Lcom/airbnb/lottie/RepeaterContent;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getStartOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float v5, v6, v7

    .line 101
    .local v5, "startOpacity":F
    iget-object v6, p0, Lcom/airbnb/lottie/RepeaterContent;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getEndOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float v1, v6, v7

    .line 102
    .local v1, "endOpacity":F
    float-to-int v6, v0

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 103
    iget-object v6, p0, Lcom/airbnb/lottie/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 104
    iget-object v6, p0, Lcom/airbnb/lottie/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/airbnb/lottie/RepeaterContent;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    int-to-float v8, v2

    add-float/2addr v8, v4

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 105
    int-to-float v6, p3

    int-to-float v7, v2

    div-float/2addr v7, v0

    invoke-static {v5, v1, v7}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v7

    mul-float v3, v6, v7

    .line 106
    .local v3, "newAlpha":F
    iget-object v6, p0, Lcom/airbnb/lottie/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    iget-object v7, p0, Lcom/airbnb/lottie/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    float-to-int v8, v3

    invoke-virtual {v6, p1, v7, v8}, Lcom/airbnb/lottie/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 102
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 108
    .end local v3    # "newAlpha":F
    :cond_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 112
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 7

    .prologue
    .line 84
    iget-object v4, p0, Lcom/airbnb/lottie/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v4}, Lcom/airbnb/lottie/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 85
    .local v0, "contentPath":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/airbnb/lottie/RepeaterContent;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 86
    iget-object v4, p0, Lcom/airbnb/lottie/RepeaterContent;->copies:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 87
    .local v1, "copies":F
    iget-object v4, p0, Lcom/airbnb/lottie/RepeaterContent;->offset:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 88
    .local v3, "offset":F
    float-to-int v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 89
    iget-object v4, p0, Lcom/airbnb/lottie/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/airbnb/lottie/RepeaterContent;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    int-to-float v6, v2

    add-float/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 90
    iget-object v4, p0, Lcom/airbnb/lottie/RepeaterContent;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/airbnb/lottie/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 88
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/RepeaterContent;->path:Landroid/graphics/Path;

    return-object v4
.end method

.method public onValueChanged()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 121
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 80
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 81
    return-void
.end method
