.class Lcom/airbnb/lottie/MergePathsContent;
.super Ljava/lang/Object;
.source "MergePathsContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/GreedyContent;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final firstPath:Landroid/graphics/Path;

.field private final mergePaths:Lcom/airbnb/lottie/MergePaths;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final pathContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final remainderPath:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/MergePaths;)V
    .locals 2
    .param p1, "mergePaths"    # Lcom/airbnb/lottie/MergePaths;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Merge paths are not supported pre-KitKat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/MergePaths;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->name:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/airbnb/lottie/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/MergePaths;

    .line 27
    return-void
.end method

.method private addPaths()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v2, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private opFirstPathWithRest(Landroid/graphics/Path$Op;)V
    .locals 9
    .param p1, "op"    # Landroid/graphics/Path$Op;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 84
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 85
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 87
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x1

    if-lt v1, v6, :cond_2

    .line 88
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    .line 90
    .local v0, "content":Lcom/airbnb/lottie/PathContent;
    instance-of v6, v0, Lcom/airbnb/lottie/ContentGroup;

    if-eqz v6, :cond_0

    move-object v6, v0

    .line 91
    check-cast v6, Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v6}, Lcom/airbnb/lottie/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v5

    .line 92
    .local v5, "pathList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/PathContent;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 93
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v6}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    .local v4, "path":Landroid/graphics/Path;
    move-object v6, v0

    .line 94
    check-cast v6, Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v6}, Lcom/airbnb/lottie/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 95
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 92
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 98
    .end local v2    # "j":I
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v5    # "pathList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/PathContent;>;"
    :cond_0
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 87
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 102
    .end local v0    # "content":Lcom/airbnb/lottie/PathContent;
    :cond_2
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/PathContent;

    .line 103
    .local v3, "lastContent":Lcom/airbnb/lottie/PathContent;
    instance-of v6, v3, Lcom/airbnb/lottie/ContentGroup;

    if-eqz v6, :cond_3

    move-object v6, v3

    .line 104
    check-cast v6, Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v6}, Lcom/airbnb/lottie/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v5

    .line 105
    .restart local v5    # "pathList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/PathContent;>;"
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 106
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v6}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    .restart local v4    # "path":Landroid/graphics/Path;
    move-object v6, v3

    .line 107
    check-cast v6, Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v6}, Lcom/airbnb/lottie/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 108
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 111
    .end local v2    # "j":I
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v5    # "pathList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/PathContent;>;"
    :cond_3
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-interface {v3}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 114
    :cond_4
    iget-object v6, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v8, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 115
    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "contents":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/airbnb/lottie/Content;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 35
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v1, v0, Lcom/airbnb/lottie/PathContent;

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 51
    sget-object v0, Lcom/airbnb/lottie/MergePathsContent$1;->$SwitchMap$com$airbnb$lottie$MergePaths$MergePathsMode:[I

    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/MergePaths;

    invoke-virtual {v1}, Lcom/airbnb/lottie/MergePaths;->getMode()Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/MergePaths$MergePathsMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 53
    :pswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/MergePathsContent;->addPaths()V

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 59
    :pswitch_2
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 62
    :pswitch_3
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 65
    :pswitch_4
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1, p1, p2}, Lcom/airbnb/lottie/PathContent;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
