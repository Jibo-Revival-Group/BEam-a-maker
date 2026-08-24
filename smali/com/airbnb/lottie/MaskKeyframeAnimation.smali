.class Lcom/airbnb/lottie/MaskKeyframeAnimation;
.super Ljava/lang/Object;
.source "MaskKeyframeAnimation.java"


# instance fields
.field private final maskAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final opacityAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Mask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/airbnb/lottie/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/airbnb/lottie/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/airbnb/lottie/MaskKeyframeAnimation;->opacityAnimations:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 18
    iget-object v3, p0, Lcom/airbnb/lottie/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/Mask;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Mask;->getMaskPath()Lcom/airbnb/lottie/AnimatableShapeValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/AnimatableShapeValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/Mask;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Mask;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v1

    .line 20
    .local v1, "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    iget-object v2, p0, Lcom/airbnb/lottie/MaskKeyframeAnimation;->opacityAnimations:Ljava/util/List;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    :cond_0
    return-void
.end method


# virtual methods
.method getMaskAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/Path;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    return-object v0
.end method

.method getMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/MaskKeyframeAnimation;->masks:Ljava/util/List;

    return-object v0
.end method

.method getOpacityAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/MaskKeyframeAnimation;->opacityAnimations:Ljava/util/List;

    return-object v0
.end method
