.class Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$16;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$16;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 10
    .param p1, "x"    # [D

    .prologue
    const/4 v2, 0x1

    .line 573
    array-length v1, p1

    .line 576
    .local v1, "n":I
    new-array v6, v1, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 577
    .local v6, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 578
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    aget-wide v4, p1, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v0, v6, v3

    .line 577
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$16;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v9

    .line 583
    .local v9, "y":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    new-array v7, v1, [D

    .line 584
    .local v7, "gradient":[D
    new-array v8, v1, [I

    .line 585
    .local v8, "orders":[I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 586
    aput v2, v8, v3

    .line 587
    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v4

    aput-wide v4, v7, v3

    .line 588
    const/4 v0, 0x0

    aput v0, v8, v3

    .line 585
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 591
    :cond_1
    return-object v7
.end method
