.class Lcom/airbnb/lottie/CircleShape;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/airbnb/lottie/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/CircleShape$Factory;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

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

.field private final size:Lcom/airbnb/lottie/AnimatablePointValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "size"    # Lcom/airbnb/lottie/AnimatablePointValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/AnimatablePointValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "position":Lcom/airbnb/lottie/AnimatableValue;, "Lcom/airbnb/lottie/AnimatableValue<Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/airbnb/lottie/CircleShape;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/airbnb/lottie/CircleShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    .line 16
    iput-object p3, p0, Lcom/airbnb/lottie/CircleShape;->size:Lcom/airbnb/lottie/AnimatablePointValue;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/CircleShape$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/AnimatableValue;
    .param p3, "x2"    # Lcom/airbnb/lottie/AnimatablePointValue;
    .param p4, "x3"    # Lcom/airbnb/lottie/CircleShape$1;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;)V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/lottie/CircleShape;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/airbnb/lottie/AnimatableValue;
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
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/CircleShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    return-object v0
.end method

.method public getSize()Lcom/airbnb/lottie/AnimatablePointValue;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/CircleShape;->size:Lcom/airbnb/lottie/AnimatablePointValue;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;

    .prologue
    .line 20
    new-instance v0, Lcom/airbnb/lottie/EllipseContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/EllipseContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/CircleShape;)V

    return-object v0
.end method
