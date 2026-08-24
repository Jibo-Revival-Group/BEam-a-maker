.class Lcom/airbnb/lottie/PathKeyframe;
.super Lcom/airbnb/lottie/Keyframe;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/PathKeyframe$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/Keyframe",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 0
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "startValue"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValue"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "startFrame"    # F
    .param p6, "endFrame"    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/PathKeyframe$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "x1"    # Landroid/graphics/PointF;
    .param p3, "x2"    # Landroid/graphics/PointF;
    .param p4, "x3"    # Landroid/view/animation/Interpolator;
    .param p5, "x4"    # F
    .param p6, "x5"    # Ljava/lang/Float;
    .param p7, "x6"    # Lcom/airbnb/lottie/PathKeyframe$1;

    .prologue
    .line 11
    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/PathKeyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/lottie/PathKeyframe;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/PathKeyframe;
    .param p1, "x1"    # Landroid/graphics/Path;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/PathKeyframe;->path:Landroid/graphics/Path;

    return-object p1
.end method


# virtual methods
.method getPath()Landroid/graphics/Path;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/PathKeyframe;->path:Landroid/graphics/Path;

    return-object v0
.end method
