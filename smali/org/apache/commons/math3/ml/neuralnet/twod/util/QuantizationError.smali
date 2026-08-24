.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;
.super Ljava/lang/Object;
.source "QuantizationError.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 40
    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 22
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Ljava/lang/Iterable",
            "<[D>;)[[D"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v12

    .line 46
    .local v12, "nR":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v11

    .line 48
    .local v11, "nC":I
    new-instance v7, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    .line 51
    .local v7, "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    filled-new-array {v12, v11}, [I

    move-result-object v16

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 53
    .local v8, "hit":[[I
    filled-new-array {v12, v11}, [I

    move-result-object v16

    sget-object v17, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 55
    .local v6, "error":[[D
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    .line 56
    .local v15, "sample":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v15, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v2

    .line 58
    .local v2, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v10

    .line 59
    .local v10, "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    invoke-virtual {v10}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v14

    .line 60
    .local v14, "row":I
    invoke-virtual {v10}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v4

    .line 61
    .local v4, "col":I
    aget-object v16, v8, v14

    aget v17, v16, v4

    add-int/lit8 v17, v17, 0x1

    aput v17, v16, v4

    .line 62
    aget-object v16, v6, v14

    aget-wide v18, v16, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v17, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v15, v1}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v20

    add-double v18, v18, v20

    aput-wide v18, v16, v4

    goto :goto_0

    .line 65
    .end local v2    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v4    # "col":I
    .end local v10    # "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .end local v14    # "row":I
    .end local v15    # "sample":[D
    :cond_0
    const/4 v13, 0x0

    .local v13, "r":I
    :goto_1
    if-ge v13, v12, :cond_3

    .line 66
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_2
    if-ge v3, v11, :cond_2

    .line 67
    aget-object v16, v8, v13

    aget v5, v16, v3

    .line 68
    .local v5, "count":I
    if-eqz v5, :cond_1

    .line 69
    aget-object v16, v6, v13

    aget-wide v18, v16, v3

    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    aput-wide v18, v16, v3

    .line 66
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 65
    .end local v5    # "count":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 74
    .end local v3    # "c":I
    :cond_3
    return-object v6
.end method
