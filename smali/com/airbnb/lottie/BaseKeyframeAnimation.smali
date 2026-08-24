.class abstract Lcom/airbnb/lottie/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedKeyframe:Lcom/airbnb/lottie/Keyframe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;"
        }
    .end annotation
.end field

.field private isDiscrete:Z

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/Keyframe<TK;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    .line 28
    iput-object p1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    .line 29
    return-void
.end method

.method private getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There are no keyframes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    iget v3, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/Keyframe;->containsProgress(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    .line 77
    :goto_0
    return-object v1

    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    .local v0, "i":I
    iget-object v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/Keyframe;

    .line 67
    .local v1, "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<TK;>;"
    iget v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v1}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 68
    iput-object v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    iget v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/Keyframe;->containsProgress(F)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<TK;>;"
    check-cast v1, Lcom/airbnb/lottie/Keyframe;

    .line 74
    .restart local v1    # "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<TK;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_3
    iput-object v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    goto :goto_0
.end method

.method private getCurrentKeyframeProgress()F
    .locals 5

    .prologue
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    const/4 v3, 0x0

    .line 85
    iget-boolean v4, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    if-eqz v4, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v3

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;

    move-result-object v0

    .line 90
    .local v0, "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<TK;>;"
    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->isStatic()Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    iget v3, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v4

    sub-float v2, v3, v4

    .line 94
    .local v2, "progressIntoFrame":F
    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getEndProgress()F

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v4

    sub-float v1, v3, v4

    .line 96
    .local v1, "keyframeProgress":F
    iget-object v3, v0, Lcom/airbnb/lottie/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    div-float v4, v2, v1

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_0
.end method

.method private getEndProgress()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getEndProgress()F

    move-result v0

    goto :goto_0
.end method

.method private getStartDelayProgress()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;

    .prologue
    .line 36
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method getProgress()F
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    iget v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;

    move-result-object v0

    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method setIsDiscrete()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    .line 33
    return-void
.end method

.method setProgress(F)V
    .locals 2
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 40
    .local p0, "this":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<TK;TA;>;"
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 41
    const/4 p1, 0x0

    .line 46
    :cond_0
    :goto_0
    iget v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 54
    :cond_1
    return-void

    .line 42
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getEndProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 43
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 49
    :cond_3
    iput p1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
