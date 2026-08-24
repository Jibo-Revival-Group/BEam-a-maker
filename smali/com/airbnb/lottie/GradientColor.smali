.class Lcom/airbnb/lottie/GradientColor;
.super Ljava/lang/Object;
.source "GradientColor.java"


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method constructor <init>([F[I)V
    .locals 0
    .param p1, "positions"    # [F
    .param p2, "colors"    # [I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/airbnb/lottie/GradientColor;->positions:[F

    .line 9
    iput-object p2, p0, Lcom/airbnb/lottie/GradientColor;->colors:[I

    .line 10
    return-void
.end method


# virtual methods
.method getColors()[I
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColor;->colors:[I

    return-object v0
.end method

.method getPositions()[F
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColor;->positions:[F

    return-object v0
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v0, v0

    return v0
.end method

.method lerp(Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/GradientColor;F)V
    .locals 4
    .param p1, "gc1"    # Lcom/airbnb/lottie/GradientColor;
    .param p2, "gc2"    # Lcom/airbnb/lottie/GradientColor;
    .param p3, "progress"    # F

    .prologue
    .line 25
    iget-object v1, p1, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v1, v1

    iget-object v2, p2, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/GradientColor;->positions:[F

    iget-object v2, p1, Lcom/airbnb/lottie/GradientColor;->positions:[F

    aget v2, v2, v0

    iget-object v3, p2, Lcom/airbnb/lottie/GradientColor;->positions:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 32
    iget-object v1, p0, Lcom/airbnb/lottie/GradientColor;->colors:[I

    iget-object v2, p1, Lcom/airbnb/lottie/GradientColor;->colors:[I

    aget v2, v2, v0

    iget-object v3, p2, Lcom/airbnb/lottie/GradientColor;->colors:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, Lcom/airbnb/lottie/GammaEvaluator;->evaluate(FII)I

    move-result v2

    aput v2, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method
