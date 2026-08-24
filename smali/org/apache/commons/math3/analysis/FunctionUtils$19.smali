.class final Lorg/apache/commons/math3/analysis/FunctionUtils$19;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 1
    .param p1, "x"    # [D

    .prologue
    .line 746
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->value([D)[D

    move-result-object v0

    return-object v0
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 22
    .param p1, "t"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 757
    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v11

    .line 758
    .local v11, "parameters":I
    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v9

    .line 759
    .local v9, "order":I
    move-object/from16 v0, p1

    array-length v8, v0

    .line 760
    .local v8, "n":I
    const/4 v14, 0x1

    if-le v9, v14, :cond_0

    .line 761
    new-instance v14, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v14

    .line 765
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_3

    .line 766
    aget-object v14, p1, v3

    invoke-virtual {v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v14

    if-eq v14, v11, :cond_1

    .line 767
    new-instance v14, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v15, p1, v3

    invoke-virtual {v15}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v15

    invoke-direct {v14, v15, v11}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v14

    .line 770
    :cond_1
    aget-object v14, p1, v3

    invoke-virtual {v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v14

    if-eq v14, v9, :cond_2

    .line 771
    new-instance v14, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v15, p1, v3

    invoke-virtual {v15}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v15

    invoke-direct {v14, v15, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v14

    .line 765
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 776
    :cond_3
    new-array v12, v8, [D

    .line 777
    .local v12, "point":[D
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_4

    .line 778
    aget-object v14, p1, v3

    invoke-virtual {v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v14

    aput-wide v14, v12, v3

    .line 777
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 780
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v14, v12}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->value([D)[D

    move-result-object v13

    .line 781
    .local v13, "value":[D
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v14}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v14

    invoke-interface {v14, v12}, Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;->value([D)[[D

    move-result-object v5

    .line 784
    .local v5, "jacobian":[[D
    array-length v14, v13

    new-array v7, v14, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 785
    .local v7, "merged":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    array-length v14, v7

    if-ge v6, v14, :cond_7

    .line 786
    add-int/lit8 v14, v11, 0x1

    new-array v2, v14, [D

    .line 787
    .local v2, "derivatives":[D
    const/4 v14, 0x0

    aget-wide v16, v13, v6

    aput-wide v16, v2, v14

    .line 788
    new-array v10, v11, [I

    .line 789
    .local v10, "orders":[I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v11, :cond_6

    .line 790
    const/4 v14, 0x1

    aput v14, v10, v3

    .line 791
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-ge v4, v8, :cond_5

    .line 792
    add-int/lit8 v14, v3, 0x1

    aget-wide v16, v2, v14

    aget-object v15, v5, v6

    aget-wide v18, v15, v4

    aget-object v15, p1, v4

    invoke-virtual {v15, v10}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    aput-wide v16, v2, v14

    .line 791
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 794
    :cond_5
    const/4 v14, 0x0

    aput v14, v10, v3

    .line 789
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 796
    .end local v4    # "j":I
    :cond_6
    new-instance v14, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v14, v11, v9, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    aput-object v14, v7, v6

    .line 785
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 799
    .end local v2    # "derivatives":[D
    .end local v10    # "orders":[I
    :cond_7
    return-object v7
.end method
