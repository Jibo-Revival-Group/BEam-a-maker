.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;
.super Ljava/lang/Object;
.source "HitHistogram.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final normalizeCount:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "normalizeCount"    # Z
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->normalizeCount:Z

    .line 46
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 47
    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 20
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
    .line 52
    .local p2, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v10

    .line 53
    .local v10, "nR":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v9

    .line 55
    .local v9, "nC":I
    new-instance v5, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    .line 58
    .local v5, "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    const/4 v11, 0x0

    .line 60
    .local v11, "numSamples":I
    filled-new-array {v10, v9}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 62
    .local v6, "hit":[[D
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [D

    .line 63
    .local v14, "sample":[D
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v0, p1

    invoke-static {v14, v0, v15}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v2

    .line 65
    .local v2, "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v8

    .line 66
    .local v8, "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v13

    .line 67
    .local v13, "row":I
    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v4

    .line 68
    .local v4, "col":I
    aget-object v15, v6, v13

    aget-wide v16, v15, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v18

    aput-wide v16, v15, v4

    .line 70
    add-int/lit8 v11, v11, 0x1

    .line 71
    goto :goto_0

    .line 73
    .end local v2    # "best":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v4    # "col":I
    .end local v8    # "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .end local v13    # "row":I
    .end local v14    # "sample":[D
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->normalizeCount:Z

    if-eqz v15, :cond_2

    .line 74
    const/4 v12, 0x0

    .local v12, "r":I
    :goto_1
    if-ge v12, v10, :cond_2

    .line 75
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_2
    if-ge v3, v9, :cond_1

    .line 76
    aget-object v15, v6, v12

    aget-wide v16, v15, v3

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    aput-wide v16, v15, v3

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 74
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 81
    .end local v3    # "c":I
    .end local v12    # "r":I
    :cond_2
    return-object v6
.end method
