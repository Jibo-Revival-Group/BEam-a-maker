.class Lcom/airbnb/lottie/ContentGroup;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeGroup;)V
    .locals 6
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "shapeGroup"    # Lcom/airbnb/lottie/ShapeGroup;

    .prologue
    .line 49
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/airbnb/lottie/ContentGroup;->contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 51
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/ContentGroup;->findTransform(Ljava/util/List;)Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Ljava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Ljava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;)V
    .locals 5
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "transform"    # Lcom/airbnb/lottie/AnimatableTransform;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/BaseLayer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableTransform;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p4, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 39
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->path:Landroid/graphics/Path;

    .line 40
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 56
    iput-object p3, p0, Lcom/airbnb/lottie/ContentGroup;->name:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/airbnb/lottie/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 58
    iput-object p4, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    .line 60
    if-eqz p5, :cond_0

    .line 61
    invoke-virtual {p5}, Lcom/airbnb/lottie/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/TransformKeyframeAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 62
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v3, p2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 63
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 66
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "greedyContents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/GreedyContent;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 68
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 69
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v3, v0, Lcom/airbnb/lottie/GreedyContent;

    if-eqz v3, :cond_1

    .line 70
    check-cast v0, Lcom/airbnb/lottie/GreedyContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/GreedyContent;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p4, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/airbnb/lottie/GreedyContent;->absorbContent(Ljava/util/ListIterator;)V

    .line 74
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 77
    :cond_3
    return-void
.end method

.method private static contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p1, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/BaseLayer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ContentModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/ContentModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .local v1, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 20
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/ContentModel;

    invoke-interface {v3, p0, p1}, Lcom/airbnb/lottie/ContentModel;->toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;

    move-result-object v0

    .line 21
    .local v0, "content":Lcom/airbnb/lottie/Content;
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    :cond_1
    return-object v1
.end method

.method static findTransform(Ljava/util/List;)Lcom/airbnb/lottie/AnimatableTransform;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ContentModel;",
            ">;)",
            "Lcom/airbnb/lottie/AnimatableTransform;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/ContentModel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 30
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ContentModel;

    .line 31
    .local v0, "contentModel":Lcom/airbnb/lottie/ContentModel;
    instance-of v2, v0, Lcom/airbnb/lottie/AnimatableTransform;

    if-eqz v2, :cond_0

    .line 32
    check-cast v0, Lcom/airbnb/lottie/AnimatableTransform;

    .line 35
    .end local v0    # "contentModel":Lcom/airbnb/lottie/ContentModel;
    :goto_1
    return-object v0

    .line 29
    .restart local v0    # "contentModel":Lcom/airbnb/lottie/ContentModel;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "contentModel":Lcom/airbnb/lottie/ContentModel;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 90
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 91
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v3, v0, Lcom/airbnb/lottie/DrawingContent;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 92
    check-cast v1, Lcom/airbnb/lottie/DrawingContent;

    .line 93
    .local v1, "drawingContent":Lcom/airbnb/lottie/DrawingContent;
    if-eqz p2, :cond_0

    invoke-interface {v0}, Lcom/airbnb/lottie/Content;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, p3}, Lcom/airbnb/lottie/DrawingContent;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 89
    .end local v1    # "drawingContent":Lcom/airbnb/lottie/DrawingContent;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .restart local v1    # "drawingContent":Lcom/airbnb/lottie/DrawingContent;
    :cond_2
    invoke-interface {v1, p1, p2, p3}, Lcom/airbnb/lottie/DrawingContent;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 100
    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    .end local v1    # "drawingContent":Lcom/airbnb/lottie/DrawingContent;
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 152
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 154
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 156
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 157
    invoke-virtual {v3}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    int-to-float v4, p3

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    mul-float/2addr v3, v5

    float-to-int v0, v3

    .line 163
    .local v0, "alpha":I
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 164
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 165
    .local v1, "content":Ljava/lang/Object;
    instance-of v3, v1, Lcom/airbnb/lottie/DrawingContent;

    if-eqz v3, :cond_0

    .line 166
    check-cast v1, Lcom/airbnb/lottie/DrawingContent;

    .end local v1    # "content":Ljava/lang/Object;
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v3, v0}, Lcom/airbnb/lottie/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 163
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 159
    .end local v0    # "alpha":I
    .end local v2    # "i":I
    :cond_1
    move v0, p3

    .restart local v0    # "alpha":I
    goto :goto_0

    .line 169
    .restart local v2    # "i":I
    :cond_2
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 173
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 177
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 178
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 179
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v2, v0, Lcom/airbnb/lottie/DrawingContent;

    if-eqz v2, :cond_1

    .line 180
    check-cast v0, Lcom/airbnb/lottie/DrawingContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v2, v3}, Lcom/airbnb/lottie/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 177
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 184
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 185
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 186
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 187
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 184
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 193
    :cond_3
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 5

    .prologue
    .line 137
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 138
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 142
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 143
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 144
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v2, v0, Lcom/airbnb/lottie/PathContent;

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->path:Landroid/graphics/Path;

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 142
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->path:Landroid/graphics/Path;

    return-object v2
.end method

.method getPathList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->pathContents:Ljava/util/List;

    if-nez v2, :cond_1

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->pathContents:Ljava/util/List;

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 119
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v2, v0, Lcom/airbnb/lottie/PathContent;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->pathContents:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->pathContents:Ljava/util/List;

    return-object v2
.end method

.method getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 132
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 81
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 5
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
    .line 104
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v2, "myContentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 108
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 109
    .local v0, "content":Lcom/airbnb/lottie/Content;
    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/airbnb/lottie/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 110
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 112
    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    :cond_0
    return-void
.end method
