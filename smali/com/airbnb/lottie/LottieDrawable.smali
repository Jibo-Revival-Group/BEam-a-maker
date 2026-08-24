.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;,
        Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:I

.field private final animator:Lcom/airbnb/lottie/LottieValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionLayer:Lcom/airbnb/lottie/CompositionLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lcom/airbnb/lottie/FontAssetManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private progress:F

.field private scale:F

.field private speed:F

.field private systemAnimationsAreDisabled:Z

.field textDelegate:Lcom/airbnb/lottie/TextDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    .line 46
    iput v1, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    .line 48
    iput v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieValueAnimator;->setRepeatCount(I)V

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$1;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieDrawable;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsAreDisabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/LottieValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieDrawable;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    return-object v0
.end method

.method private addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 3
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
    .line 279
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    invoke-direct {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 280
    .local v0, "data":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v1, :cond_1

    .line 291
    :goto_1
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    invoke-direct {v2, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/airbnb/lottie/CompositionLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method private applyColorFilters()V
    .locals 6

    .prologue
    .line 197
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 202
    .local v0, "data":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    iget-object v3, v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    iget-object v4, v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    iget-object v5, v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/lottie/CompositionLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private buildCompositionLayer()V
    .locals 4

    .prologue
    .line 192
    new-instance v0, Lcom/airbnb/lottie/CompositionLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 193
    invoke-static {v1}, Lcom/airbnb/lottie/Layer$Factory;->newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    .line 194
    return-void
.end method

.method private clearComposition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->recycleBitmaps()V

    .line 208
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    .line 209
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    .line 210
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 211
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 652
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_1

    .line 659
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    :goto_0
    return-object v1

    .line 656
    .restart local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 657
    check-cast v0, Landroid/view/View;

    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFontAssetManager()Lcom/airbnb/lottie/FontAssetManager;
    .locals 3

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    .line 647
    :goto_0
    return-object v0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/FontAssetManager;

    if-nez v0, :cond_1

    .line 644
    new-instance v0, Lcom/airbnb/lottie/FontAssetManager;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/FontAssetManager;

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/FontAssetManager;

    goto :goto_0
.end method

.method private getImageAssetManager()Lcom/airbnb/lottie/ImageAssetManager;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 610
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 625
    :goto_0
    return-object v0

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    invoke-virtual {v1}, Lcom/airbnb/lottie/ImageAssetManager;->recycleBitmaps()V

    .line 617
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    if-nez v0, :cond_2

    .line 621
    new-instance v0, Lcom/airbnb/lottie/ImageAssetManager;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 622
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    goto :goto_0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 668
    .local v0, "maxScaleX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 669
    .local v1, "maxScaleY":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private playAnimation(Z)V
    .locals 6
    .param p1, "setStartTime"    # Z

    .prologue
    .line 363
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$2;

    invoke-direct {v3, p0}, Lcom/airbnb/lottie/LottieDrawable$2;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieValueAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 372
    .local v0, "playTime":J
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieValueAnimator;->start()V

    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/airbnb/lottie/LottieValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 371
    .end local v0    # "playTime":J
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private reverseAnimation(Z)V
    .locals 4
    .param p1, "setStartTime"    # Z

    .prologue
    .line 409
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$4;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$4;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :goto_0
    return-void

    .line 417
    :cond_0
    if-eqz p1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/LottieValueAnimator;->setCurrentPlayTime(J)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieValueAnimator;->reverse()V

    goto :goto_0
.end method

.method private updateBounds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 544
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v0

    .line 548
    .local v0, "scale":F
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 549
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 548
    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 567
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 559
    return-void
.end method

.method public addColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, v0, v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 258
    return-void
.end method

.method public addColorFilterToContent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "contentName"    # Ljava/lang/String;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 241
    return-void
.end method

.method public addColorFilterToLayer(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 250
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 554
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieValueAnimator;->cancel()V

    .line 555
    return-void
.end method

.method public clearColorFilters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 265
    invoke-direct {p0, v1, v1, v1}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 266
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 298
    const-string v7, "Drawable#draw"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 299
    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v7, :cond_0

    .line 336
    :goto_0
    return-void

    .line 302
    :cond_0
    iget v6, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 303
    .local v6, "scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 304
    .local v0, "extraScale":F
    const/4 v2, 0x0

    .line 305
    .local v2, "hasExtraScale":Z
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v3

    .line 306
    .local v3, "maxScale":F
    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v7}, Lcom/airbnb/lottie/CompositionLayer;->hasMatte()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v7}, Lcom/airbnb/lottie/CompositionLayer;->hasMasks()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 310
    :cond_1
    div-float v0, v6, v3

    .line 311
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 313
    const v7, 0x3f8020c5    # 1.001f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_5

    const/4 v2, 0x1

    .line 316
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 317
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    mul-float v1, v0, v0

    .line 324
    .local v1, "extraScaleSquared":F
    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 325
    .local v4, "px":I
    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 326
    .local v5, "py":I
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v1, v1, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 329
    .end local v1    # "extraScaleSquared":F
    .end local v4    # "px":I
    .end local v5    # "py":I
    :cond_3
    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 330
    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 331
    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    iget-object v8, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-virtual {v7, p1, v8, v9}, Lcom/airbnb/lottie/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 332
    if-eqz v2, :cond_4

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 335
    :cond_4
    const-string v7, "Drawable#draw"

    invoke-static {v7}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0

    .line 313
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 106
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    const-string v1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    .line 110
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    goto :goto_0
.end method

.method enableMergePathsForKitKatAndAbove()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/ImageAssetManager;

    move-result-object v0

    .line 603
    .local v0, "bm":Lcom/airbnb/lottie/ImageAssetManager;
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 606
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, -0x3

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    return v0
.end method

.method getTextDelegate()Lcom/airbnb/lottie/TextDelegate;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    return-object v0
.end method

.method getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/FontAssetManager;

    move-result-object v0

    .line 631
    .local v0, "assetManager":Lcom/airbnb/lottie/FontAssetManager;
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/FontAssetManager;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 634
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasMasks()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/CompositionLayer;->hasMasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMatte()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/CompositionLayer;->hasMatte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 678
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 215
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loop(Z)V
    .locals 2
    .param p1, "loop"    # Z

    .prologue
    .line 343
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieValueAnimator;->setRepeatCount(I)V

    .line 344
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playAnimation()V
    .locals 4

    .prologue
    .line 355
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    .line 356
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playAnimation(FF)V
    .locals 4
    .param p1, "startProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2, "endProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 394
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieValueAnimator;->updateValues(FF)V

    .line 395
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/LottieValueAnimator;->setCurrentPlayTime(J)V

    .line 396
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    .line 398
    return-void
.end method

.method public playAnimation(II)V
    .locals 3
    .param p1, "startFrame"    # I
    .param p2, "endFrame"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable$3;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 389
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v2

    div-float/2addr v1, v2

    .line 388
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(FF)V

    goto :goto_0
.end method

.method public recycleBitmaps()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ImageAssetManager;->recycleBitmaps()V

    .line 147
    :cond_0
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 563
    return-void
.end method

.method public resumeAnimation()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    .line 360
    return-void
.end method

.method public resumeReverseAnimation()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    .line 402
    return-void
.end method

.method public reverseAnimation()V
    .locals 4

    .prologue
    .line 405
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    .line 406
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 686
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 221
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 222
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 230
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)Z
    .locals 3
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-ne v2, p1, :cond_0

    .line 154
    const/4 v2, 0x0

    .line 173
    :goto_0
    return v2

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 158
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 159
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    .line 160
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 161
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 162
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->applyColorFilters()V

    .line 164
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 165
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;

    .line 168
    .local v1, "t":Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    invoke-interface {v1, p1}, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;->run(Lcom/airbnb/lottie/LottieComposition;)V

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 171
    .end local v1    # "t":Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    :cond_1
    iget-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 173
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/FontAssetDelegate;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 518
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/FontAssetManager;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/FontAssetManager;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/FontAssetManager;->setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 521
    :cond_0
    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/ImageAssetDelegate;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 507
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/ImageAssetManager;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 510
    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageAssetsFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 2
    .param p1, "endFrame"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$6;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$6;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    goto :goto_0
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1, "endProgress"    # F

    .prologue
    .line 452
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieValueAnimator;->setEndProgress(F)V

    .line 453
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 0
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 457
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 458
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 0
    .param p1, "minProgress"    # F
    .param p2, "maxProgress"    # F

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 462
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 463
    return-void
