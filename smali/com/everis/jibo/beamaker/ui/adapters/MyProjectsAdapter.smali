.class public final Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MyProjectsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;,
        Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;",
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002&\'B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\nH\u0016J\u0018\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\nH\u0016J\u0014\u0010$\u001a\u00020\u001e2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0004R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006("
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;",
        "data",
        "",
        "Lcom/everis/jibo/persistence/Project;",
        "listener",
        "Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;",
        "(Ljava/util/List;Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;)V",
        "ADD_PROYECT_ITEM",
        "",
        "EXISTING_PROYECT_ITEM",
        "FIRST_POSITION",
        "getData",
        "()Ljava/util/List;",
        "getListener",
        "()Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;",
        "mData",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "getMData",
        "setMData",
        "(Ljava/util/List;)V",
        "mImageLoader",
        "Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;",
        "getMImageLoader",
        "()Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;",
        "getItemCount",
        "getItemViewType",
        "position",
        "onBindViewHolder",
        "",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "refresh",
        "newList",
        "OnProjectClickListener",
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
.field private final ADD_PROYECT_ITEM:I

.field private final EXISTING_PROYECT_ITEM:I

.field private final FIRST_POSITION:I

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;)V
    .locals 2
    .param p1, "data"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;",
            "Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->data:Ljava/util/List;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->listener:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->ADD_PROYECT_ITEM:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->EXISTING_PROYECT_ITEM:I

    .line 29
    new-instance v0, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    .line 30
    sget-object v0, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->toParcProjectsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mData:Ljava/util/List;

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
            "Lcom/everis/jibo/persistence/Project;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->ADD_PROYECT_ITEM:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->FIRST_POSITION:I

    if-ne p1, v0, :cond_0

    .line 36
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->ADD_PROYECT_ITEM:I

    .line 37
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->EXISTING_PROYECT_ITEM:I

    goto :goto_0
.end method

.method public final getListener()Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->listener:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;

    return-object v0
.end method

.method public final getMData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public final getMImageLoader()Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const-string v2, "holder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget v2, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->FIRST_POSITION:I

    if-le p2, v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mData:Ljava/util/List;

    iget v3, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->ADD_PROYECT_ITEM:I

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    .line 45
    .local v1, "project":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mImageLoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;->getIvImageProject()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "holder.ivImageProject"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->INSTANCE:Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;

    iget-object v5, p1, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v6, "holder.itemView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "holder.itemView.context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getImgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->getMipmapResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;->load(Landroid/widget/ImageView;IZ)V

    .line 46
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;->getTvProjectName()Landroid/widget/TextView;

    move-result-object v3

    const-string v2, "holder.tvProjectName"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getProjectName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getCreationDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;->getTvDate()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "holder.tvDate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "date":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p1, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "holder.itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/everis/jibo/beamaker/R$id;->bTrash:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$1;

    invoke-direct {v3, p0, v1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$1;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v3, p1, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$2;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$2;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .end local v1    # "project":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v3, p1, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$3;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$3;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->ADD_PROYECT_ITEM:I

    if-ne p2, v0, :cond_0

    .line 70
    new-instance v0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0040

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "LayoutInflater.from(pare\u2026yect_item, parent, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0047

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "LayoutInflater.from(pare\u2026ects_item, parent, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final refresh(Ljava/util/List;)V
    .locals 1
    .param p1, "newList"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mData:Ljava/util/List;

    .line 89
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public final setMData(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->mData:Ljava/util/List;

    return-void
.end method
