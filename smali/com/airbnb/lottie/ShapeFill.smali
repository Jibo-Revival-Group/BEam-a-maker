.class Lcom/airbnb/lottie/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/airbnb/lottie/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapeFill$Factory;
    }
.end annotation


# instance fields
.field private final color:Lcom/airbnb/lottie/AnimatableColorValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fillEnabled"    # Z
    .param p3, "fillType"    # Landroid/graphics/Path$FillType;
    .param p4, "color"    # Lcom/airbnb/lottie/AnimatableColorValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "opacity"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeFill;->name:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/airbnb/lottie/ShapeFill;->fillEnabled:Z

    .line 19
    iput-object p3, p0, Lcom/airbnb/lottie/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 20
    iput-object p4, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    .line 21
    iput-object p5, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/ShapeFill$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/graphics/Path$FillType;
    .param p4, "x3"    # Lcom/airbnb/lottie/AnimatableColorValue;
    .param p5, "x4"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p6, "x5"    # Lcom/airbnb/lottie/ShapeFill$1;

    .prologue
    .line 8
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V

    return-void
.end method


# virtual methods
.method getColor()Lcom/airbnb/lottie/AnimatableColorValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    return-object v0
.end method

.method getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;

    .prologue
    .line 69
    new-instance v0, Lcom/airbnb/lottie/FillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/FillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeFill;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 75
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/airbnb/lottie/ShapeFill;->fillEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    if-nez v0, :cond_1

    const-string v0, "null"

    .line 77
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    .line 75
    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableColorValue;->getInitialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 77
    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->getInitialValue()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method
