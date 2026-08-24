.class Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "SplitDimensionPathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;

.field private final xAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final yAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/KeyframeAnimation;Lcom/airbnb/lottie/KeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "xAnimation":Lcom/airbnb/lottie/KeyframeAnimation;, "Lcom/airbnb/lottie/KeyframeAnimation<Ljava/lang/Float;>;"
    .local p2, "yAnimation":Lcom/airbnb/lottie/KeyframeAnimation;, "Lcom/airbnb/lottie/KeyframeAnimation<Ljava/lang/Float;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 17
    iput-object p2, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 18
    return-void
.end method


# virtual methods
.method public getValue()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Landroid/graphics/PointF;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->getValue()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/KeyframeAnimation;->setProgress(F)V

    .line 22
    iget-object v1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/KeyframeAnimation;->setProgress(F)V

    .line 23
    iget-object v2, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
