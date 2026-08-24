.class public final Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TutorialFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;,
        Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u001a\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;",
        "Landroid/support/v4/app/DialogFragment;",
        "()V",
        "mCallback",
        "Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;",
        "setMCallback",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;)V",
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
        "onPause",
        "",
        "onResume",
        "onViewCreated",
        "view",
        "Companion",
        "OnTutorialListener",
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
.field public static final Companion:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "TutorialFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getMCallback()Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;

    if-nez v0, :cond_0

    const-string v1, "mCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 39
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$onCreateDialog$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$onCreateDialog$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;)V

    check-cast v1, Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 52
    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 56
    const v0, 0x7f0a003c

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 77
    sget v0, Lcom/everis/jibo/beamaker/R$id;->ivBg:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->unregisterSensorManager()V

    .line 78
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bViewConecting:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jlsh/bubleview/view/BubbleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->stop()V

    .line 79
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 70
    sget v0, Lcom/everis/jibo/beamaker/R$id;->ivBg:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->registerSensorManager()V

    .line 71
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bViewConecting:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jlsh/bubleview/view/BubbleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->start()V

    .line 73
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->setCancelable(Z)V

    .line 63
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bSign:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$onViewCreated$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public final setMCallback(Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;

    return-void
.end method
