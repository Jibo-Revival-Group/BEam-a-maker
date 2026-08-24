.class Lcom/airbnb/lottie/AnimatableTransform;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lcom/airbnb/lottie/ModifierContent;
.implements Lcom/airbnb/lottie/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableTransform$Factory;
    }
.end annotation


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/AnimatablePathValue;

.field private final endOpacity:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

.field private final position:Lcom/airbnb/lottie/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final scale:Lcom/airbnb/lottie/AnimatableScaleValue;

.field private final startOpacity:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 0
    .param p1, "anchorPoint"    # Lcom/airbnb/lottie/AnimatablePathValue;
    .param p3, "scale"    # Lcom/airbnb/lottie/AnimatableScaleValue;
    .param p4, "rotation"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p5, "opacity"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p6, "startOpacity"    # Lcom/airbnb/lottie/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "endOpacity"    # Lcom/airbnb/lottie/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/AnimatablePathValue;",
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableScaleValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "position":Lcom/airbnb/lottie/AnimatableValue;, "Lcom/airbnb/lottie/AnimatableValue<Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/airbnb/lottie/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/AnimatablePathValue;

    .line 26
    iput-object p2, p0, Lcom/airbnb/lottie/AnimatableTransform;->position:Lcom/airbnb/lottie/AnimatableValue;

    .line 27
    iput-object p3, p0, Lcom/airbnb/lottie/AnimatableTransform;->scale:Lcom/airbnb/lottie/AnimatableScaleValue;

    .line 28
    iput-object p4, p0, Lcom/airbnb/lottie/AnimatableTransform;->rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 29
    iput-object p5, p0, Lcom/airbnb/lottie/AnimatableTransform;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 30
    iput-object p6, p0, Lcom/airbnb/lottie/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 31
    iput-object p7, p0, Lcom/airbnb/lottie/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableTransform$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/airbnb/lottie/AnimatablePathValue;
    .param p2, "x1"    # Lcom/airbnb/lottie/AnimatableValue;
    .param p3, "x2"    # Lcom/airbnb/lottie/AnimatableScaleValue;
    .param p4, "x3"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p5, "x4"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p6, "x5"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p7, "x6"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p8, "x7"    # Lcom/airbnb/lottie/AnimatableTransform$1;

    .prologue
    .line 11
    invoke-direct/range {p0 .. p7}, Lcom/airbnb/lottie/AnimatableTransform;-><init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/TransformKeyframeAnimation;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/AnimatableTransform;)V

    return-object v0
.end method

.method getAnchorPoint()Lcom/airbnb/lottie/AnimatablePathValue;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/AnimatablePathValue;

    return-object v0
.end method

.method public getEndOpacity()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method getPosition()Lcom/airbnb/lottie/AnimatableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->position:Lcom/airbnb/lottie/AnimatableValue;

    return-object v0
.end method

.method getRotation()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getScale()Lcom/airbnb/lottie/AnimatableScaleValue;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->scale:Lcom/airbnb/lottie/AnimatableScaleValue;

    return-object v0
.end method

.method public getStartOpacity()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
