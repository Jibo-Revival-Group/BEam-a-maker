.class Lcom/airbnb/lottie/ShapeTrimPath;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lcom/airbnb/lottie/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapeTrimPath$Factory;,
        Lcom/airbnb/lottie/ShapeTrimPath$Type;
    }
.end annotation


# instance fields
.field private final end:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final start:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final type:Lcom/airbnb/lottie/ShapeTrimPath$Type;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/ShapeTrimPath$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/airbnb/lottie/ShapeTrimPath$Type;
    .param p3, "start"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p4, "end"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p5, "offset"    # Lcom/airbnb/lottie/AnimatableFloatValue;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeTrimPath;->name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/airbnb/lottie/ShapeTrimPath;->type:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    .line 33
    iput-object p3, p0, Lcom/airbnb/lottie/ShapeTrimPath;->start:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 34
    iput-object p4, p0, Lcom/airbnb/lottie/ShapeTrimPath;->end:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 35
    iput-object p5, p0, Lcom/airbnb/lottie/ShapeTrimPath;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/ShapeTrimPath$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeTrimPath$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/ShapeTrimPath$Type;
    .param p3, "x2"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p4, "x3"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p5, "x4"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p6, "x5"    # Lcom/airbnb/lottie/ShapeTrimPath$1;

    .prologue
    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/ShapeTrimPath$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    return-void
.end method


# virtual methods
.method getEnd()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeTrimPath;->end:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeTrimPath;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOffset()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeTrimPath;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getStart()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeTrimPath;->start:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeTrimPath;->type:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;

    .prologue
    .line 59
    new-instance v0, Lcom/airbnb/lottie/TrimPathContent;

    invoke-direct {v0, p2, p0}, Lcom/airbnb/lottie/TrimPathContent;-><init>(Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeTrimPath;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeTrimPath;->start:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeTrimPath;->end:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeTrimPath;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
