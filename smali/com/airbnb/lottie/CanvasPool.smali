.class Lcom/airbnb/lottie/CanvasPool;
.super Ljava/lang/Object;
.source "CanvasPool.java"


# instance fields
.field private final availableBitmaps:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bitmapCanvasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/airbnb/lottie/BitmapCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private final canvasBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/lottie/BitmapCanvas;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    return-void
.end method

.method private getKey(IILandroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const v1, 0xffff

    .line 78
    and-int v0, p1, v1

    shl-int/lit8 v0, v0, 0x11

    and-int/2addr v1, p2

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    return v0
.end method

.method private getKey(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/lottie/CanvasPool;->getKey(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method


# virtual methods
.method acquire(IILandroid/graphics/Bitmap$Config;)Lcom/airbnb/lottie/BitmapCanvas;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/CanvasPool;->getKey(IILandroid/graphics/Bitmap$Config;)I

    move-result v3

    .line 25
    .local v3, "key":I
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 26
    .local v1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .restart local v1    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/airbnb/lottie/BitmapCanvas;

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/BitmapCanvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    .local v2, "canvas":Lcom/airbnb/lottie/BitmapCanvas;
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/BitmapCanvas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 42
    return-object v2

    .line 38
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Lcom/airbnb/lottie/BitmapCanvas;
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 39
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BitmapCanvas;

    .restart local v2    # "canvas":Lcom/airbnb/lottie/BitmapCanvas;
    goto :goto_0
.end method

.method recycleBitmaps()V
    .locals 7

    .prologue
    .line 56
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 57
    iget-object v5, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5, v3}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 58
    .local v1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 59
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 61
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BitmapCanvas;

    .line 62
    .local v2, "canvas":Lcom/airbnb/lottie/BitmapCanvas;
    iget-object v5, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v5, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 56
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Lcom/airbnb/lottie/BitmapCanvas;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :cond_1
    iget-object v5, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 69
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Not all canvases have been released!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_2
    return-void
.end method

.method release(Lcom/airbnb/lottie/BitmapCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/airbnb/lottie/BitmapCanvas;

    .prologue
    .line 46
    iget-object v3, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 47
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/CanvasPool;->getKey(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 48
    .local v2, "key":I
    iget-object v3, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 49
    .local v1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Canvas already released."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
