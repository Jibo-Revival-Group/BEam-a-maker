.class public final Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;
.super Ljava/lang/Object;
.source "CoolIdeaVideoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\'B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001fJ\u0016\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u001fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006("
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;",
        "",
        "context",
        "Landroid/content/Context;",
        "callback",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;",
        "(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;)V",
        "mCallback",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;",
        "mContext",
        "Ljava/lang/ref/WeakReference;",
        "getMContext",
        "()Ljava/lang/ref/WeakReference;",
        "mDialog",
        "Landroid/app/Dialog;",
        "getMDialog",
        "()Landroid/app/Dialog;",
        "setMDialog",
        "(Landroid/app/Dialog;)V",
        "mLottieLoading",
        "Lcom/everisbank/jibobank/utils/LottieAnimationLoading;",
        "getMLottieLoading",
        "()Lcom/everisbank/jibobank/utils/LottieAnimationLoading;",
        "vBackground",
        "Landroid/view/View;",
        "getVBackground",
        "()Landroid/view/View;",
        "setVBackground",
        "(Landroid/view/View;)V",
        "hide",
        "",
        "hideOverlay",
        "show",
        "coolIdea",
        "Lcom/everis/jibo/persistence/CoolIdea;",
        "fullDialog",
        "",
        "showOverlay",
        "DoItYourSelfCallback",
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
.field private final mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mDialog:Landroid/app/Dialog;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mLottieLoading:Lcom/everisbank/jibobank/utils/LottieAnimationLoading;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public vBackground:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mContext:Ljava/lang/ref/WeakReference;

    .line 44
    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;

    .line 49
    new-instance v0, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    invoke-direct {v0}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mLottieLoading:Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    return-void
.end method


# virtual methods
.method public final getMCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;

    return-object v0
.end method

.method public final getMContext()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getMDialog()Landroid/app/Dialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v1, "mDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMLottieLoading()Lcom/everisbank/jibobank/utils/LottieAnimationLoading;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mLottieLoading:Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    return-object v0
.end method

.method public final getVBackground()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->vBackground:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "vBackground"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final hide()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v1, "mDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 144
    return-void
.end method

.method public final hideOverlay()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 159
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 161
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->vBackground:Landroid/view/View;

    if-nez v3, :cond_0

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$hideOverlay$listener$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$hideOverlay$listener$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;)V

    .line 175
    .local v1, "listener":Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$hideOverlay$listener$1;
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    .end local v1    # "listener":Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$hideOverlay$listener$1;
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    return-void
.end method

.method public final setMDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method public final setVBackground(Landroid/view/View;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->vBackground:Landroid/view/View;

    return-void
.end method

.method public final show(Lcom/everis/jibo/persistence/CoolIdea;Z)V
    .locals 14
    .param p1, "coolIdea"    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fullDialog"    # Z

    .prologue
    const-string v0, "coolIdea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 57
    .local v11, "view":Landroid/view/View;
    const v0, 0x7f080089

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    .line 58
    .local v6, "laVideo":Lcom/airbnb/lottie/LottieAnimationView;
    const v0, 0x7f08002c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 59
    .local v4, "bPlayAgain":Landroid/widget/Button;
    const v0, 0x7f0800bc

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 60
    .local v8, "rlClose":Landroid/widget/RelativeLayout;
    const v0, 0x7f080028

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 61
    .local v3, "bDoIt":Landroid/widget/Button;
    const v0, 0x7f08002d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 62
    .local v5, "bReDoIt":Landroid/widget/Button;
    const v0, 0x7f0800cd

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 63
    .local v9, "rlRoot":Landroid/widget/RelativeLayout;
    const v0, 0x7f08012a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 64
    .local v10, "tvTitle":Landroid/widget/TextView;
    const v0, 0x7f080132

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.vBackground)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->vBackground:Landroid/view/View;

    .line 66
    const-string v0, "bDoIt"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    const-string v0, "bPlayAgain"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    const-string v0, "bReDoIt"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 72
    const-wide/16 v12, 0xfa

    .line 70
    invoke-virtual {v9, v0, v12, v13}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const-string v0, "tvTitle"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/CoolIdea;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    if-eqz p2, :cond_3

    .line 77
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mLottieLoading:Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    const-string v1, "laVideo"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/CoolIdea;->getJsonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/CoolIdea;->getJsonName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/CoolIdea;->getJsonName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".json"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v6, v1, v2, v12}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;->show(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;ZLjava/lang/String;)V

    .line 88
    new-instance v7, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;

    invoke-direct {v7, v6, v3, v4, v5}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    .local v7, "introListener":Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;
    move-object v0, v7

    .line 103
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$2;

    invoke-direct {v0, p0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$2;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;Lcom/everis/jibo/persistence/CoolIdea;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$3;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$3;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$4;

    invoke-direct {v0, p0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$4;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;Lcom/everis/jibo/persistence/CoolIdea;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;Lcom/everis/jibo/persistence/CoolIdea;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/airbnb/lottie/LottieAnimationView;Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f0f0134

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mDialog:Landroid/app/Dialog;

    .line 137
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v1, "mDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 138
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    const-string v1, "mDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    const-string v1, "mDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 140
    return-void

    .line 81
    .end local v7    # "introListener":Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final showOverlay()V
    .locals 4

    .prologue
    .line 147
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 148
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 151
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->vBackground:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->vBackground:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "animation1":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    return-void
.end method
