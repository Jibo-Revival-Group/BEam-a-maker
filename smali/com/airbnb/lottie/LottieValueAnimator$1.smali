.class Lcom/airbnb/lottie/LottieValueAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LottieValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieValueAnimator;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieValueAnimator;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieValueAnimator;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieValueAnimator;->access$000(Lcom/airbnb/lottie/LottieValueAnimator;)V

    .line 31
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieValueAnimator;->access$000(Lcom/airbnb/lottie/LottieValueAnimator;)V

    .line 27
    return-void
.end method
