.class public Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "EnumeratedIntegerDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332a04L


# instance fields
.field protected final innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/distribution/EnumeratedDistribution",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[I)V
    .locals 18
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "data"    # [I

    .prologue
    .line 113
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 114
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v4, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v2, p2

    .local v2, "arr$":[I
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_1

    aget v13, v2, v8

    .line 116
    .local v13, "value":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 117
    .local v3, "count":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 118
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 120
    :cond_0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 122
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v13    # "value":I
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v11

    .line 123
    .local v11, "massPoints":I
    move-object/from16 v0, p2

    array-length v15, v0

    int-to-double v6, v15

    .line 124
    .local v6, "denom":D
    new-array v14, v11, [I

    .line 125
    .local v14, "values":[I
    new-array v12, v11, [D

    .line 126
    .local v12, "probabilities":[D
    const/4 v9, 0x0

    .line 127
    .local v9, "index":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 128
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v14, v9

    .line 129
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v16, v16, v6

    aput-wide v16, v12, v9

    .line 130
    add-int/lit8 v9, v9, 0x1

    .line 131
    goto :goto_1

    .line 132
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    new-instance v15, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {v14, v12}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->createDistribution([I[D)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[I[D)V
    .locals 2
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "singletons"    # [I
    .param p3, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 100
    new-instance v0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {p2, p3}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->createDistribution([I[D)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    .line 102
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 144
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[I)V

    .line 145
    return-void
.end method

.method public constructor <init>([I[D)V
    .locals 1
    .param p1, "singletons"    # [I
    .param p2, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[I[D)V

    .line 79
    return-void
.end method

.method private static createDistribution([I[D)Ljava/util/List;
    .locals 6
    .param p0, "singletons"    # [I
    .param p1, "probabilities"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[D)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 155
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 156
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    array-length v4, p0

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 159
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v1, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 162
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 179
    const-wide/16 v2, 0x0

    .line 181
    .local v2, "probability":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 182
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, p1, :cond_0

    .line 183
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 187
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_1
    return-wide v2
.end method

.method public getNumericalMean()D
    .locals 8

    .prologue
    .line 196
    const-wide/16 v2, 0x0

    .line 198
    .local v2, "mean":D
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 199
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 200
    goto :goto_0

    .line 202
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 10

    .prologue
    .line 211
    const-wide/16 v2, 0x0

    .line 212
    .local v2, "mean":D
    const-wide/16 v4, 0x0

    .line 214
    .local v4, "meanOfSquares":D
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v6}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 215
    .local v1, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 216
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v8, v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 217
    goto :goto_0

    .line 219
    .end local v1    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    mul-double v6, v2, v2

    sub-double v6, v4, v6

    return-wide v6
.end method

.method public getSupportLowerBound()I
    .locals 8

    .prologue
    .line 230
    const v1, 0x7fffffff

    .line 231
    .local v1, "min":I
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/Pair;

    .line 232
    .local v2, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 233
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 237
    .end local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_1
    return v1
.end method

.method public getSupportUpperBound()I
    .locals 8

    .prologue
    .line 248
    const/high16 v1, -0x80000000

    .line 249
    .local v1, "max":I
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->getPmf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/Pair;

    .line 250
    .local v2, "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 251
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 255
    .end local v2    # "sample":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_1
    return v1
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public probability(I)D
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probability(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedIntegerDistribution;->innerDistribution:Lorg/apache/commons/math3/distribution/EnumeratedDistribution;

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
