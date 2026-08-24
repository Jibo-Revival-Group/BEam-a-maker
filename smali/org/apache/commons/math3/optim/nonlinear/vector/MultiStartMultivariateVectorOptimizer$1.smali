.class Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;
.super Ljava/lang/Object;
.source "MultiStartMultivariateVectorOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->getPairComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private final target:Lorg/apache/commons/math3/linear/RealVector;

.field final synthetic this$0:Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;

.field private final weight:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;)V
    .locals 3

    .prologue
    .line 99
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;

    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->access$000(Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;)Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->getTarget()[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->target:Lorg/apache/commons/math3/linear/RealVector;

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->access$000(Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;)Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->weight:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method private weightedResidual(Lorg/apache/commons/math3/optim/PointVectorValuePair;)D
    .locals 4
    .param p1, "pv"    # Lorg/apache/commons/math3/optim/PointVectorValuePair;

    .prologue
    .line 118
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValueRef()[D

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 119
    .local v1, "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->target:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 120
    .local v0, "r":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->weight:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    check-cast p2, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->compare(Lorg/apache/commons/math3/optim/PointVectorValuePair;Lorg/apache/commons/math3/optim/PointVectorValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/optim/PointVectorValuePair;Lorg/apache/commons/math3/optim/PointVectorValuePair;)I
    .locals 4
    .param p1, "o1"    # Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .param p2, "o2"    # Lorg/apache/commons/math3/optim/PointVectorValuePair;

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 109
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 109
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    if-nez p2, :cond_2

    .line 111
    const/4 v0, -0x1

    goto :goto_0

    .line 113
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->weightedResidual(Lorg/apache/commons/math3/optim/PointVectorValuePair;)D

    move-result-wide v0

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;->weightedResidual(Lorg/apache/commons/math3/optim/PointVectorValuePair;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_0
.end method
