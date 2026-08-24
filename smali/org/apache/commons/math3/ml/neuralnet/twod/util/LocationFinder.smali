.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
.super Ljava/lang/Object;
.source "LocationFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    }
.end annotation


# instance fields
.field private final locations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V
    .locals 8
    .param p1, "map"    # Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    .line 80
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v3

    .line 81
    .local v3, "nR":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v2

    .line 83
    .local v2, "nC":I
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 84
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 85
    invoke-virtual {p1, v4, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 86
    .local v1, "id":Ljava/lang/Long;
    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 87
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v5

    .line 89
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    new-instance v6, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    invoke-direct {v6, v4, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;-><init>(II)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "c":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .locals 4
    .param p1, "n"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    return-object v0
.end method
