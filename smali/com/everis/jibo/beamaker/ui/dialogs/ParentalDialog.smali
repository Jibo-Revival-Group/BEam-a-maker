.class public final Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;
.super Ljava/lang/Object;
.source "ParentalDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001*B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001bJ\u0006\u0010\u001f\u001a\u00020\u001bJ\u000e\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010$\u001a\u00020\u001bJ\u0006\u0010%\u001a\u00020\u001bJ\u0016\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006+"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;",
        "",
        "context",
        "Landroid/content/Context;",
        "callback",
        "Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;",
        "(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;)V",
        "mCallback",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;",
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
        "vBackground",
        "Landroid/view/View;",
        "getVBackground",
        "()Landroid/view/View;",
        "setVBackground",
        "(Landroid/view/View;)V",
        "anim",
        "",
        "view",
        "Landroid/widget/TextView;",
        "checkError",
        "hide",
        "hideOverlay",
        "result",
        "",
        "selected",
        "show",
        "showOverlay",
        "validate",
        "selectedValue",
        "",
        "success",
        "OnParentalCallback",
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
.field private final mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;
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

.field private mDialog:Landroid/app/Dialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public vBackground:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mContext:Ljava/lang/ref/WeakReference;

    .line 37
    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;

    return-void
.end method


# virtual methods
.method public final anim(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f010015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 171
    .local v0, "anim":Landroid/view/animation/Animation;
    const-string v1, "anim"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    return-void
.end method

.method public final checkError()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->hideOverlay(Z)V

    .line 127
    return-void
.end method

.method public final getMCallback()Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;

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
    .line 27
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getMDialog()Landroid/app/Dialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public final getVBackground()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->vBackground:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "vBackground"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 131
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Dialog;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mDialog:Landroid/app/Dialog;

    .line 132
    return-void
.end method

.method public final hideOverlay(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    .line 146
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 147
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 148
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 149
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->vBackground:Landroid/view/View;

    if-nez v3, :cond_0

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;Z)V

    .line 165
    .local v1, "listener":Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    .end local v1    # "listener":Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    return-void
.end method

.method public final selected(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 177
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$selected$1;

    invoke-direct {v0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$selected$1;-><init>(Landroid/widget/TextView;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 179
    const-wide/16 v2, 0x258

    .line 177
    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mDialog:Landroid/app/Dialog;

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

    .line 42
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->vBackground:Landroid/view/View;

    return-void
.end method

.method public final show()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 47
    sget-object v9, Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;

    invoke-virtual {v9}, Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;->getParentalProblem()Lcom/everis/jibo/beamaker/data/Parental;

    move-result-object v0

    .line 50
    .local v0, "problem":Lcom/everis/jibo/beamaker/data/Parental;
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0a0046

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 51
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f080124

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 52
    .local v3, "tvParental":Landroid/widget/TextView;
    const v9, 0x7f08012c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    .local v5, "tvValueOne":Landroid/widget/TextView;
    const v9, 0x7f08012e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 54
    .local v7, "tvValueTwo":Landroid/widget/TextView;
    const v9, 0x7f08012d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 55
    .local v6, "tvValueThree":Landroid/widget/TextView;
    const v9, 0x7f08012b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 56
    .local v4, "tvValueFour":Landroid/widget/TextView;
    const v9, 0x7f0800cd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 57
    .local v2, "rlRoot":Landroid/widget/RelativeLayout;
    const v9, 0x7f0800bc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 59
    .local v1, "rlClose":Landroid/widget/RelativeLayout;
    const-string v9, "tvParental"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Parental;->getProblem()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const-string v9, "tvValueOne"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Parental;->getOptions()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$1;

    invoke-direct {v9, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$2;

    invoke-direct {v9, p0, v0, v5}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$2;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;Lcom/everis/jibo/beamaker/data/Parental;Landroid/widget/TextView;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v9, "tvValueTwo"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Parental;->getOptions()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v12

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;

    invoke-direct {v9, p0, v0, v7}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;Lcom/everis/jibo/beamaker/data/Parental;Landroid/widget/TextView;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const-string v9, "tvValueThree"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Parental;->getOptions()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$4;

    invoke-direct {v9, p0, v0, v6}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$4;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;Lcom/everis/jibo/beamaker/data/Parental;Landroid/widget/TextView;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const-string v9, "tvValueFour"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Parental;->getOptions()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$5;

    invoke-direct {v9, p0, v0, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$5;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;Lcom/everis/jibo/beamaker/data/Parental;Landroid/widget/TextView;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v9, 0x7f080132

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "view.findViewById(R.id.vBackground)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->vBackground:Landroid/view/View;

    .line 113
    new-instance v9, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$6;

    invoke-direct {v9, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$6;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;)V

    check-cast v9, Ljava/lang/Runnable;

    .line 115
    const-wide/16 v10, 0xfa

    .line 113
    invoke-virtual {v2, v9, v10, v11}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    new-instance v10, Landroid/app/Dialog;

    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    const v11, 0x7f0f0134

    invoke-direct {v10, v9, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mDialog:Landroid/app/Dialog;

    .line 120
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_0

    invoke-virtual {v9, v12}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 121
    :cond_0
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_1

    invoke-virtual {v9, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 122
    :cond_1
    iget-object v9, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 123
    :cond_2
    return-void
.end method

.method public final showOverlay()V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 136
    .local v0, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 139
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->vBackground:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->vBackground:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v2, "vBackground"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "animation1":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    return-void
.end method

.method public final validate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "selectedValue"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "success"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "selectedValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
