.class abstract Lcom/airbnb/lottie/BaseLayer;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field final layerModel:Lcom/airbnb/lottie/Layer;

.field final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final maskPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V
    .locals 5
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layerModel"    # Lcom/airbnb/lottie/Layer;

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    .line 51
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 55
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 57
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 58
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 59
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 61
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    .line 71
    iput-boolean v3, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    .line 74
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 75
    iput-object p2, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#draw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 79
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/Layer$MatteType;->Invert:Lcom/airbnb/lottie/Layer$MatteType;

    if-ne v2, v3, :cond_0

    .line 80
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    :goto_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getTransform()Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/TransformKeyframeAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 86
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 87
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 89
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    new-instance v2, Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    .line 91
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 92
    .local v0, "animation":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 93
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_1

    .line 82
    .end local v0    # "animation":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/KeyframeAnimation;

    .line 96
    .local v1, "animation":Lcom/airbnb/lottie/KeyframeAnimation;, "Lcom/airbnb/lottie/KeyframeAnimation<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 97
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    .line 100
    .end local v1    # "animation":Lcom/airbnb/lottie/KeyframeAnimation;, "Lcom/airbnb/lottie/KeyframeAnimation<Ljava/lang/Integer;>;"
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->setupInOutAnimations()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/BaseLayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/BaseLayer;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 307
    const-string v7, "Layer#drawMask"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 308
    const-string v7, "Layer#saveLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 309
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    const/16 v9, 0x13

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 310
    const-string v7, "Layer#saveLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 311
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 314
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 315
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 316
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/Mask;

    .line 317
    .local v2, "mask":Lcom/airbnb/lottie/Mask;
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 318
    .local v3, "maskAnimation":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    invoke-virtual {v3}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 319
    .local v4, "maskPath":Landroid/graphics/Path;
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 320
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v7, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 322
    sget-object v7, Lcom/airbnb/lottie/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$Mask$MaskMode:[I

    invoke-virtual {v2}, Lcom/airbnb/lottie/Mask;->getMaskMode()Lcom/airbnb/lottie/Mask$MaskMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/Mask$MaskMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 328
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 330
    :goto_1
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v7}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/KeyframeAnimation;

    .line 331
    .local v5, "opacityAnimation":Lcom/airbnb/lottie/KeyframeAnimation;, "Lcom/airbnb/lottie/KeyframeAnimation<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 332
    .local v0, "alpha":I
    iget-object v8, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 333
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "alpha":I
    .end local v5    # "opacityAnimation":Lcom/airbnb/lottie/KeyframeAnimation;, "Lcom/airbnb/lottie/KeyframeAnimation<Ljava/lang/Integer;>;"
    :pswitch_0
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 336
    .end local v2    # "mask":Lcom/airbnb/lottie/Mask;
    .end local v3    # "maskAnimation":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    .end local v4    # "maskPath":Landroid/graphics/Path;
    :cond_0
    const-string v7, "Layer#restoreLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 338
    const-string v7, "Layer#restoreLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 339
    const-string v7, "Layer#drawMask"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 340
    return-void

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private buildParentLayerListIfNeeded()V
    .locals 2

    .prologue
    .line 366
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    if-nez v1, :cond_2

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    goto :goto_0

    .line 374
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    .line 375
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    .line 376
    .local v0, "layer":Lcom/airbnb/lottie/BaseLayer;
    :goto_1
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, v0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    goto :goto_1
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 233
    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 237
    return-void
.end method

