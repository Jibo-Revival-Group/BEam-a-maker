.class final Lorg/apache/commons/math3/analysis/FunctionUtils$17;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 619
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 20
    .param p1, "t"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 630
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v9

    .line 631
    .local v9, "parameters":I
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v7

    .line 632
    .local v7, "order":I
    move-object/from16 v0, p1

    array-length v6, v0

    .line 633
    .local v6, "n":I
    const/4 v11, 0x1

    if-le v7, v11, :cond_0

    .line 634
    new-instance v11, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v11, v14, v15, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v11

    .line 638
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 639
    aget-object v11, p1, v4

    invoke-virtual {v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v11

    if-eq v11, v9, :cond_1

    .line 640
    new-instance v11, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v14, p1, v4

    invoke-virtual {v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v14

    invoke-direct {v11, v14, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v11

    .line 643
    :cond_1
    aget-object v11, p1, v4

    invoke-virtual {v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v11

    if-eq v11, v7, :cond_2

    .line 644
    new-instance v11, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v14, p1, v4

    invoke-virtual {v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v14

    invoke-direct {v11, v14, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v11

    .line 638
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 649
    :cond_3
    new-array v10, v6, [D

    .line 650
    .local v10, "point":[D
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_4

    .line 651
    aget-object v11, p1, v4

    invoke-virtual {v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v14

    aput-wide v14, v10, v4

    .line 650
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 653
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v11, v10}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->value([D)D

    move-result-wide v12

    .line 654
    .local v12, "value":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v11}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v11

    invoke-interface {v11, v10}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v3

    .line 657
    .local v3, "gradient":[D
    add-int/lit8 v11, v9, 0x1

    new-array v2, v11, [D

    .line 658
    .local v2, "derivatives":[D
    const/4 v11, 0x0

    aput-wide v12, v2, v11

    .line 659
    new-array v8, v9, [I

    .line 660
    .local v8, "orders":[I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_6

    .line 661
    const/4 v11, 0x1

    aput v11, v8, v4

    .line 662
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v6, :cond_5

    .line 663
    add-int/lit8 v11, v4, 0x1

    aget-wide v14, v2, v11

    aget-wide v16, v3, v5

    aget-object v18, p1, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    aput-wide v14, v2, v11

    .line 662
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 665
    :cond_5
    const/4 v11, 0x0

    aput v11, v8, v4

    .line 660
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 668
    .end local v5    # "j":I
    :cond_6
    new-instance v11, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v11, v9, v7, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v11
.end method
