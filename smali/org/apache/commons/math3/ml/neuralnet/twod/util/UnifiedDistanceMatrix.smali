.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;
.super Ljava/lang/Object;
.source "UnifiedDistanceMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final individualDistances:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "individualDistances"    # Z
    .param p2, "distance"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances:Z

    .line 60
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 61
    return-void
.end method

.method private averageDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 20
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v14

    .line 185
    .local v14, "numRows":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v13

    .line 186
    .local v13, "numCols":I
    filled-new-array {v14, v13}, [I

    move-result-object v16

    sget-object v17, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[D

    .line 188
    .local v15, "uMatrix":[[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v11

    .line 190
    .local v11, "net":Lorg/apache/commons/math3/ml/neuralnet/Network;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v14, :cond_2

    .line 191
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v13, :cond_1

    .line 192
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v12

    .line 193
    .local v12, "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v10

    .line 194
    .local v10, "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v3

    .line 196
    .local v3, "features":[D
    const-wide/16 v4, 0x0

    .line 197
    .local v4, "d":D
    const/4 v2, 0x0

    .line 198
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

    .line 199
    .local v9, "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    add-int/lit8 v2, v2, 0x1

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v16, v0

    invoke-virtual {v9}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v3, v1}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v16

    add-double v4, v4, v16

    .line 201
    goto :goto_2

    .line 203
    .end local v9    # "n":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_0
    aget-object v16, v15, v6

    int-to-double v0, v2

    move-wide/from16 v18, v0

    div-double v18, v4, v18

    aput-wide v18, v16, v8

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 190
    .end local v2    # "count":I
    .end local v3    # "features":[D
    .end local v4    # "d":D
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "neighbours":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/neuralnet/Neuron;>;"
    .end local v12    # "neuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 207
    .end local v8    # "j":I
    :cond_2
    return-object v15
.end method

.method private individualDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 30
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    .prologue
    .line 84
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v17

    .line 85
    .local v17, "numRows":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v16

    .line 87
    .local v16, "numCols":I
    mul-int/lit8 v23, v17, 0x2

    add-int/lit8 v23, v23, 0x1

    mul-int/lit8 v24, v16, 0x2

    add-int/lit8 v24, v24, 0x1

    filled-new-array/range {v23 .. v24}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[D

    .line 93
    .local v22, "uMatrix":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 95
    mul-int/lit8 v23, v7, 0x2

    add-int/lit8 v10, v23, 0x1

    .line 97
    .local v10, "iR":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_2

    .line 99
    mul-int/lit8 v23, v11, 0x2

    add-int/lit8 v12, v23, 0x1

    .line 101
    .local v12, "jR":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v6

    .line 105
    .local v6, "current":[D
    sget-object v23, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v24, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v7, v11, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v15

    .line 108
    .local v15, "neighbour":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    if-eqz v15, :cond_0

    .line 109
    aget-object v23, v22, v10

    add-int/lit8 v24, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v25, v0

    invoke-virtual {v15}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v6, v1}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v26

    aput-wide v26, v23, v24

    .line 114
    :cond_0
    sget-object v23, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v24, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v7, v11, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v15

    .line 117
    if-eqz v15, :cond_1

    .line 118
    add-int/lit8 v23, v10, 0x1

    aget-object v23, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v24, v0

    invoke-virtual {v15}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v1}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v24

    aput-wide v24, v23, v12

    .line 97
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 93
    .end local v6    # "current":[D
    .end local v12    # "jR":I
    .end local v15    # "neighbour":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 129
    .end local v10    # "iR":I
    .end local v11    # "j":I
    :cond_3
    const/4 v7, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v7, v0, :cond_8

    .line 131
    mul-int/lit8 v23, v7, 0x2

    add-int/lit8 v10, v23, 0x1

    .line 133
    .restart local v10    # "iR":I
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_7

    .line 135
    mul-int/lit8 v23, v11, 0x2

    add-int/lit8 v12, v23, 0x1

    .line 137
    .restart local v12    # "jR":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v6

    .line 138
    .local v6, "current":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    sget-object v23, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v24, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v7, v11, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v19

    .line 141
    .local v19, "right":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    sget-object v23, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v24, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v7, v11, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    .line 144
    .local v4, "bottom":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    sget-object v23, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v24, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v7, v11, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    .line 148
    .local v5, "bottomRight":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    if-nez v5, :cond_5

    const-wide/16 v8, 0x0

    .line 152
    .local v8, "current2BottomRight":D
    :goto_4
    if-eqz v19, :cond_4

    if-nez v4, :cond_6

    :cond_4
    const-wide/16 v20, 0x0

    .line 159
    .local v20, "right2Bottom":D
    :goto_5
    add-int/lit8 v23, v10, 0x1

    aget-object v23, v22, v23

    add-int/lit8 v24, v12, 0x1

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v28, v8, v20

    mul-double v26, v26, v28

    aput-wide v26, v23, v24

    .line 133
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 148
    .end local v8    # "current2BottomRight":D
    .end local v20    # "right2Bottom":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v24

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v8

    goto :goto_4

    .line 152
    .restart local v8    # "current2BottomRight":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v20

    goto :goto_5

    .line 129
    .end local v4    # "bottom":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v5    # "bottomRight":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v6    # "current":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v8    # "current2BottomRight":D
    .end local v12    # "jR":I
    .end local v19    # "right":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 164
    .end local v10    # "iR":I
    .end local v11    # "j":I
    :cond_8
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v14, v23, -0x1

    .line 165
    .local v14, "lastRow":I
    const/16 v23, 0x0

    aget-object v24, v22, v14

    aput-object v24, v22, v23

    .line 169
    const/16 v23, 0x0

    aget-object v23, v22, v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v13, v23, -0x1

    .line 170
    .local v13, "lastCol":I
    const/16 v18, 0x0

    .local v18, "r":I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v14, :cond_9

    .line 171
    aget-object v23, v22, v18

    const/16 v24, 0x0

    aget-object v25, v22, v18

    aget-wide v26, v25, v13

    aput-wide v26, v23, v24

    .line 170
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 174
    :cond_9
    return-object v22
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 1
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->averageDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D

    move-result-object v0

    goto :goto_0
.end method