.method static forModel(Lcom/airbnb/lottie/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/BaseLayer;
    .locals 3
    .param p0, "layerModel"    # Lcom/airbnb/lottie/Layer;
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/airbnb/lottie/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$Layer$LayerType:[I

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getLayerType()Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer$LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    const-string v0, "LOTTIE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layer type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getLayerType()Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    new-instance v0, Lcom/airbnb/lottie/ShapeLayer;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/ShapeLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    goto :goto_0

    .line 32
    :pswitch_1
    new-instance v0, Lcom/airbnb/lottie/CompositionLayer;

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/airbnb/lottie/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v0, Lcom/airbnb/lottie/SolidLayer;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/SolidLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    goto :goto_0

    .line 37
    :pswitch_3
    new-instance v0, Lcom/airbnb/lottie/ImageLayer;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/airbnb/lottie/ImageLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;F)V

    goto :goto_0

    .line 39
    :pswitch_4
    new-instance v0, Lcom/airbnb/lottie/NullLayer;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/NullLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    goto :goto_0

    .line 41
    :pswitch_5
    new-instance v0, Lcom/airbnb/lottie/TextLayer;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/TextLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v6, 0x0

    .line 240
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v5

    if-nez v5, :cond_0

    .line 283
    :goto_0
    :pswitch_0
    return-void

    .line 245
    :cond_0
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 246
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 247
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/Mask;

    .line 248
    .local v1, "mask":Lcom/airbnb/lottie/Mask;
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 249
    .local v2, "maskAnimation":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 250
    .local v3, "maskPath":Landroid/graphics/Path;
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 251
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 253
    sget-object v5, Lcom/airbnb/lottie/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$Mask$MaskMode:[I

    invoke-virtual {v1}, Lcom/airbnb/lottie/Mask;->getMaskMode()Lcom/airbnb/lottie/Mask$MaskMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/Mask$MaskMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 260
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 264
    if-nez v0, :cond_1

    .line 265
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 246
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_1
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    .line 268
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    .line 269
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v8, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    .line 270
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v9, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    .line 271
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 267
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 277
    .end local v1    # "mask":Lcom/airbnb/lottie/Mask;
    .end local v2    # "maskAnimation":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    .end local v3    # "maskPath":Landroid/graphics/Path;
    :cond_2
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 278
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v6, p1, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 279
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p1, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 280
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 281
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 277
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/Layer$MatteType;->Invert:Lcom/airbnb/lottie/Layer$MatteType;

    if-eq v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 296
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 297
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 298
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 299
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 300
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 296
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private invalidateSelf()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 142
    return-void
.end method

.method private recordRenderTime(F)V
    .locals 2
    .param p1, "ms"    # F

    .prologue
    .line 227
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    .line 230
    return-void
.end method

.method private setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    if-eq p1, v0, :cond_0

    .line 348
    iput-boolean p1, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    .line 349
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->invalidateSelf()V

    .line 351
    :cond_0
    return-void
.end method

.method private setupInOutAnimations()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 124
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    new-instance v0, Lcom/airbnb/lottie/FloatKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    .line 126
    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 127
    .local v0, "inOutAnimation":Lcom/airbnb/lottie/FloatKeyframeAnimation;
    invoke-virtual {v0}, Lcom/airbnb/lottie/FloatKeyframeAnimation;->setIsDiscrete()V

    .line 128
    new-instance v1, Lcom/airbnb/lottie/BaseLayer$1;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/lottie/BaseLayer$1;-><init>(Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/FloatKeyframeAnimation;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/FloatKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 133
    invoke-virtual {v0}, Lcom/airbnb/lottie/FloatKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 138
    .end local v0    # "inOutAnimation":Lcom/airbnb/lottie/FloatKeyframeAnimation;
    :goto_1
    return-void

    .line 133
    .restart local v0    # "inOutAnimation":Lcom/airbnb/lottie/FloatKeyframeAnimation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 136
    .end local v0    # "inOutAnimation":Lcom/airbnb/lottie/FloatKeyframeAnimation;
    :cond_1
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    goto :goto_1
.end method


# virtual methods
.method addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "newAnimation":Lcom/airbnb/lottie/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/BaseKeyframeAnimation<**>;"
    instance-of v0, p1, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    return-void
.end method

.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
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
    .line 393
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    .line 157
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 158
    iget-boolean v2, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    if-nez v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 224
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 163
    const-string v2, "Layer#parentMatrix"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 165
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 166
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 167
    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BaseLayer;

    iget-object v2, v2, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 166
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 169
    :cond_1
    const-string v2, "Layer#parentMatrix"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 170
    int-to-float v2, p3

    div-float v3, v2, v4

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 171
    invoke-virtual {v2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 172
    .local v0, "alpha":I
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 174
    const-string v2, "Layer#drawLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, v0}, Lcom/airbnb/lottie/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 176
    const-string v2, "Layer#drawLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 177
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/BaseLayer;->recordRenderTime(F)V

    goto/16 :goto_0

    .line 181
    :cond_2
    const-string v2, "Layer#computeBounds"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 183
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 184
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lcom/airbnb/lottie/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 186
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 187
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lcom/airbnb/lottie/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 189
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 190
    const-string v2, "Layer#computeBounds"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 192
    const-string v2, "Layer#saveLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/16 v4, 0x1f

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 194
    const-string v2, "Layer#saveLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 197
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 198
    const-string v2, "Layer#drawLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, v0}, Lcom/airbnb/lottie/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 200
    const-string v2, "Layer#drawLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 202
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v2}, Lcom/airbnb/lottie/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 206
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    const-string v2, "Layer#drawMatte"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 208
    const-string v2, "Layer#saveLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    const/16 v4, 0x13

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 210
    const-string v2, "Layer#saveLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 211
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 213
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v2, p1, p2, v0}, Lcom/airbnb/lottie/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 214
    const-string v2, "Layer#restoreLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 216
    const-string v2, "Layer#restoreLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 217
    const-string v2, "Layer#drawMatte"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 220
    :cond_4
    const-string v2, "Layer#restoreLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 222
    const-string v2, "Layer#restoreLayer"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 223
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/BaseLayer;->recordRenderTime(F)V

    goto/16 :goto_0
.end method

.method abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 152
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 153
    return-void
.end method

.method getLayerModel()Lcom/airbnb/lottie/Layer;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasMasksOnThisLayer()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMatteOnThisLayer()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->invalidateSelf()V

    .line 105
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 388
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    return-void
.end method

.method setMatteLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .locals 0
    .param p1, "matteLayer"    # Lcom/airbnb/lottie/BaseLayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    .line 113
    return-void
.end method

.method setParentLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .locals 0
    .param p1, "parentLayer"    # Lcom/airbnb/lottie/BaseLayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    .line 121
    return-void
.end method

.method setProgress(F)V
    .locals 3
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 354
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer;->getTimeStretch()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer;->getTimeStretch()F

    move-result v1

    div-float/2addr p1, v1

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    .line 360
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->setProgress(F)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_2
    return-void
.end method
