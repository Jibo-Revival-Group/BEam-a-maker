.class Lcom/airbnb/lottie/GradientColorKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/airbnb/lottie/GradientColor;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/GradientColor;>;>;"
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/Keyframe;

    iget-object v1, v2, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/GradientColor;

    .line 11
    .local v1, "startValue":Lcom/airbnb/lottie/GradientColor;
    if-nez v1, :cond_0

    .line 12
    .local v0, "size":I
    :goto_0
    new-instance v2, Lcom/airbnb/lottie/GradientColor;

    new-array v3, v0, [F

    new-array v4, v0, [I

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/GradientColor;-><init>([F[I)V

    iput-object v2, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    .line 13
    return-void

    .line 11
    .end local v0    # "size":I
    :cond_0
    invoke-virtual {v1}, Lcom/airbnb/lottie/GradientColor;->getSize()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/GradientColor;
    .locals 3
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;F)",
            "Lcom/airbnb/lottie/GradientColor;"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/GradientColor;>;"
    iget-object v2, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/GradientColor;

    iget-object v1, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/GradientColor;

    invoke-virtual {v2, v0, v1, p2}, Lcom/airbnb/lottie/GradientColor;->lerp(Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/GradientColor;F)V

    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/GradientColor;

    move-result-object v0

    return-object v0
.end method
