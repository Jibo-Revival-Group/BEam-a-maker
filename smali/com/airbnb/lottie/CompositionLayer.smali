.class Lcom/airbnb/lottie/CompositionLayer;
.super Lcom/airbnb/lottie/BaseLayer;
.source "CompositionLayer.java"


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final originalClipRect:Landroid/graphics/Rect;

.field private final rect:Landroid/graphics/RectF;

.field private final timeRemapping:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 14
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layerModel"    # Lcom/airbnb/lottie/Layer;
    .param p4, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/Layer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Layer;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "layerModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Layer;>;"
    invoke-direct/range {p0 .. p2}, Lcom/airbnb/lottie/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    .line 18
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    .line 19
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 20
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->originalClipRect:Landroid/graphics/Rect;

    .line 21
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/Layer;->getTimeRemapping()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v11

    .line 31
    .local v11, "timeRemapping":Lcom/airbnb/lottie/AnimatableFloatValue;
    if-eqz v11, :cond_0

    .line 32
    invoke-virtual {v11}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v12

    iput-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 33
    iget-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p0, v12}, Lcom/airbnb/lottie/CompositionLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 34
    iget-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v12, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 39
    :goto_0
    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    .line 40
    invoke-virtual/range {p4 .. p4}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v6, v12}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 42
    .local v6, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/BaseLayer;>;"
    const/4 v9, 0x0

    .line 43
    .local v9, "mattedLayer":Lcom/airbnb/lottie/BaseLayer;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 44
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/Layer;

    .line 45
    .local v8, "lm":Lcom/airbnb/lottie/Layer;
    move-object/from16 v0, p4

    invoke-static {v8, p1, v0}, Lcom/airbnb/lottie/BaseLayer;->forModel(Lcom/airbnb/lottie/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/BaseLayer;

    move-result-object v3

    .line 46
    .local v3, "layer":Lcom/airbnb/lottie/BaseLayer;
    if-nez v3, :cond_1

    .line 43
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 36
    .end local v2    # "i":I
    .end local v3    # "layer":Lcom/airbnb/lottie/BaseLayer;
    .end local v6    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/BaseLayer;>;"
    .end local v8    # "lm":Lcom/airbnb/lottie/Layer;
    .end local v9    # "mattedLayer":Lcom/airbnb/lottie/BaseLayer;
    :cond_0
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/KeyframeAnimation;

    goto :goto_0

    .line 49
    .restart local v2    # "i":I
    .restart local v3    # "layer":Lcom/airbnb/lottie/BaseLayer;
    .restart local v6    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/BaseLayer;>;"
    .restart local v8    # "lm":Lcom/airbnb/lottie/Layer;
    .restart local v9    # "mattedLayer":Lcom/airbnb/lottie/BaseLayer;
    :cond_1
    invoke-virtual {v3}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/lottie/Layer;->getId()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 50
    if-eqz v9, :cond_2

    .line 51
    invoke-virtual {v9, v3}, Lcom/airbnb/lottie/BaseLayer;->setMatteLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 52
    const/4 v9, 0x0

    goto :goto_2

    .line 54
    :cond_2
    iget-object v12, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    sget-object v12, Lcom/airbnb/lottie/CompositionLayer$1;->$SwitchMap$com$airbnb$lottie$Layer$MatteType:[I

    invoke-virtual {v8}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/lottie/Layer$MatteType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 58
    :pswitch_0
    move-object v9, v3

    goto :goto_2

    .line 64
    .end local v3    # "layer":Lcom/airbnb/lottie/BaseLayer;
    .end local v8    # "lm":Lcom/airbnb/lottie/Layer;
    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v6}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v12

    if-ge v2, v12, :cond_5

    .line 65
    invoke-virtual {v6, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 66
    .local v4, "key":J
    invoke-virtual {v6, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/BaseLayer;

    .line 67
    .local v7, "layerView":Lcom/airbnb/lottie/BaseLayer;
    invoke-virtual {v7}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/BaseLayer;

    .line 68
    .local v10, "parentLayer":Lcom/airbnb/lottie/BaseLayer;
    if-eqz v10, :cond_4

    .line 69
    invoke-virtual {v7, v10}, Lcom/airbnb/lottie/BaseLayer;->setParentLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 64
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 72
    .end local v4    # "key":J
    .end local v7    # "layerView":Lcom/airbnb/lottie/BaseLayer;
    .end local v10    # "parentLayer":Lcom/airbnb/lottie/BaseLayer;
    :cond_5
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseLayer;

    .line 173
    .local v1, "layer":Lcom/airbnb/lottie/BaseLayer;
    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "name":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 175
    invoke-virtual {v1, v4, v4, p3}, Lcom/airbnb/lottie/BaseLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 171
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v1, p1, p2, p3}, Lcom/airbnb/lottie/BaseLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 180
    .end local v1    # "layer":Lcom/airbnb/lottie/BaseLayer;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/4 v6, 0x0

    .line 75
    const-string v3, "CompositionLayer#draw"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->originalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 77
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/CompositionLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v4}, Lcom/airbnb/lottie/Layer;->getPreCompWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/airbnb/lottie/CompositionLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v5}, Lcom/airbnb/lottie/Layer;->getPreCompHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 80
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 81
    const/4 v2, 0x1

    .line 82
    .local v2, "nonEmptyClip":Z
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    .line 85
    :cond_0
    if-eqz v2, :cond_1

    .line 86
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseLayer;

    .line 87
    .local v1, "layer":Lcom/airbnb/lottie/BaseLayer;
    invoke-virtual {v1, p1, p2, p3}, Lcom/airbnb/lottie/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 80
    .end local v1    # "layer":Lcom/airbnb/lottie/BaseLayer;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 90
    .end local v2    # "nonEmptyClip":Z
    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->originalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->originalClipRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 93
    :cond_3
    const-string v3, "CompositionLayer#draw"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 94
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 98
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 100
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    .line 101
    .local v0, "content":Lcom/airbnb/lottie/BaseLayer;
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 99
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 105
    :cond_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 107
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 109
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 105
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 113
    .end local v0    # "content":Lcom/airbnb/lottie/BaseLayer;
    :cond_1
    return-void
