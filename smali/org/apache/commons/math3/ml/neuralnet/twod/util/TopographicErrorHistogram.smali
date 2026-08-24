.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;
.super Ljava/lang/Object;
.source "TopographicErrorHistogram.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final relativeCount:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "relativeCount"    # Z
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->relativeCount:Z

    .line 48
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 49
    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 24
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
    .line 54
    .local p2, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v13

    .line 55
    .local v13, "nR":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v12

    .line 57
    .local v12, "nC":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v14

    .line 58
    .local v14, "net":Lorg/apache/commons/math3/ml/neuralnet/Network;
    new-instance v8, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    .line 61
    .local v8, "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    filled-new-array {v13, v12}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    .line 63
    .local v9, "hit":[[I
    filled-new-array {v13, v12}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 65
    .local v7, "error":[[D
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [D

    .line 66
    .local v18, "sample":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBestAndSecondBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v15

    .line 67
    .local v15, "p":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v15}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 69
    .local v4, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v8, v4}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v11

    .line 70
    .local v11, "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v17

    .line 71
    .local v17, "row":I
    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v6

    .line 72
    .local v6, "col":I
    aget-object v19, v9, v17

    aget v20, v19, v6

    add-int/lit8 v20, v20, 0x1

    aput v20, v19, v6

    .line 74
    invoke-virtual {v14, v4}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v19

    invoke-virtual {v15}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 77
    aget-object v19, v7, v17

    aget-wide v20, v19, v6

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v20, v20, v22

    aput-wide v20, v19, v6

    goto :goto_0

    .line 81
    .end local v4    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v6    # "col":I
    .end local v11    # "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .end local v15    # "p":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v17    # "row":I
    .end local v18    # "sample":[D
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->relativeCount:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 82
    const/16 v16, 0x0

    .local v16, "r":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_3

    .line 83
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_2
    if-ge v5, v12, :cond_2

    .line 84
    aget-object v19, v7, v16

    aget-wide v20, v19, v5

    aget-object v22, v9, v16

    aget v22, v22, v5

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    aput-wide v20, v19, v5

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 82
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 89
    .end local v5    # "c":I
    .end local v16    # "r":I
    :cond_3
    return-object v7
.end method
