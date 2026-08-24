.class public final Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CreateNewVariableListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;,
        Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\nH\u0002J\u0006\u0010\u0014\u001a\u00020\u0010J\u0006\u0010\u0015\u001a\u00020\u0010J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00172\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010 \u001a\u00020\u0010H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;",
        "Landroid/support/v4/app/DialogFragment;",
        "()V",
        "callback",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;",
        "getCallback",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;",
        "setCallback",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;)V",
        "mType",
        "",
        "getMType",
        "()I",
        "setMType",
        "(I)V",
        "hideOverlay",
        "",
        "canceled",
        "",
        "action",
        "initListeners",
        "initView",
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
        "OnCreateNewListListener",
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

.field public static final Companion:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;

.field public static final LIST:I = 0x2

.field public static final SAVE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CreateNewVariableListDialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VAR:I = 0x3


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private callback:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->mType:I

    return-void
.end method

.method public static final synthetic access$hideOverlay(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;ZI)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;
    .param p1, "canceled"    # Z
    .param p2, "action"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->hideOverlay(ZI)V

    return-void
.end method

.method public static final synthetic access$showOverlay(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->showOverlay()V

    return-void
.end method

.method private final hideOverlay(ZI)V
    .locals 4
    .param p1, "canceled"    # Z
    .param p2, "action"    # I

    .prologue
    .line 106
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 107
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 109
    sget v2, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;ZI)V

    .line 139
    .local v1, "listener":Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    .end local v1    # "listener":Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 140
    return-void
.end method

.method private final showOverlay()V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 96
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 99
    sget v1, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "vBackground"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    sget v1, Lcom/everis/jibo/beamaker/R$id;->vBackground:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "animation1":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->callback:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;

    return-object v0
.end method

.method public final getMType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->mType:I

    return v0
.end method

.method public final initListeners()V
    .locals 2

    .prologue
    .line 84
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bCloseEditProy:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$initListeners$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$initListeners$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bSaveProject:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$initListeners$2;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$initListeners$2;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public final initView()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->mType:I

    .line 68
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_1
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :pswitch_0
    sget v0, Lcom/everis/jibo/beamaker/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :pswitch_1
    sget v0, Lcom/everis/jibo/beamaker/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e0092

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 45
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0f00aa

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 46
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getContext()Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getDialog()Landroid/app/Dialog;

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
    const v0, 0x7f0a0037

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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

    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->initView()V

    .line 56
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->initListeners()V

    .line 58
    sget v0, Lcom/everis/jibo/beamaker/R$id;->rlRoot:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$onViewCreated$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 60
    const-wide/16 v2, 0xfa

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method

.method public final setCallback(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->callback:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;

    return-void
.end method

.method public final setMType(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->mType:I

    return-void
.end method
