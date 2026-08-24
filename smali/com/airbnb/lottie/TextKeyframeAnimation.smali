.class Lcom/airbnb/lottie/TextKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/DocumentData;",
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
            "<+",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/DocumentData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/DocumentData;>;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 8
    return-void
.end method


# virtual methods
.method getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/DocumentData;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/DocumentData;",
            ">;F)",
            "Lcom/airbnb/lottie/DocumentData;"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/DocumentData;>;"
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/DocumentData;

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/TextKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/DocumentData;

    move-result-object v0

    return-object v0
.end method
