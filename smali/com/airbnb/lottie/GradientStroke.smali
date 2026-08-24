.class Lcom/airbnb/lottie/GradientStroke;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/airbnb/lottie/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/GradientStroke$Factory;
    }
.end annotation


# instance fields
.field private final capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

.field private final dashOffset:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Lcom/airbnb/lottie/AnimatablePointValue;

.field private final gradientColor:Lcom/airbnb/lottie/AnimatableGradientColorValue;

.field private final gradientType:Lcom/airbnb/lottie/GradientType;

.field private final joinType:Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

.field private final startPoint:Lcom/airbnb/lottie/AnimatablePointValue;

.field private final width:Lcom/airbnb/lottie/AnimatableFloatValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/GradientType;Lcom/airbnb/lottie/AnimatableGradientColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gradientType"    # Lcom/airbnb/lottie/GradientType;
    .param p3, "gradientColor"    # Lcom/airbnb/lottie/AnimatableGradientColorValue;
    .param p4, "opacity"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p5, "startPoint"    # Lcom/airbnb/lottie/AnimatablePointValue;
    .param p6, "endPoint"    # Lcom/airbnb/lottie/AnimatablePointValue;
    .param p7, "width"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p8, "capType"    # Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .param p9, "joinType"    # Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .param p11, "dashOffset"    # Lcom/airbnb/lottie/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/GradientType;",
            "Lcom/airbnb/lottie/AnimatableGradientColorValue;",
            "Lcom/airbnb/lottie/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/AnimatablePointValue;",
            "Lcom/airbnb/lottie/AnimatablePointValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/ShapeStroke$LineJoinType;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p10, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/airbnb/lottie/GradientStroke;->name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/airbnb/lottie/GradientStroke;->gradientType:Lcom/airbnb/lottie/GradientType;

    .line 33
    iput-object p3, p0, Lcom/airbnb/lottie/GradientStroke;->gradientColor:Lcom/airbnb/lottie/AnimatableGradientColorValue;

    .line 34
    iput-object p4, p0, Lcom/airbnb/lottie/GradientStroke;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 35
    iput-object p5, p0, Lcom/airbnb/lottie/GradientStroke;->startPoint:Lcom/airbnb/lottie/AnimatablePointValue;

    .line 36
    iput-object p6, p0, Lcom/airbnb/lottie/GradientStroke;->endPoint:Lcom/airbnb/lottie/AnimatablePointValue;

    .line 37
    iput-object p7, p0, Lcom/airbnb/lottie/GradientStroke;->width:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 38
    iput-object p8, p0, Lcom/airbnb/lottie/GradientStroke;->capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    .line 39
    iput-object p9, p0, Lcom/airbnb/lottie/GradientStroke;->joinType:Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    .line 40
    iput-object p10, p0, Lcom/airbnb/lottie/GradientStroke;->lineDashPattern:Ljava/util/List;

    .line 41
    iput-object p11, p0, Lcom/airbnb/lottie/GradientStroke;->dashOffset:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/GradientType;Lcom/airbnb/lottie/AnimatableGradientColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/GradientStroke$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/GradientType;
    .param p3, "x2"    # Lcom/airbnb/lottie/AnimatableGradientColorValue;
    .param p4, "x3"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p5, "x4"    # Lcom/airbnb/lottie/AnimatablePointValue;
    .param p6, "x5"    # Lcom/airbnb/lottie/AnimatablePointValue;
    .param p7, "x6"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p8, "x7"    # Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .param p9, "x8"    # Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .param p10, "x9"    # Ljava/util/List;
    .param p11, "x10"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p12, "x11"    # Lcom/airbnb/lottie/GradientStroke$1;

    .prologue
    .line 11
    invoke-direct/range {p0 .. p11}, Lcom/airbnb/lottie/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/GradientType;Lcom/airbnb/lottie/AnimatableGradientColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    return-void
.end method


# virtual methods
.method getCapType()Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    return-object v0
.end method

.method getDashOffset()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->dashOffset:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getEndPoint()Lcom/airbnb/lottie/AnimatablePointValue;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->endPoint:Lcom/airbnb/lottie/AnimatablePointValue;

    return-object v0
.end method

.method getGradientColor()Lcom/airbnb/lottie/AnimatableGradientColorValue;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->gradientColor:Lcom/airbnb/lottie/AnimatableGradientColorValue;

    return-object v0
.end method

.method getGradientType()Lcom/airbnb/lottie/GradientType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->gradientType:Lcom/airbnb/lottie/GradientType;

    return-object v0
.end method

.method getJoinType()Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->joinType:Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method getLineDashPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method getStartPoint()Lcom/airbnb/lottie/AnimatablePointValue;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->startPoint:Lcom/airbnb/lottie/AnimatablePointValue;

    return-object v0
.end method

.method getWidth()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStroke;->width:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;

    .prologue
    .line 89
    new-instance v0, Lcom/airbnb/lottie/GradientStrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/GradientStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/GradientStroke;)V

    return-object v0
.end method
