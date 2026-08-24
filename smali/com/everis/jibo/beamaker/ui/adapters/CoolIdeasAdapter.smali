.class public final Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CoolIdeasAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;,
        Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0012H\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;",
        "data",
        "",
        "Lcom/everis/jibo/persistence/CoolIdea;",
        "listener",
        "Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;",
        "(Ljava/util/List;Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;)V",
        "getData",
        "()Ljava/util/List;",
        "getListener",
        "()Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;",
        "mImageLoader",
        "Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;",
        "getMImageLoader",
        "()Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "OnCoolIdeaClickListener",
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
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/CoolIdea;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;)V
    .locals 1
    .param p1, "data"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/CoolIdea;",
            ">;",
            "Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->data:Ljava/util/List;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->listener:Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;

    .line 20
    new-instance v0, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/CoolIdea;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getListener()Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->listener:Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;

    return-object v0
.end method

.method public final getMImageLoader()Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const-string v1, "holder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everis/jibo/persistence/CoolIdea;

    .line 32
    .local v0, "coolIdea":Lcom/everis/jibo/persistence/CoolIdea;
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    const-string v1, "holder.tvTitle"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/CoolIdea;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;->getIvCoolIdea()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "holder.ivCoolIdea"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->INSTANCE:Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;

    iget-object v4, p1, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "holder.itemView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "holder.itemView.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/CoolIdea;->getPreviewImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->getMipmapResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;->load(Landroid/widget/ImageView;IZ)V

    .line 35
    iget-object v2, p1, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, v0}, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$onBindViewHolder$1;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;Lcom/everis/jibo/persistence/CoolIdea;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;
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

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0041

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;

    const-string v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
