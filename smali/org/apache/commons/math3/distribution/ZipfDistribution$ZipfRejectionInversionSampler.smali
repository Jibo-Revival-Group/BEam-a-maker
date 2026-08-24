.class final Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;
.super Ljava/lang/Object;
.source "ZipfDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/distribution/ZipfDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipfRejectionInversionSampler"
.end annotation


# instance fields
.field private final exponent:D

.field private final hIntegralNumberOfElements:D

.field private final hIntegralX1:D

.field private final numberOfElements:I

.field private final s:D


# direct methods
.method constructor <init>(ID)V
    .locals 6
    .param p1, "numberOfElements"    # I
    .param p2, "exponent"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    .line 332
    iput p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->numberOfElements:I

    .line 333
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralX1:D

    .line 334
    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    .line 335
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v0

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->h(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralInverse(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->s:D

    .line 336
    return-void
.end method

.method private h(D)D
    .locals 5
    .param p1, "x"    # D

    .prologue
    .line 435
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    neg-double v0, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private hIntegral(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 424
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    .line 425
    .local v0, "logX":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->helper2(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method private hIntegralInverse(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 445
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    sub-double/2addr v2, v4

    mul-double v0, p1, v2

    .line 446
    .local v0, "t":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 449
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 451
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->helper1(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    return-wide v2
.end method

.method static helper1(D)D
    .locals 8
    .param p0, "x"    # D

    .prologue
    .line 463
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 464
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    .line 467
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, p0

    sub-double/2addr v4, v6

    mul-double/2addr v4, p0

    sub-double/2addr v2, v4

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method static helper2(D)D
    .locals 8
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 480
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 481
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    .line 484
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v2, p0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v4, p0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    goto :goto_0
.end method


# virtual methods
.method sample(Lorg/apache/commons/math3/random/RandomGenerator;)I
    .locals 14
    .param p1, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 345
    :cond_0
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    invoke-interface {p1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralX1:D

    iget-wide v12, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double v2, v6, v8

    .line 348
    .local v2, "u":D
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralInverse(D)D

    move-result-wide v4

    .line 350
    .local v4, "x":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v4

    double-to-int v0, v6

    .line 354
    .local v0, "k":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 355
    const/4 v0, 0x1

    .line 368
    :cond_1
    :goto_0
    int-to-double v6, v0

    sub-double/2addr v6, v4

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->s:D

    cmpg-double v1, v6, v8

    if-lez v1, :cond_2

    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v6

    int-to-double v8, v0

    invoke-direct {p0, v8, v9}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->h(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    cmpl-double v1, v2, v6

    if-ltz v1, :cond_0

    .line 406
    :cond_2
    return v0

    .line 357
    :cond_3
    iget v1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->numberOfElements:I

    if-le v0, v1, :cond_1

    .line 358
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->numberOfElements:I

    goto :goto_0
.end method
