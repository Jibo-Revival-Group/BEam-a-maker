.class Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
.source "AdamsFieldStepInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final reference:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final scaled:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private scalingH:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 11
    .param p5, "isForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;Z",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator<TT;>;"
    .local p1, "stepSize":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "reference":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p3, "scaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "nordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p6, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "equationsMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 7
    .param p5, "isForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;Z",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator<TT;>;"
    .local p1, "stepSize":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "reference":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p3, "scaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "nordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local p6, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p9, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p10, "equationsMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    move-object v0, p0

    move v1, p5

    move-object v2, p6

    move-object v3, p7

    move-object v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;-><init>(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 103
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scalingH:Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->reference:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 105
    invoke-virtual {p3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 107
    return-void
.end method

.method public static taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<TS;>;>(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TS;>;TS;TS;[TS;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TS;>;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "reference":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TS;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TS;"
    .local p2, "stepSize":Lorg/apache/commons/math3/RealFieldElement;, "TS;"
    .local p3, "scaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TS;"
    .local p4, "nordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TS;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 156
    .local v12, "x":Lorg/apache/commons/math3/RealFieldElement;, "TS;"
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 158
    .local v8, "normalizedAbscissa":Lorg/apache/commons/math3/RealFieldElement;, "TS;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    move-object/from16 v0, p3

    array-length v14, v0

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    .local v11, "stateVariation":[Lorg/apache/commons/math3/RealFieldElement;, "[TS;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v13}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    move-object/from16 v0, p3

    array-length v14, v0

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    .line 161
    .local v2, "estimatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TS;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v2, v13}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getDataRef()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 166
    .local v6, "nData":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TS;"
    array-length v13, v6

    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 167
    add-int/lit8 v9, v4, 0x2

    .line 168
    .local v9, "order":I
    aget-object v7, v6, v4

    .line 169
    .local v7, "nDataI":[Lorg/apache/commons/math3/RealFieldElement;, "[TS;"
    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->pow(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 170
    .local v10, "power":Lorg/apache/commons/math3/RealFieldElement;, "TS;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v13, v7

    if-ge v5, v13, :cond_0

    .line 171
    aget-object v13, v7, v5

    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 172
    .local v1, "d":Lorg/apache/commons/math3/RealFieldElement;, "TS;"
    aget-object v13, v11, v5

    invoke-interface {v13, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v11, v5

    .line 173
    aget-object v13, v2, v5

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v2, v5

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 166
    .end local v1    # "d":Lorg/apache/commons/math3/RealFieldElement;, "TS;"
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 177
    .end local v5    # "j":I
    .end local v7    # "nDataI":[Lorg/apache/commons/math3/RealFieldElement;, "[TS;"
    .end local v9    # "order":I
    .end local v10    # "power":Lorg/apache/commons/math3/RealFieldElement;, "TS;"
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 178
    .local v3, "estimatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TS;"
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    array-length v13, v11

    if-ge v5, v13, :cond_2

    .line 179
    aget-object v13, v11, v5

    aget-object v14, p3, v5

    invoke-interface {v14, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v11, v5

    .line 180
    aget-object v13, v3, v5

    aget-object v14, v11, v5

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v3, v5

    .line 181
    aget-object v13, v2, v5

    aget-object v14, p3, v5

    invoke-interface {v14, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v2, v5

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 185
    :cond_2
    new-instance v13, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v3, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v13
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator<TT;>;"
    .local p1, "equationsMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->reference:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scalingH:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v0, p2, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    return-object v0
.end method

.method protected create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;
    .locals 11
    .param p1, "newForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator<TT;>;"
    .local p2, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p3, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scalingH:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->reference:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method
