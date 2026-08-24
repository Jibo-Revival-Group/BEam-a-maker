.class public final Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PairingConnectDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;",
        "Landroid/support/v4/app/DialogFragment;",
        "()V",
        "mLottieLoading",
        "Lcom/everisbank/jibobank/utils/LottieAnimationLoading;",
        "getMLottieLoading",
        "()Lcom/everisbank/jibobank/utils/LottieAnimationLoading;",
        "change",
        "",
        "dismissAllowingStateLoss",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "Companion",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final Companion:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$Companion;

.field public static final TAG:Ljava/lang/String; = "PairingConnectDialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final mLottieLoading:Lcom/everisbank/jibobank/utils/LottieAnimationLoading;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    invoke-direct {v0}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->mLottieLoading:Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final change()V
    .locals 4

    .prologue
    .line 74
    sget v2, Lcom/everis/jibo/beamaker/R$id;->rlConnected:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 76
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 77
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 80
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;)V

    .line 97
    .local v1, "listener":Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1;
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    .end local v1    # "listener":Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1;
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 98
    sget v2, Lcom/everis/jibo/beamaker/R$id;->rlConnected:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    :cond_1
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bViewConecting:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jlsh/bubleview/view/BubbleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->stop()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 71
    :cond_1
    return-void
.end method

.method public final getMLottieLoading()Lcom/everisbank/jibobank/utils/LottieAnimationLoading;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->mLottieLoading:Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 40
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f00ae

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 43
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0a0043

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 46
    .local v2, "rlDialogFullScreen":Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/view/View;

    .end local v2    # "rlDialogFullScreen":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 48
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const v0, 0x7f0a0023

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bViewConecting:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jlsh/bubleview/view/BubbleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->start()V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->mLottieLoading:Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    sget v0, Lcom/everis/jibo/beamaker/R$id;->ivPairngAnim:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "ivPairngAnim"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pairing/images"

    const/4 v3, 0x1

    const-string v4, "pairing/pairing.json"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;->show(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;ZLjava/lang/String;)V

    .line 63
    return-void
.end method