.end method

.method public setMinFrame(I)V
    .locals 2
    .param p1, "startFrame"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$5;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$5;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    goto :goto_0
.end method

.method public setMinProgress(F)V
    .locals 1
    .param p1, "startProgress"    # F

    .prologue
    .line 436
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieValueAnimator;->setStartProgress(F)V

    .line 437
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    .line 178
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 475
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    .line 476
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/CompositionLayer;->setProgress(F)V

    .line 479
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 495
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 496
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 497
    return-void
.end method

.method public setSpeed(F)V
    .locals 4
    .param p1, "speed"    # F

    .prologue
    .line 466
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    .line 467
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieValueAnimator;->setIsReversed(Z)V

    .line 469
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/LottieValueAnimator;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/LottieValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 472
    :cond_0
    return-void

    .line 467
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 0
    .param p1, "textDelegate"    # Lcom/airbnb/lottie/TextDelegate;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    .line 525
    return-void
.end method

.method systemAnimationsAreDisabled()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsAreDisabled:Z

    .line 340
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 694
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/ImageAssetManager;

    move-result-object v0

    .line 590
    .local v0, "bm":Lcom/airbnb/lottie/ImageAssetManager;
    if-nez v0, :cond_0

    .line 591
    const-string v2, "LOTTIE"

    const-string v3, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v1, 0x0

    .line 597
    :goto_0
    return-object v1

    .line 595
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 596
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method useTextGlyphs()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
