.class public Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;
.super Ljava/lang/Object;
.source "FieldBracketingNthOrderBrentSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MAXIMAL_AGING:I = 0x2


# instance fields
.field private final absoluteAccuracy:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final functionValueAccuracy:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final maximalOrder:I

.field private final relativeAccuracy:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;I)V
    .locals 4
    .param p4, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    .local p1, "relativeAccuracy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "absoluteAccuracy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "functionValueAccuracy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v2, 0x2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-ge p4, v2, :cond_0

    .line 87
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 89
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    .line 90
    iput p4, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->maximalOrder:I

    .line 91
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->absoluteAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    .line 92
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->relativeAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    .line 93
    iput-object p3, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->functionValueAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    .line 94
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 95
    return-void
.end method

.method private guessX(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;II)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .param p4, "start"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;II)TT;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    .local p1, "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "x":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move v1, p4

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, p5, -0x1

    if-ge v1, v4, :cond_1

    .line 430
    add-int/lit8 v4, v1, 0x1

    sub-int v0, v4, p4

    .line 431
    .local v0, "delta":I
    add-int/lit8 v2, p5, -0x1

    .local v2, "j":I
    :goto_1
    if-le v2, v1, :cond_0

    .line 432
    aget-object v4, p2, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p2, v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, p3, v2

    sub-int v6, v2, v0

    aget-object v6, p3, v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, p2, v2

    .line 431
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 429
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "delta":I
    .end local v2    # "j":I
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 438
    .local v3, "x0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v2, p5, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-lt v2, p4, :cond_2

    .line 439
    aget-object v4, p2, v2

    aget-object v5, p3, v2

    invoke-interface {p1, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "x0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 438
    .restart local v3    # "x0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 442
    :cond_2
    return-object v3
.end method


# virtual methods
.method public getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->absoluteAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFunctionValueAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->functionValueAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMaximalOrder()I
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->maximalOrder:I

    return v0
.end method

.method public getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->relativeAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 35
    .param p1, "maxEval"    # I
    .param p6, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction",
            "<TT;>;TT;TT;TT;",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<TT;>;"
    .local p3, "min":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "max":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "startValue":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/apache/commons/math3/RealFieldElement;

    .line 199
    .local v34, "zero":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, v34

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/commons/math3/RealFieldElement;

    .line 202
    .local v22, "nan":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->maximalOrder:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Lorg/apache/commons/math3/RealFieldElement;

    .line 203
    .local v27, "x":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->maximalOrder:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Lorg/apache/commons/math3/RealFieldElement;

    .line 204
    .local v31, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v4, 0x0

    aput-object p3, v27, v4

    .line 205
    const/4 v4, 0x1

    aput-object p5, v27, v4

    .line 206
    const/4 v4, 0x2

    aput-object p4, v27, v4

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 210
    const/4 v4, 0x1

    const/4 v7, 0x1

    aget-object v7, v27, v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v31, v4

    .line 211
    const/4 v4, 0x1

    aget-object v4, v31, v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    invoke-static {v10, v11, v12, v13, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    const/4 v4, 0x1

    aget-object v28, v27, v4

    .line 351
    :cond_0
    :goto_0
    :pswitch_0
    return-object v28

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 218
    const/4 v4, 0x0

    const/4 v7, 0x0

    aget-object v7, v27, v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v31, v4

    .line 219
    const/4 v4, 0x0

    aget-object v4, v31, v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    invoke-static {v10, v11, v12, v13, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    const/4 v4, 0x0

    aget-object v28, v27, v4

    goto :goto_0

    .line 226
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v31, v4

    const/4 v7, 0x1

    aget-object v7, v31, v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-gez v4, :cond_4

    .line 229
    const/16 v23, 0x2

    .line 230
    .local v23, "nbPoints":I
    const/16 v26, 0x1

    .line 254
    .local v26, "signChangeIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->field:Lorg/apache/commons/math3/Field;

    move-object/from16 v0, v27

    array-length v7, v0

    invoke-static {v4, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/math3/RealFieldElement;

    .line 257
    .local v6, "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    add-int/lit8 v4, v26, -0x1

    aget-object v28, v27, v4

    .line 258
    .local v28, "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v4, v26, -0x1

    aget-object v32, v31, v4

    .line 259
    .local v32, "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 260
    .local v14, "absXA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 261
    .local v16, "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v18, 0x0

    .line 262
    .local v18, "agingA":I
    aget-object v29, v27, v26

    .line 263
    .local v29, "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v33, v31, v26

    .line 264
    .local v33, "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v29 .. v29}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 265
    .local v15, "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v33 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 266
    .local v17, "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v19, 0x0

    .line 272
    .local v19, "agingB":I
    :goto_2
    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-gez v4, :cond_7

    move-object/from16 v20, v15

    .line 273
    .local v20, "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_3
    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-gez v4, :cond_8

    move-object/from16 v21, v17

    .line 274
    .local v21, "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->absoluteAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->relativeAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    .line 275
    .local v30, "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v30

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->functionValueAccuracy:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-gez v4, :cond_a

    .line 277
    :cond_3
    sget-object v4, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 290
    new-instance v4, Lorg/apache/commons/math3/exception/MathInternalError;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 235
    .end local v6    # "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v14    # "absXA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v18    # "agingA":I
    .end local v19    # "agingB":I
    .end local v20    # "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v21    # "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v23    # "nbPoints":I
    .end local v26    # "signChangeIndex":I
    .end local v28    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v29    # "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v30    # "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v32    # "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v33    # "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 236
    const/4 v4, 0x2

    const/4 v7, 0x2

    aget-object v7, v27, v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v31, v4

    .line 237
    const/4 v4, 0x2

    aget-object v4, v31, v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    invoke-static {v10, v11, v12, v13, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 239
    const/4 v4, 0x2

    aget-object v28, v27, v4

    goto/16 :goto_0

    .line 242
    :cond_5
    const/4 v4, 0x1

    aget-object v4, v31, v4

    const/4 v7, 0x2

    aget-object v7, v31, v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-gez v4, :cond_6

    .line 244
    const/16 v23, 0x3

    .line 245
    .restart local v23    # "nbPoints":I
    const/16 v26, 0x2

    .restart local v26    # "signChangeIndex":I
    goto/16 :goto_1

    .line 247
    .end local v23    # "nbPoints":I
    .end local v26    # "signChangeIndex":I
    :cond_6
    new-instance v5, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/4 v4, 0x0

    aget-object v4, v27, v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const/4 v4, 0x2

    aget-object v4, v27, v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    const/4 v4, 0x0

    aget-object v4, v31, v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const/4 v4, 0x2

    aget-object v4, v31, v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v12

    invoke-direct/range {v5 .. v13}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v5

    .restart local v6    # "tmpX":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v14    # "absXA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v15    # "absXB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v16    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v17    # "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v18    # "agingA":I
    .restart local v19    # "agingB":I
    .restart local v23    # "nbPoints":I
    .restart local v26    # "signChangeIndex":I
    .restart local v28    # "xA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v29    # "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v32    # "yA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v33    # "yB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_7
    move-object/from16 v20, v14

    .line 272
    goto/16 :goto_3

    .restart local v20    # "maxX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_8
    move-object/from16 v21, v16

    .line 273
    goto/16 :goto_4

    .line 279
    .restart local v21    # "maxY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v30    # "xTol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :pswitch_1
    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-ltz v4, :cond_0

    move-object/from16 v28, v29

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v28, v29

    .line 283
    goto/16 :goto_0

    .line 285
    :pswitch_3
    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-lez v4, :cond_0

    move-object/from16 v28, v29

    goto/16 :goto_0

    .line 287
    :pswitch_4
    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-gez v4, :cond_9

    .end local v29    # "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_5
    move-object/from16 v28, v29

    goto/16 :goto_0

    .restart local v29    # "xB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_9
    move-object/from16 v29, v28

    goto :goto_5

    .line 296
    :cond_a
    const/4 v4, 0x2

    move/from16 v0, v18

    if-lt v0, v4, :cond_10

    .line 298
    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    move-object/from16 v0, v33

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 309
    .local v5, "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_6
    const/4 v8, 0x0

    .line 310
    .local v8, "start":I
    move/from16 v9, v23

    .line 314
    .local v9, "end":I
    :cond_b
    sub-int v4, v9, v8

    move-object/from16 v0, v27

    invoke-static {v0, v8, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, p0

    move-object/from16 v7, v31

    .line 315
    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->guessX(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v24

    .line 317
    .local v24, "nextX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-lez v4, :cond_c

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-ltz v4, :cond_d

    .line 323
    :cond_c
    sub-int v4, v26, v8

    sub-int v7, v9, v26

    if-lt v4, v7, :cond_12

    .line 325
    add-int/lit8 v8, v8, 0x1

    .line 332
    :goto_7
    move-object/from16 v24, v22

    .line 336
    :cond_d
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_e

    sub-int v4, v9, v8

    const/4 v7, 0x1

    if-gt v4, v7, :cond_b

    .line 338
    :cond_e
    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 340
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-interface {v4, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "nextX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    .line 341
    .restart local v24    # "nextX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v8, v26, -0x1

    .line 342
    move/from16 v9, v26

    .line 346
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 347
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v25

    .line 348
    .local v25, "nextY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v25 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    invoke-static {v10, v11, v12, v13, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v28, v24

    .line 351
    goto/16 :goto_0

    .line 299
    .end local v5    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v24    # "nextX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "nextY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_10
    const/4 v4, 0x2

    move/from16 v0, v19

    if-lt v0, v4, :cond_11

    .line 301
    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    move-object/from16 v0, v32

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .restart local v5    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto/16 :goto_6

    .line 304
    .end local v5    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_11
    move-object/from16 v5, v34

    .restart local v5    # "targetY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto/16 :goto_6

    .line 328
    .restart local v8    # "start":I
    .restart local v9    # "end":I
    .restart local v24    # "nextX":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_12
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 354
    .restart local v25    # "nextY":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_13
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_15

    sub-int v4, v9, v8

    move/from16 v0, v23

    if-eq v4, v0, :cond_15

    .line 358
    sub-int v23, v9, v8

    .line 359
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v8, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move/from16 v2, v23

    invoke-static {v0, v8, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    sub-int v26, v26, v8

    .line 380
    :cond_14
    :goto_8
    add-int/lit8 v4, v26, 0x1

    sub-int v7, v23, v26

    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    aput-object v24, v27, v26

    .line 382
    add-int/lit8 v4, v26, 0x1

    sub-int v7, v23, v26

    move-object/from16 v0, v31

    move/from16 v1, v26

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    aput-object v25, v31, v26

    .line 384
    add-int/lit8 v23, v23, 0x1

    .line 387
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-gtz v4, :cond_16

    .line 389
    move-object/from16 v29, v24

    .line 390
    move-object/from16 v33, v25

    .line 391
    invoke-interface/range {v33 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 392
    .restart local v17    # "absYB":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v18, v18, 0x1

    .line 393
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 363
    :cond_15
    move-object/from16 v0, v27

    array-length v4, v0

    move/from16 v0, v23

    if-ne v0, v4, :cond_14

    .line 366
    add-int/lit8 v23, v23, -0x1

    .line 369
    move-object/from16 v0, v27

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v26

    if-lt v0, v4, :cond_14

    .line 371
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move/from16 v2, v23

    invoke-static {v0, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    add-int/lit8 v26, v26, -0x1

    goto :goto_8

    .line 396
    :cond_16
    move-object/from16 v28, v24

    .line 397
    move-object/from16 v32, v25

    .line 398
    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 399
    .restart local v16    # "absYA":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v18, 0x0

    .line 400
    add-int/lit8 v19, v19, 0x1

    .line 403
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .param p1, "maxEval"    # I
    .param p5, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction",
            "<TT;>;TT;TT;",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;, "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<TT;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<TT;>;"
    .local p3, "min":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "max":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method
