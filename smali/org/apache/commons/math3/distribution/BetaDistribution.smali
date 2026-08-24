.class public Lorg/apache/commons/math3/distribution/BetaDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "BetaDistribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;
    }
.end annotation


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x10f54b9581f4e2a4L


# instance fields
.field private final alpha:D

.field private final beta:D

.field private final solverAbsoluteAccuracy:D

.field private z:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9
    .param p1, "alpha"    # D
    .param p3, "beta"    # D

    .prologue
    .line 67
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(DDD)V

    .line 68
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "inverseCumAccuracy"    # D

    .prologue
    .line 88
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D

    .prologue
    .line 100
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 2
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "inverseCumAccuracy"    # D

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 120
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    .line 121
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    .line 122
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    .line 123
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->solverAbsoluteAccuracy:D

    .line 124
    return-void
.end method

.method private recomputeZ()V
    .locals 6

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 182
    cmpg-double v4, p1, v0

    if-gtz v4, :cond_0

    .line 187
    :goto_0
    return-wide v0

    .line 184
    :cond_0
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_1

    move-wide v0, v2

    .line 185
    goto :goto_0

    .line 187
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public density(D)D
    .locals 5
    .param p1, "x"    # D

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/BetaDistribution;->logDensity(D)D

    move-result-wide v0

    .line 154
    .local v0, "logDensity":D
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getAlpha()D
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    return-wide v0
.end method

.method public getBeta()D
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getAlpha()D

    move-result-wide v0

    .line 211
    .local v0, "a":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getBeta()D

    move-result-wide v2

    add-double/2addr v2, v0

    div-double v2, v0, v2

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 12

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getAlpha()D

    move-result-wide v0

    .line 223
    .local v0, "a":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getBeta()D

    move-result-wide v4

    .line 224
    .local v4, "b":D
    add-double v2, v0, v4

    .line 225
    .local v2, "alphabetasum":D
    mul-double v6, v0, v4

    mul-double v8, v2, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v2

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    return-wide v6
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 247
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->recomputeZ()V

    .line 161
    const-wide/16 v4, 0x0

    cmpg-double v4, p1, v4

    if-ltz v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v4

    if-lez v4, :cond_1

    .line 162
    :cond_0
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 176
    :goto_0
    return-wide v4

    .line 163
    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_3

    .line 164
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 165
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_BETA_DENSITY_AT_0_FOR_SOME_ALPHA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 167
    :cond_2
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 168
    :cond_3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_5

    .line 169
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 170
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_BETA_DENSITY_AT_1_FOR_SOME_BETA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 172
    :cond_4
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 174
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    .line 175
    .local v2, "logX":D
    neg-double v4, p1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    .line 176
    .local v0, "log1mX":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v4, v2

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    sub-double/2addr v4, v6

    goto :goto_0
.end method

.method public sample()D
    .locals 6

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;->sample(Lorg/apache/commons/math3/random/RandomGenerator;DD)D

    move-result-wide v0

    return-wide v0
.end method
