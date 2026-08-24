.class public Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
.super Ljava/lang/Object;
.source "NeuronSquareMesh2D.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;,
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;,
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;,
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final identifiers:[[J

.field private final neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

.field private final network:Lorg/apache/commons/math3/ml/neuralnet/Network;

.field private final numberOfColumns:I

.field private final numberOfRows:I

.field private final wrapColumns:Z

.field private final wrapRows:Z


# direct methods
.method public constructor <init>(IZIZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)V
    .locals 9
    .param p1, "numRows"    # I
    .param p2, "wrapRowDim"    # Z
    .param p3, "numCols"    # I
    .param p4, "wrapColDim"    # Z
    .param p5, "neighbourhoodType"    # Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
    .param p6, "featureInit"    # [Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    if-ge p1, v7, :cond_0

    .line 171
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 173
    :cond_0
    if-ge p3, v7, :cond_1

    .line 174
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 177
    :cond_1
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    .line 178
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 179
    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    .line 180
    iput-boolean p4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 181
    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 182
    iget v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iput-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    .line 184
    array-length v1, p6

    .line 185
    .local v1, "fLen":I
    new-instance v5, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 188
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_4

    .line 189
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, p3, :cond_3

    .line 190
    new-array v2, v1, [D

    .line 191
    .local v2, "features":[D
    const/4 v0, 0x0

    .local v0, "fIndex":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 192
    aget-object v5, p6, v0

    invoke-interface {v5}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;->value()D

    move-result-wide v6

    aput-wide v6, v2, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "fIndex":I
    .end local v2    # "features":[D
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v4    # "j":I
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->createLinks()V

    .line 200
    return-void
.end method

.method private constructor <init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;Lorg/apache/commons/math3/ml/neuralnet/Network;[[J)V
    .locals 1
    .param p1, "wrapRowDim"    # Z
    .param p2, "wrapColDim"    # Z
    .param p3, "neighbourhoodType"    # Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
    .param p4, "net"    # Lorg/apache/commons/math3/ml/neuralnet/Network;
    .param p5, "idGrid"    # [[J

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    array-length v0, p5

    iput v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    .line 220
    const/4 v0, 0x0

    aget-object v0, p5, v0

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    .line 221
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 222
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 223
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 224
    iput-object p4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 225
    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    .line 226
    return-void
.end method

.method constructor <init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V
    .locals 7
    .param p1, "wrapRowDim"    # Z
    .param p2, "wrapColDim"    # Z
    .param p3, "neighbourhoodType"    # Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
    .param p4, "featuresList"    # [[[D

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    array-length v3, p4

    iput v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    .line 111
    aget-object v3, p4, v4

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    .line 113
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v3, v5, :cond_0

    .line 114
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    .line 116
    :cond_0
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v3, v5, :cond_1

    .line 117
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    .line 120
    :cond_1
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 121
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 122
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 124
    aget-object v3, p4, v4

    aget-object v3, v3, v4

    array-length v0, v3

    .line 125
    .local v0, "fLen":I
    new-instance v3, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5, v0}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 126
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iput-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v1, v3, :cond_3

    .line 130
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v2, v3, :cond_2

    .line 131
    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    aget-object v5, p4, v1

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "j":I
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->createLinks()V

    .line 137
    return-void
.end method

.method private createLinks()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 426
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v9, "linkEnd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    add-int/lit8 v6, v10, -0x1

    .line 428
    .local v6, "iLast":I
    iget v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    add-int/lit8 v8, v10, -0x1

    .line 429
    .local v8, "jLast":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v4, v10, :cond_1a

    .line 430
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v7, v10, :cond_19

    .line 431
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 433
    sget-object v10, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;->$SwitchMap$org$apache$commons$math3$ml$neuralnet$SquareNeighbourhood:[I

    iget-object v11, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 542
    new-instance v10, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v10}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v10

    .line 437
    :pswitch_0
    if-lez v4, :cond_1

    .line 438
    if-lez v7, :cond_0

    .line 439
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    if-ge v7, v8, :cond_1

    .line 442
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_1
    if-ge v4, v6, :cond_3

    .line 446
    if-lez v7, :cond_2

    .line 447
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_2
    if-ge v7, v8, :cond_3

    .line 450
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_3
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v10, :cond_5

    .line 454
    if-nez v4, :cond_f

    .line 455
    if-lez v7, :cond_4

    .line 456
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_4
    if-ge v7, v8, :cond_5

    .line 459
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_5
    :goto_2
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v10, :cond_7

    .line 471
    if-nez v7, :cond_11

    .line 472
    if-lez v4, :cond_6

    .line 473
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_6
    if-ge v4, v6, :cond_7

    .line 476
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_7
    :goto_3
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v10, :cond_8

    .line 489
    if-nez v4, :cond_13

    if-nez v7, :cond_13

    .line 491
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_8
    :goto_4
    :pswitch_1
    if-lez v4, :cond_9

    .line 512
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_9
    if-ge v4, v6, :cond_a

    .line 515
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_a
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v10, :cond_b

    .line 518
    if-nez v4, :cond_16

    .line 519
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_b
    :goto_5
    if-lez v7, :cond_c

    .line 527
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v4

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_c
    if-ge v7, v8, :cond_d

    .line 530
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v4

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_d
    iget-boolean v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v10, :cond_e

    .line 533
    if-nez v7, :cond_17

    .line 534
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v4

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_e
    :goto_6
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v11, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v11, v11, v4

    aget-wide v12, v11, v7

    invoke-virtual {v10, v12, v13}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v0

    .line 546
    .local v0, "aNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 547
    .local v2, "b":J
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v10, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v1

    .line 550
    .local v1, "bNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    goto :goto_7

    .line 461
    .end local v0    # "aNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v1    # "bNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v2    # "b":J
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_f
    if-ne v4, v6, :cond_5

    .line 462
    if-lez v7, :cond_10

    .line 463
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_10
    if-ge v7, v8, :cond_5

    .line 466
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 478
    :cond_11
    if-ne v7, v8, :cond_7

    .line 479
    if-lez v4, :cond_12

    .line 480
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_12
    if-ge v4, v6, :cond_7

    .line 483
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 492
    :cond_13
    if-nez v4, :cond_14

    if-ne v7, v8, :cond_14

    .line 494
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v6

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 495
    :cond_14
    if-ne v4, v6, :cond_15

    if-nez v7, :cond_15

    .line 497
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    aget-wide v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 498
    :cond_15
    if-ne v4, v6, :cond_8

    if-ne v7, v8, :cond_8

    .line 500
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 520
    :cond_16
    if-ne v4, v6, :cond_b

    .line 521
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v14

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 535
    :cond_17
    if-ne v7, v8, :cond_e

    .line 536
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v10, v10, v4

    aget-wide v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 430
    .restart local v0    # "aNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 429
    .end local v0    # "aNeuron":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 554
    .end local v7    # "j":I
    :cond_1a
    return-void

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLocation(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)[I
    .locals 6
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "alongRowDir"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;
    .param p4, "alongColDir"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    .prologue
    .line 364
    sget-object v4, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;->$SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$HorizontalDirection:[I

    invoke-virtual {p3}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 376
    new-instance v4, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v4

    .line 366
    :pswitch_0
    const/4 v1, -0x1

    .line 378
    .local v1, "colOffset":I
    :goto_0
    add-int v0, p2, v1

    .line 379
    .local v0, "colIndex":I
    iget-boolean v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v4, :cond_0

    .line 380
    if-gez v0, :cond_1

    .line 381
    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    add-int/2addr v0, v4

    .line 388
    :cond_0
    :goto_1
    sget-object v4, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;->$SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$VerticalDirection:[I

    invoke-virtual {p4}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 400
    new-instance v4, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v4

    .line 369
    .end local v0    # "colIndex":I
    .end local v1    # "colOffset":I
    :pswitch_1
    const/4 v1, 0x1

    .line 370
    .restart local v1    # "colOffset":I
    goto :goto_0

    .line 372
    .end local v1    # "colOffset":I
    :pswitch_2
    const/4 v1, 0x0

    .line 373
    .restart local v1    # "colOffset":I
    goto :goto_0

    .line 383
    .restart local v0    # "colIndex":I
    :cond_1
    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    rem-int/2addr v0, v4

    goto :goto_1

    .line 390
    :pswitch_3
    const/4 v3, -0x1

    .line 402
    .local v3, "rowOffset":I
    :goto_2
    add-int v2, p1, v3

    .line 403
    .local v2, "rowIndex":I
    iget-boolean v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v4, :cond_2

    .line 404
    if-gez v2, :cond_4

    .line 405
    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    add-int/2addr v2, v4

    .line 411
    :cond_2
    :goto_3
    if-ltz v2, :cond_3

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v2, v4, :cond_3

    if-ltz v0, :cond_3

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-lt v0, v4, :cond_5

    .line 415
    :cond_3
    const/4 v4, 0x0

    .line 417
    :goto_4
    return-object v4

    .line 393
    .end local v2    # "rowIndex":I
    .end local v3    # "rowOffset":I
    :pswitch_4
    const/4 v3, 0x1

    .line 394
    .restart local v3    # "rowOffset":I
    goto :goto_2

    .line 396
    .end local v3    # "rowOffset":I
    :pswitch_5
    const/4 v3, 0x0

    .line 397
    .restart local v3    # "rowOffset":I
    goto :goto_2

    .line 407
    .restart local v2    # "rowIndex":I
    :cond_4
    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    rem-int/2addr v2, v4

    goto :goto_3

    .line 417
    :cond_5
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    goto :goto_4

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 388
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .prologue
    .line 562
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 571
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, [D

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    .line 572
    .local v0, "featuresList":[[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v1, v3, :cond_1

    .line 573
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v2, v3, :cond_0

    .line 574
    aget-object v3, v0, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v4

    aput-object v4, v3, v2

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 572
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    .end local v2    # "j":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;

    iget-boolean v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    iget-boolean v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    iget-object v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;-><init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V

    return-object v3
.end method


# virtual methods
.method public declared-synchronized copy()Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .locals 8

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    .line 238
    .local v5, "idGrid":[[J
    const/4 v7, 0x0

    .local v7, "r":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v7, v0, :cond_1

    .line 239
    const/4 v6, 0x0

    .local v6, "c":I
    :goto_1
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v6, v0, :cond_0

    .line 240
    aget-object v0, v5, v7

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v1, v1, v7

    aget-wide v2, v1, v6

    aput-wide v2, v0, v6

    .line 239
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 238
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 244
    .end local v6    # "c":I
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    iget-boolean v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    iget-boolean v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/neuralnet/Network;->copy()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;-><init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;Lorg/apache/commons/math3/ml/neuralnet/Network;[[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 237
    .end local v5    # "idGrid":[[J
    .end local v7    # "r":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    return-object v0
.end method

.method public getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 4
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    const/4 v2, 0x0

    .line 305
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-lt p1, v0, :cond_1

    .line 307
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 309
    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-lt p2, v0, :cond_3

    .line 311
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 314
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v1, v1, p1

    aget-wide v2, v1, p2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v0

    return-object v0
.end method

.method public getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "alongRowDir"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;
    .param p4, "alongColDir"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    .prologue
    .line 337
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getLocation(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)[I

    move-result-object v0

    .line 339
    .local v0, "location":[I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v1

    goto :goto_0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ml/neuralnet/Network;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
