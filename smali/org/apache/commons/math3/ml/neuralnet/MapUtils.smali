.class public Lorg/apache/commons/math3/ml/neuralnet/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeHitHistogram(Ljava/lang/Iterable;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[[I
    .locals 15
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<[D>;",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")[[I"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v5, "hit":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v9

    .line 202
    .local v9, "net":Lorg/apache/commons/math3/ml/neuralnet/Network;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 203
    .local v3, "f":[D
    move-object/from16 v0, p2

    invoke-static {v3, v9, v0}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v1

    .line 204
    .local v1, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 205
    .local v2, "count":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 206
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    .end local v1    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v2    # "count":Ljava/lang/Integer;
    .end local v3    # "f":[D
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v12

    .line 214
    .local v12, "numRows":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v11

    .line 215
    .local v11, "numCols":I
    filled-new-array {v12, v11}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 217
    .local v4, "histo":[[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_4

    .line 218
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v11, :cond_3

    .line 219
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v10

    .line 220
    .local v10, "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 221
    .restart local v2    # "count":Ljava/lang/Integer;
    if-nez v2, :cond_2

    .line 222
    aget-object v13, v4, v6

    const/4 v14, 0x0

    aput v14, v13, v8

    .line 218
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 224
    :cond_2
    aget-object v13, v4, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v8

    goto :goto_3

    .line 217
    .end local v2    # "count":Ljava/lang/Integer;
    .end local v10    # "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 229
    .end local v8    # "j":I
    :cond_4
    return-object v4
.end method

.method public static computeQuantizationError(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)D
    .locals 8
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<[D>;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")D"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    const-wide/16 v2, 0x0

    .line 247
    .local v2, "d":D
    const/4 v0, 0x0

    .line 248
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 249
    .local v1, "f":[D
    add-int/lit8 v0, v0, 0x1

    .line 250
    invoke-static {v1, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v5

    invoke-interface {p2, v1, v5}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 251
    goto :goto_0

    .line 253
    .end local v1    # "f":[D
    :cond_0
    if-nez v0, :cond_1

    .line 254
    new-instance v5, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v5

    .line 257
    :cond_1
    int-to-double v6, v0

    div-double v6, v2, v6

    return-wide v6
.end method

.method public static computeTopographicError(Ljava/lang/Iterable;Lorg/apache/commons/math3/ml/neuralnet/Network;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)D
    .locals 10
    .param p1, "net"    # Lorg/apache/commons/math3/ml/neuralnet/Network;
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<[D>;",
            "Lorg/apache/commons/math3/ml/neuralnet/Network;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")D"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    const/4 v3, 0x0

    .line 275
    .local v3, "notAdjacentCount":I
    const/4 v0, 0x0

    .line 276
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 277
    .local v1, "f":[D
    add-int/lit8 v0, v0, 0x1

    .line 278
    invoke-static {v1, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBestAndSecondBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v4

    .line 279
    .local v4, "p":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "f":[D
    .end local v4    # "p":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 287
    new-instance v5, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v5

    .line 290
    :cond_2
    int-to-double v6, v3

    int-to-double v8, v0

    div-double/2addr v6, v8

    return-wide v6
.end method

.method public static computeU(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[[D
    .locals 20
    .param p0, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .param p1, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v14

    .line 163
    .local v14, "numRows":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v13

    .line 164
    .local v13, "numCols":I
    filled-new-array {v14, v13}, [I

    move-result-object v16

    sget-object v17, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[D

    .line 166
    .local v15, "uMatrix":[[D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v11

    .line 168
    .local v11, "net":Lorg/apache/commons/math3/ml/neuralnet/Network;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v14, :cond_2

    .line 169
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v13, :cond_1

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v12

    .line 171
    .local v12, "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v10

    .line 172
    .local v10, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v3

    .line 174
    .local v3, "features":[D
    const-wide/16 v4, 0x0

    .line 175
    .local v4, "d":D
    const/4 v2, 0x0

    .line 176
    .local v2, "count":I
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 177
    .local v9, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    add-int/lit8 v2, v2, 0x1

    .line 178
    invoke-virtual {v9}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v1}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v16

    add-double v4, v4, v16

    .line 179
    goto :goto_2

    .line 181
    .end local v9    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_0
    aget-object v16, v15, v6

    int-to-double v0, v2

    move-wide/from16 v18, v0

    div-double v18, v4, v18

    aput-wide v18, v16, v8

    .line 169
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 168
    .end local v2    # "count":I
    .end local v3    # "features":[D
    .end local v4    # "d":D
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v12    # "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    .end local v8    # "j":I
    :cond_2
    return-object v15
.end method

.method public static findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 8
    .param p0, "features"    # [D
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 61
    .local v4, "min":D
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 62
    .local v6, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v6}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v7

    invoke-interface {p2, v7, p0}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v2

    .line 63
    .local v2, "d":D
    cmpg-double v7, v2, v4

    if-gez v7, :cond_0

    .line 64
    move-wide v4, v2

    .line 65
    move-object v0, v6

    goto :goto_0

    .line 69
    .end local v2    # "d":D
    .end local v6    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_1
    return-object v0
.end method

.method public static findBestAndSecondBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/util/Pair;
    .locals 10
    .param p0, "features"    # [D
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    new-array v0, v6, [Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    aput-object v7, v0, v8

    aput-object v7, v0, v9

    .line 89
    .local v0, "best":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    new-array v4, v6, [D

    fill-array-data v4, :array_0

    .line 91
    .local v4, "min":[D
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 92
    .local v5, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v6

    invoke-interface {p2, v6, p0}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v2

    .line 93
    .local v2, "d":D
    aget-wide v6, v4, v8

    cmpg-double v6, v2, v6

    if-gez v6, :cond_1

    .line 95
    aget-wide v6, v4, v8

    aput-wide v6, v4, v9

    .line 96
    aget-object v6, v0, v8

    aput-object v6, v0, v9

    .line 99
    aput-wide v2, v4, v8

    .line 100
    aput-object v5, v0, v8

    goto :goto_0

    .line 101
    :cond_1
    aget-wide v6, v4, v9

    cmpg-double v6, v2, v6

    if-gez v6, :cond_0

    .line 103
    aput-wide v2, v4, v9

    .line 104
    aput-object v5, v0, v9

    goto :goto_0

    .line 108
    .end local v2    # "d":D
    .end local v5    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_2
    new-instance v6, Lorg/apache/commons/math3/util/Pair;

    aget-object v7, v0, v8

    aget-object v8, v0, v9

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 89
    nop

    :array_0
    .array-data 8
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
    .end array-data
.end method

.method public static sort([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 9
    .param p0, "features"    # [D
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;",
            "Lorg/apache/commons/math3/ml/distance/DistanceMeasure;",
            ")[",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "neurons":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 136
    .local v6, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v6}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v8

    invoke-interface {p2, v8, p0}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v0

    .line 137
    .local v0, "d":D
    new-instance v8, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;

    invoke-direct {v8, v6, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;-><init>(Lorg/apache/commons/math3/ml/neuralnet/Neuron;D)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v0    # "d":D
    .end local v6    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_0
    sget-object v8, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 143
    .local v4, "len":I
    new-array v7, v4, [Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 145
    .local v7, "sorted":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 146
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;

    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->getNeuron()Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v8

    aput-object v8, v7, v2

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    :cond_1
    return-object v7
.end method
