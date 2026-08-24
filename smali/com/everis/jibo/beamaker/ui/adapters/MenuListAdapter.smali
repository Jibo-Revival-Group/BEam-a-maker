.class public final Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MenuListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;,
        Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\r\u001a\u00020\u0007H\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;",
        "listener",
        "Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;",
        "(Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;)V",
        "ABOUT",
        "",
        "HELP",
        "MY_PROJECTS",
        "SIZE",
        "getListener",
        "()Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;",
        "getItemCount",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "OnMenuClickListener",
        "ViewHolder",
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
.field private final ABOUT:I

.field private final HELP:I

.field private final MY_PROJECTS:I

.field private final SIZE:I

.field private final listener:Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->listener:Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->HELP:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->ABOUT:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->SIZE:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->SIZE:I

    return v0
.end method

.method public final getListener()Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->listener:Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->MY_PROJECTS:I

    if-ne p2, v0, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->getTvMenuTile()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "holder.tvMenuTile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, p1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$onBindViewHolder$1;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->HELP:I

    if-ne p2, v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->getTvMenuTile()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "holder.tvMenuTile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$onBindViewHolder$2;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$onBindViewHolder$2;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 45
    :cond_2
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->ABOUT:I

    if-ne p2, v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->getTvMenuTile()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "holder.tvMenuTile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$onBindViewHolder$3;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$onBindViewHolder$3;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "parent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;

    const-string v2, "v"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
