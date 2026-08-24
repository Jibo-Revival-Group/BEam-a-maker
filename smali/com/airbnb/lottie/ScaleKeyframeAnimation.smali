.class Lcom/airbnb/lottie/ScaleKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/ScaleXY;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/ScaleXY;>;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/ScaleXY;
    .locals 6
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;F)",
            "Lcom/airbnb/lottie/ScaleXY;"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/ScaleXY;>;"
    iget-object v2, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing values for keyframe."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_1
    iget-object v1, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/ScaleXY;

    .line 17
    .local v1, "startTransform":Lcom/airbnb/lottie/ScaleXY;
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/ScaleXY;

    .line 18
    .local v0, "endTransform":Lcom/airbnb/lottie/ScaleXY;
    new-instance v2, Lcom/airbnb/lottie/ScaleXY;

    .line 19
    invoke-virtual {v1}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v3

    .line 20
    invoke-virtual {v1}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v4

    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v5

    invoke-static {v4, v5, p2}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/ScaleXY;-><init>(FF)V

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/ScaleKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/ScaleXY;

    move-result-object v0

    return-object v0
.end method
