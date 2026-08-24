.class public final Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;
.super Ljava/lang/Object;
.source "BottomLayoutAnimation.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;->close(Landroid/view/View;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "(Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;)V",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $button:Landroid/view/View;

.field final synthetic $laClose:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $laOpen:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lcom/airbnb/lottie/LottieAnimationView;
    .param p2, "$captured_local_variable$1"    # Landroid/view/View;
    .param p3, "$captured_local_variable$2"    # Lcom/airbnb/lottie/LottieAnimationView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$laOpen:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$button:Landroid/view/View;

    iput-object p3, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$laClose:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$laOpen:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 76
    iget-object v1, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$laOpen:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v0, p0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$button:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$laOpen:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$laClose:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;->$laClose:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 81
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    return-void
.end method
