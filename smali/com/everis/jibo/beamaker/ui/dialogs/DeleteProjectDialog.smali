.class public final Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteProjectDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;,
        Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteProjectDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteProjectDialog.kt\ncom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog\n*L\n1#1,130:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u000eJ&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0006\u0010\u001c\u001a\u00020\u000eR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;",
        "Landroid/support/v4/app/DialogFragment;",
        "()V",
        "callback",
        "Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;",
        "getCallback",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;",
        "setCallback",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;)V",
        "mImageLoader",
        "Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;",
        "getMImageLoader",
        "()Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;",
        "hideOverlay",
        "",
        "canceled",
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
        "OnDeleteProjectListener",
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
.field public static final Companion:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;

.field public static final PROJECT:Ljava/lang/String; = "project"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DeleteProjectDialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private callback:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;
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

    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->callback:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;

    return-object v0
.end method

.method public final getMImageLoader()Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    return-object v0
.end method

.method public final hideOverlay(Z)V
    .locals 4
    .param p1, "canceled"    # Z

    .prologue
    .line 99
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 100
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 102
    sget v2, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;Z)V

    .line 123
    .local v1, "listener":Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    .end local v1    # "listener":Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    return-void
.end method

.method public final initListeners()V
    .locals 2

    .prologue
    .line 69
    sget v0, Lcom/everis/jibo/beamaker/R$id;->rlCloseButton:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$initListeners$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$initListeners$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bCloseDelProy:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$initListeners$2;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$initListeners$2;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bCancel:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$initListeners$3;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$initListeners$3;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bDeleteProject:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$initListeners$4;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$initListeners$4;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
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

    .line 43
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0f00aa

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 44
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getContext()Landroid/content/Context;

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

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "dialog.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 49
    const v0, 0x7f0a0024

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_clearFindViewByIdCache()V

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
    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->initListeners()V

    .line 56
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "project"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getImgName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "imageName":Ljava/lang/String;
    :goto_0
    sget v2, Lcom/everis/jibo/beamaker/R$id;->rlRoot:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$onViewCreated$1;

    invoke-direct {v3, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$onViewCreated$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 60
    const-wide/16 v4, 0xfa

    .line 58
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 63
    .local v1, "it":Ljava/lang/String;
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->ivDelProyDialog:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v4, "ivDelProyDialog"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->INSTANCE:Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "view.context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1}, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->getMipmapResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;->load(Landroid/widget/ImageView;IZ)V

    .line 64
    nop

    .line 65
    .end local v1    # "it":Ljava/lang/String;
    :cond_0
    return-void

    .line 56
    .end local v0    # "imageName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCallback(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->callback:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;

    return-void
.end method

.method public final showOverlay()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 88
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 91
    sget v1, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "vBackground"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    sget v1, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "animation1":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    return-void
.end method
