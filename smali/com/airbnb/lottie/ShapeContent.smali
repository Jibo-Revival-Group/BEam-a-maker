.class Lcom/airbnb/lottie/ShapeContent;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapePath;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "shape"    # Lcom/airbnb/lottie/ShapePath;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    .line 19
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapePath;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->name:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 21
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapePath;->getShapePath()Lcom/airbnb/lottie/AnimatableShapeValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableShapeValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 23
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 24
    return-void
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/ShapeContent;->isPathValid:Z

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 33
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/airbnb/lottie/ShapeContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    .line 60
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 54
    iget-object v1, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ShapeContent;->isPathValid:Z

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/lottie/ShapeContent;->invalidate()V

    .line 28
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
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
    .line 36
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 38
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v2, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/TrimPathContent;

    .line 39
    invoke-virtual {v2}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 41
    check-cast v0, Lcom/airbnb/lottie/TrimPathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    iput-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 42
    iget-object v2, p0, Lcom/airbnb/lottie/ShapeContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method
