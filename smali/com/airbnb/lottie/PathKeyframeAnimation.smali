.class Lcom/airbnb/lottie/PathKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "PathKeyframeAnimation.java"


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
.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private pathMeasureKeyframe:Lcom/airbnb/lottie/PathKeyframe;

.field private final point:Landroid/graphics/PointF;

.field private final pos:[F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/Keyframe<Landroid/graphics/PointF;>;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pos:[F

    .line 17
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;
    .locals 7
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
    .local p1, "keyframe":Lcom/airbnb/lottie/Keyframe;, "Lcom/airbnb/lottie/Keyframe<Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    .line 20
    move-object v1, p1

    check-cast v1, Lcom/airbnb/lottie/PathKeyframe;

    .line 21
    .local v1, "pathKeyframe":Lcom/airbnb/lottie/PathKeyframe;
    invoke-virtual {v1}, Lcom/airbnb/lottie/PathKeyframe;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 22
    .local v0, "path":Landroid/graphics/Path;
    if-nez v0, :cond_0

    .line 23
    iget-object v2, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    .line 33
    :goto_0
    return-object v2

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/PathKeyframe;

    if-eq v2, v1, :cond_1

    .line 27
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v0, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 28
    iput-object v1, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/PathKeyframe;

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pos:[F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 32
    iget-object v2, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pos:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->pos:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    iget-object v2, p0, Lcom/airbnb/lottie/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    goto :goto_0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/PathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
