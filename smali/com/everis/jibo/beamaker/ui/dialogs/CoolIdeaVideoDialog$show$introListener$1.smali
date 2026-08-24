.class public final Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;
.super Ljava/lang/Object;
.source "CoolIdeaVideoDialog.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->show(Lcom/everis/jibo/persistence/CoolIdea;Z)V
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
        "com/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "(Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V",
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
.field final synthetic $bDoIt:Landroid/widget/Button;

.field final synthetic $bPlayAgain:Landroid/widget/Button;

.field final synthetic $bReDoIt:Landroid/widget/Button;

.field final synthetic $laVideo:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lcom/airbnb/lottie/LottieAnimationView;
    .param p2, "$captured_local_variable$1"    # Landroid/widget/Button;
    .param p3, "$captured_local_variable$2"    # Landroid/widget/Button;
    .param p4, "$captured_local_variable$3"    # Landroid/widget/Button;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$laVideo:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$bDoIt:Landroid/widget/Button;

    iput-object p3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$bPlayAgain:Landroid/widget/Button;

    iput-object p4, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$bReDoIt:Landroid/widget/Button;

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
    .line 98
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 90
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$laVideo:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 91
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$laVideo:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v0, p0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$bDoIt:Landroid/widget/Button;

    const-string v1, "bDoIt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$bPlayAgain:Landroid/widget/Button;

    const-string v1, "bPlayAgain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;->$bReDoIt:Landroid/widget/Button;

    const-string v1, "bReDoIt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    return-void
.end method
