.class public final Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "EditProjectDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;,
        Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u000eJ&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\u000eH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;",
        "Landroid/support/v4/app/DialogFragment;",
        "()V",
        "callback",
        "Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;",
        "getCallback",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;",
        "setCallback",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;)V",
        "mImageLoader",
        "Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;",
        "getMImageLoader",
        "()Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;",
        "hideOverlay",
        "",
        "action",
        "",
        "initListeners",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "showOverlay",
        "Companion",
        "OnEditProjectListener",
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
.field public static final CLOSE_DIALOG:I = 0x0

.field public static final Companion:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$Companion;

.field public static final DELETE:I = 0x1

.field public static final PROJECT:Ljava/lang/String; = "project"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SAVE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "EditProjectDialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private callback:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 27
    new-instance v0, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    return-void
.end method

.method public static final synthetic access$hideOverlay(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;I)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;
    .param p1, "action"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->hideOverlay(I)V

    return-void
.end method

.method public static final synthetic access$showOverlay(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->showOverlay()V

    return-void
.end method

.method private final hideOverlay(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 102
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 103
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 105
    sget v2, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;I)V

    .line 139
    .local v1, "listener":Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    .end local v1    # "listener":Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 140
    return-void
.end method

.method private final showOverlay()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 91
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 94
    sget v1, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "vBackground"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    sget v1, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "animation1":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->callback:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;

    return-object v0
.end method

.method public final getMImageLoader()Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    return-object v0
.end method

.method public final initListeners()V
    .locals 2

    .prologue
    .line 72
    sget v0, Lcom/everis/jibo/beamaker/R$id;->rlCloseButton:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$initListeners$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$initListeners$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bCloseEditProy:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$initListeners$2;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$initListeners$2;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bSaveProject:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$initListeners$3;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$initListeners$3;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bDeleteProject:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$initListeners$4;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$initListeners$4;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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

    .line 47
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0f00aa

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 48
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v3, 0x7f050035

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 50
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "dialog.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 51
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->initListeners()V

    .line 58
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "project"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    move-object v1, v2

    .line 59
    .local v1, "project":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getImgName()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "imageName":Ljava/lang/String;
    :cond_0
    sget v2, Lcom/everis/jibo/beamaker/R$id;->rlRoot:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$onViewCreated$1;

    invoke-direct {v3, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$onViewCreated$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 63
    const-wide/16 v4, 0xfa

    .line 61
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->ivEditProyDialog:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v4, "ivEditProyDialog"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->INSTANCE:Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "view.context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v4, v5, v0}, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->getMipmapResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;->load(Landroid/widget/ImageView;IZ)V

    .line 66
    sget v2, Lcom/everis/jibo/beamaker/R$id;->etProjectName:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getProjectName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    .end local v0    # "imageName":Ljava/lang/String;
    .end local v1    # "project":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :cond_2
    move-object v1, v0

    .line 58
    goto :goto_0
.end method

.method public final setCallback(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->callback:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;

    return-void
.end method
