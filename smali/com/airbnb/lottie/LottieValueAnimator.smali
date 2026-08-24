.class Lcom/airbnb/lottie/LottieValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "LottieValueAnimator.java"


# instance fields
.field private duration:J

.field private endProgress:F

.field private isReversed:Z

.field private startProgress:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieValueAnimator;->isReversed:Z

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieValueAnimator;->startProgress:F

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/lottie/LottieValueAnimator;->endProgress:F

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieValueAnimator;->setFloatValues([F)V

    .line 24
    new-instance v0, Lcom/airbnb/lottie/LottieValueAnimator$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieValueAnimator$1;-><init>(Lcom/airbnb/lottie/LottieValueAnimator;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    return-void

    .line 18
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieValueAnimator;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieValueAnimator;->updateValues()V

    return-void
.end method

.method private updateValues()V
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/airbnb/lottie/LottieValueAnimator;->startProgress:F

    iget v1, p0, Lcom/airbnb/lottie/LottieValueAnimator;->endProgress:F

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieValueAnimator;->updateValues(FF)V

    .line 77
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/airbnb/lottie/LottieValueAnimator;->duration:J

    return-wide v0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/airbnb/lottie/LottieValueAnimator;->duration:J

    .line 37
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieValueAnimator;->updateValues()V

    .line 38
    return-object p0
.end method

.method setEndProgress(F)V
    .locals 0
    .param p1, "endProgress"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/airbnb/lottie/LottieValueAnimator;->endProgress:F

    .line 57
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieValueAnimator;->updateValues()V

    .line 58
    return-void
.end method

.method setIsReversed(Z)V
    .locals 0
    .param p1, "isReversed"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieValueAnimator;->isReversed:Z

    .line 47
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieValueAnimator;->updateValues()V

    .line 48
    return-void
.end method

.method setStartProgress(F)V
    .locals 0
    .param p1, "startProgress"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/airbnb/lottie/LottieValueAnimator;->startProgress:F

    .line 52
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieValueAnimator;->updateValues()V

    .line 53
    return-void
.end method

.method updateValues(FF)V
    .locals 5
    .param p1, "startProgress"    # F
    .param p2, "endProgress"    # F

    .prologue
    .line 66
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 67
    .local v1, "minValue":F
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 68
    .local v0, "maxValue":F
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/airbnb/lottie/LottieValueAnimator;->isReversed:Z

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    aput v2, v3, v4

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/airbnb/lottie/LottieValueAnimator;->isReversed:Z

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    aput v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/LottieValueAnimator;->setFloatValues([F)V

    .line 72
    iget-wide v2, p0, Lcom/airbnb/lottie/LottieValueAnimator;->duration:J

    long-to-float v2, v2

    sub-float v3, v0, v1

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    return-void

    :cond_0
    move v2, v1

    .line 68
    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1
.end method
