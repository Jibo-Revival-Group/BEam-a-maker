.class Lcom/airbnb/lottie/AnimatableTextFrame;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;,
        Lcom/airbnb/lottie/AnimatableTextFrame$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue",
        "<",
        "Lcom/airbnb/lottie/DocumentData;",
        "Lcom/airbnb/lottie/DocumentData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/DocumentData;)V
    .locals 0
    .param p2, "initialValue"    # Lcom/airbnb/lottie/DocumentData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/DocumentData;",
            ">;>;",
            "Lcom/airbnb/lottie/DocumentData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/DocumentData;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/TextKeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/TextKeyframeAnimation;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/airbnb/lottie/TextKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableTextFrame;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/TextKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
