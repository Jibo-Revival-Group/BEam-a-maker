.class Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;
.super Ljava/lang/Object;
.source "MapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/MapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairNeuronDouble"
.end annotation


# static fields
.field static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final neuron:Lorg/apache/commons/math3/ml/neuralnet/Neuron;

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble$1;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble$1;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ml/neuralnet/Neuron;D)V
    .locals 0
    .param p1, "neuron"    # Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .param p2, "value"    # D

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->neuron:Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 317
    iput-wide p2, p0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->value:D

    .line 318
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;

    .prologue
    .line 296
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->value:D

    return-wide v0
.end method


# virtual methods
.method public getNeuron()Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$PairNeuronDouble;->neuron:Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    return-object v0
.end method
