.class Lcom/airbnb/lottie/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/BaseKeyframeAnimation;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseKeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lcom/airbnb/lottie/ShapeData;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/ShapeData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/ShapeData;>;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v0, Lcom/airbnb/lottie/ShapeData;

    invoke-direct {v0}, Lcom/airbnb/lottie/ShapeData;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/ShapeData;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 13
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/Path;
    .locals 4
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/ShapeData;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Lcom/airbnb/lottie/ShapeData;>;"
    iget-object v1, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/ShapeData;

    .line 17
    .local v1, "startShapeData":Lcom/airbnb/lottie/ShapeData;
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/ShapeData;

    .line 19
    .local v0, "endShapeData":Lcom/airbnb/lottie/ShapeData;
    iget-object v2, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/ShapeData;

    invoke-virtual {v2, v1, v0, p2}, Lcom/airbnb/lottie/ShapeData;->interpolateBetween(Lcom/airbnb/lottie/ShapeData;Lcom/airbnb/lottie/ShapeData;F)V

    .line 20
    iget-object v2, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/ShapeData;

    iget-object v3, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-static {v2, v3}, Lcom/airbnb/lottie/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/ShapeData;Landroid/graphics/Path;)V

    .line 21
    iget-object v2, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
