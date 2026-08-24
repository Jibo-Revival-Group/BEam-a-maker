.class Lcom/airbnb/lottie/ShapeStroke;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lcom/airbnb/lottie/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapeStroke$Factory;,
        Lcom/airbnb/lottie/ShapeStroke$LineJoinType;,
        Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

.field private final color:Lcom/airbnb/lottie/AnimatableColorValue;

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

.field private final offset:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

.field private final width:Lcom/airbnb/lottie/AnimatableFloatValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # Lcom/airbnb/lottie/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "color"    # Lcom/airbnb/lottie/AnimatableColorValue;
    .param p5, "opacity"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p6, "width"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p7, "capType"    # Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .param p8, "joinType"    # Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableColorValue;",
            "Lcom/airbnb/lottie/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/ShapeStroke$LineJoinType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeStroke;->name:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/airbnb/lottie/ShapeStroke;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 64
    iput-object p3, p0, Lcom/airbnb/lottie/ShapeStroke;->lineDashPattern:Ljava/util/List;

    .line 65
    iput-object p4, p0, Lcom/airbnb/lottie/ShapeStroke;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    .line 66
    iput-object p5, p0, Lcom/airbnb/lottie/ShapeStroke;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 67
    iput-object p6, p0, Lcom/airbnb/lottie/ShapeStroke;->width:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 68
    iput-object p7, p0, Lcom/airbnb/lottie/ShapeStroke;->capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    .line 69
    iput-object p8, p0, Lcom/airbnb/lottie/ShapeStroke;->joinType:Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;Lcom/airbnb/lottie/ShapeStroke$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/airbnb/lottie/AnimatableColorValue;
    .param p5, "x4"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p6, "x5"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p7, "x6"    # Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .param p8, "x7"    # Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .param p9, "x8"    # Lcom/airbnb/lottie/ShapeStroke$1;

    .prologue
    .line 12
    invoke-direct/range {p0 .. p8}, Lcom/airbnb/lottie/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;)V

    return-void
.end method


# virtual methods
.method getCapType()Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    return-object v0
.end method

.method getColor()Lcom/airbnb/lottie/AnimatableColorValue;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    return-object v0
.end method

.method getDashOffset()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getJoinType()Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->joinType:Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

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
    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method getWidth()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->width:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;

    .prologue
    .line 73
    new-instance v0, Lcom/airbnb/lottie/StrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/StrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeStroke;)V

    return-object v0
.end method
