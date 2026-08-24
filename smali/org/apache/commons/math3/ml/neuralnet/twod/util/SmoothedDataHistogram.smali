.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;
.super Ljava/lang/Object;
.source "SmoothedDataHistogram.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final membershipNormalization:D

.field private final smoothingBins:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 6
    .param p1, "smoothingBins"    # I
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    .line 51
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .local v2, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 55
    sub-int v1, p1, v0

    int-to-double v4, v1

    add-double/2addr v2, v4

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->membershipNormalization:D

    .line 59
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
    .line 70
    .local p2, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[D>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v10

    .line 71
    .local v10, "nR":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v9

    .line 73
    .local v9, "nC":I
    mul-int v8, v10, v9

    .line 74
    .local v8, "mapSize":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    if-ge v8, v14, :cond_0

    .line 75
    new-instance v14, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v14

    .line 78
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    .line 81
    .local v3, "finder":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
    filled-new-array {v10, v9}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 83
    .local v4, "histo":[[D
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    .line 84
    .local v12, "sample":[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v12, v14, v15}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->sort([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v13

    .line 87
    .local v13, "sorted":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    if-ge v5, v14, :cond_1

    .line 88
    aget-object v14, v13, v5

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v7

    .line 89
    .local v7, "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v11

    .line 90
    .local v11, "row":I
    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v2

    .line 91
    .local v2, "col":I
    aget-object v14, v4, v11

    aget-wide v16, v14, v2

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    sub-int/2addr v15, v5

    int-to-double v0, v15

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->membershipNormalization:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    aput-wide v16, v14, v2

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "col":I
    .end local v5    # "i":I
    .end local v7    # "loc":Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .end local v11    # "row":I
    .end local v12    # "sample":[D
    .end local v13    # "sorted":[Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_2
    return-object v4
.end method
