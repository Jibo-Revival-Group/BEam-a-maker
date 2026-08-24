.class Lcom/airbnb/lottie/LottieDrawable$3;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->playAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$endFrame:I

.field final synthetic val$startFrame:I


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieDrawable;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$3;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$3;->val$startFrame:I

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$3;->val$endFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$3;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$3;->val$startFrame:I

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable$3;->val$endFrame:I

    int-to-float v2, v2

    .line 383
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v3

    div-float/2addr v2, v3

    .line 382
    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(FF)V

    .line 384
    return-void
.end method