.end method

.method hasMasks()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    .line 134
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 135
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseLayer;

    .line 136
    .local v1, "layer":Lcom/airbnb/lottie/BaseLayer;
    instance-of v3, v1, Lcom/airbnb/lottie/ShapeLayer;

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 148
    .end local v0    # "i":I
    .end local v1    # "layer":Lcom/airbnb/lottie/BaseLayer;
    :goto_1
    return v2

    .line 141
    .restart local v0    # "i":I
    .restart local v1    # "layer":Lcom/airbnb/lottie/BaseLayer;
    :cond_0
    instance-of v3, v1, Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/airbnb/lottie/CompositionLayer;

    .end local v1    # "layer":Lcom/airbnb/lottie/BaseLayer;
    invoke-virtual {v1}, Lcom/airbnb/lottie/CompositionLayer;->hasMasks()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 146
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 148
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1
.end method

.method hasMatte()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/airbnb/lottie/CompositionLayer;->hasMatteOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    move v1, v2

    .line 166
    :goto_0
    return v1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    move v1, v2

    .line 161
    goto :goto_0

    .line 158
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 164
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 166
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 7
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    .line 117
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/KeyframeAnimation;

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    .line 119
    .local v0, "duration":J
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    float-to-long v4, v3

    .line 120
    .local v4, "remappedTime":J
    long-to-float v3, v4

    long-to-float v6, v0

    div-float p1, v3, v6

    .line 122
    .end local v0    # "duration":J
    .end local v4    # "remappedTime":J
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/Layer;->getTimeStretch()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/Layer;->getTimeStretch()F

    move-result v3

    div-float/2addr p1, v3

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/Layer;->getStartProgress()F

    move-result v3

    sub-float/2addr p1, v3

    .line 127
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 128
    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    .line 127
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 130
    :cond_2
    return-void
.end method
