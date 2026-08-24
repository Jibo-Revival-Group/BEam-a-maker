.class public final Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;
.super Ljava/lang/Object;
.source "LoadProjectSavedDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0012H\u0002R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;",
        "",
        "context",
        "Landroid/content/Context;",
        "mLoadProjectSavedDialogCallback",
        "Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;",
        "(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;)V",
        "mContext",
        "Ljava/lang/ref/WeakReference;",
        "mDialog",
        "Landroid/app/Dialog;",
        "vBackground",
        "Landroid/view/View;",
        "getVBackground",
        "()Landroid/view/View;",
        "setVBackground",
        "(Landroid/view/View;)V",
        "dismiss",
        "",
        "hideOverlay",
        "show",
        "project",
        "Lcom/everis/jibo/persistence/Project;",
        "showOverlay",
        "LoadProjectSavedDialogCallback",
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
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private final mLoadProjectSavedDialogCallback:Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;

.field public vBackground:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "mLoadProjectSavedDialogCallback"    # Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mLoadProjectSavedDialogCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mLoadProjectSavedDialogCallback:Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getMDialog$p(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)Landroid/app/Dialog;
    .locals 2
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v1, "mDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getMLoadProjectSavedDialogCallback$p(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;
    .locals 1
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mLoadProjectSavedDialogCallback:Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;

    return-object v0
.end method

.method public static final synthetic access$setMDialog$p(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;
    .param p1, "<set-?>"    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 19
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static final synthetic access$showOverlay(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->showOverlay()V

    return-void
.end method

.method private final showOverlay()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 84
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 87
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->vBackground:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->vBackground:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "animation1":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v1, "mDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    return-void
.end method

.method public final getVBackground()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->vBackground:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "vBackground"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final hideOverlay()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 95
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 97
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->vBackground:Landroid/view/View;

    if-nez v3, :cond_0

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$hideOverlay$listener$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$hideOverlay$listener$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)V

    .line 111
    .local v1, "listener":Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$hideOverlay$listener$1;
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    .end local v1    # "listener":Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$hideOverlay$listener$1;
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
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

    .line 26
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->vBackground:Landroid/view/View;

    return-void
.end method

.method public final show(Lcom/everis/jibo/persistence/Project;)V
    .locals 14
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v9, "project"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0a0044

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 33
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 34
    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getImageName()Ljava/lang/String;

    move-result-object v11

    .line 35
    const-string v12, "mipmap"

    .line 36
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 33
    :goto_0
    invoke-virtual {v10, v11, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 38
    .local v3, "identifier":I
    :goto_1
    const v9, 0x7f0800cd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 39
    .local v6, "rlRoot":Landroid/widget/RelativeLayout;
    const v9, 0x7f080132

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "view.findViewById(R.id.vBackground)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->vBackground:Landroid/view/View;

    .line 40
    const v9, 0x7f08012a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 41
    .local v7, "tvTitle":Landroid/widget/TextView;
    const v9, 0x7f080075

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 42
    .local v4, "ivDialog":Landroid/widget/ImageView;
    const v9, 0x7f080025

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    .local v1, "bCreateNewProject":Landroid/widget/Button;
    const v9, 0x7f08002a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 44
    .local v2, "bLoadSavedProject":Landroid/widget/Button;
    const v9, 0x7f080023

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 45
    .local v0, "bCloseProjectDialog":Landroid/widget/ImageButton;
    const v9, 0x7f0800bd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 47
    .local v5, "rlCloseButton":Landroid/widget/RelativeLayout;
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$1;

    invoke-direct {v9, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)V

    check-cast v9, Ljava/lang/Runnable;

    .line 49
    const-wide/16 v10, 0xfa

    .line 47
    invoke-virtual {v6, v9, v10, v11}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    const-string v9, "tvTitle"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    if-eqz v9, :cond_5

    .line 52
    const v10, 0x7f0e0079

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 51
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$2;

    invoke-direct {v9, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$2;-><init>(Landroid/widget/ImageButton;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$3;

    invoke-direct {v9, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$3;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$4;

    invoke-direct {v9, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$4;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$5;

    invoke-direct {v9, p0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$5;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;Lcom/everis/jibo/persistence/Project;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v10, Landroid/app/Dialog;

    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    const v11, 0x7f0f0134

    invoke-direct {v10, v9, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mDialog:Landroid/app/Dialog;

    .line 76
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v9, :cond_0

    const-string v10, "mDialog"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 77
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v9, :cond_1

    const-string v10, "mDialog"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v9, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 78
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v9, :cond_2

    const-string v10, "mDialog"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 79
    return-void

    .line 36
    .end local v0    # "bCloseProjectDialog":Landroid/widget/ImageButton;
    .end local v1    # "bCreateNewProject":Landroid/widget/Button;
    .end local v2    # "bLoadSavedProject":Landroid/widget/Button;
    .end local v3    # "identifier":I
    .end local v4    # "ivDialog":Landroid/widget/ImageView;
    .end local v5    # "rlCloseButton":Landroid/widget/RelativeLayout;
    .end local v6    # "rlRoot":Landroid/widget/RelativeLayout;
    .end local v7    # "tvTitle":Landroid/widget/TextView;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 37
    :cond_4
    const v3, 0x7f0c003a

    goto/16 :goto_1

    .line 51
    .restart local v0    # "bCloseProjectDialog":Landroid/widget/ImageButton;
    .restart local v1    # "bCreateNewProject":Landroid/widget/Button;
    .restart local v2    # "bLoadSavedProject":Landroid/widget/Button;
    .restart local v3    # "identifier":I
    .restart local v4    # "ivDialog":Landroid/widget/ImageView;
    .restart local v5    # "rlCloseButton":Landroid/widget/RelativeLayout;
    .restart local v6    # "rlRoot":Landroid/widget/RelativeLayout;
    .restart local v7    # "tvTitle":Landroid/widget/TextView;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method
