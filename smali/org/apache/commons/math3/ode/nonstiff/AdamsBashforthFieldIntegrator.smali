.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;
.source "AdamsBashforthFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;IDDDD)V
    .locals 15
    .param p2, "nSteps"    # I
    .param p3, "minStep"    # D
    .param p5, "maxStep"    # D
    .param p7, "scalAbsoluteTolerance"    # D
    .param p9, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;IDDDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v3, "Adams-Bashforth"

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;IDD[D[D)V
    .locals 13
    .param p2, "nSteps"    # I
    .param p3, "minStep"    # D
    .param p5, "maxStep"    # D
    .param p7, "vecAbsoluteTolerance"    # [D
    .param p8, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;IDD[D[D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v3, "Adams-Bashforth"

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V

    .line 196
    return-void
.end method

.method private errorEstimation([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;[TT;",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator<TT;>;"
    .local p1, "previousState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "predictedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "predictedNordsieck":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 215
    .local v2, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->mainSetDimension:I

    if-ge v3, v10, :cond_3

    .line 216
    aget-object v10, p2, v3

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 217
    .local v9, "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v10, :cond_0

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v12, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v10, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    move-object v7, v10

    .line 223
    .local v7, "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 224
    .local v8, "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_1

    const/4 v6, -0x1

    .line 225
    .local v6, "sign":I
    :goto_2
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "k":I
    :goto_3
    if-ltz v4, :cond_2

    .line 226
    move-object/from16 v0, p4

    invoke-interface {v0, v4, v3}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 227
    .restart local v8    # "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    neg-int v6, v6

    .line 225
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 217
    .end local v4    # "k":I
    .end local v6    # "sign":I
    .end local v7    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v10, v10, v3

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v12, v11, v3

    invoke-interface {v10, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    move-object v7, v10

    goto :goto_1

    .line 224
    .restart local v7    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v8    # "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    const/4 v6, 0x1

    goto :goto_2

    .line 229
    .restart local v4    # "k":I
    .restart local v6    # "sign":I
    :cond_2
    aget-object v10, p3, v3

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 231
    .restart local v8    # "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v10, p2, v3

    aget-object v11, p1, v3

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 232
    .local v5, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 215
    .restart local v2    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 236
    .end local v4    # "k":I
    .end local v5    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "sign":I
    .end local v7    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_3
    iget v10, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->mainSetDimension:I

    int-to-double v10, v10

    invoke-interface {v2, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    return-object v10
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEState",
            "<TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v27

    .line 250
    .local v27, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v28

    .line 251
    .local v28, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-lez v6, :cond_2

    const/4 v11, 0x1

    .line 255
    .local v11, "forward":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v26

    .line 259
    .local v26, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-object/from16 v0, v26

    invoke-static {v0, v6, v7, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    .line 265
    .local v8, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setIsLastStep(Z)V

    .line 268
    :cond_0
    const/16 v24, 0x0

    .line 269
    .local v24, "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    move-object/from16 v0, v28

    array-length v7, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/apache/commons/math3/RealFieldElement;

    .line 270
    .local v9, "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v10, 0x0

    .line 271
    .local v10, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-interface {v6, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 272
    .local v15, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v15, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-ltz v6, :cond_4

    .line 275
    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v24

    .line 278
    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v29

    .line 281
    .local v29, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    array-length v6, v9

    move/from16 v0, v21

    if-ge v0, v6, :cond_3

    .line 282
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aget-object v7, v29, v21

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v9, v21

    .line 281
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 252
    .end local v8    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v9    # "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v10    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .end local v11    # "forward":Z
    .end local v15    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v21    # "j":I
    .end local v24    # "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v26    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v29    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 284
    .restart local v8    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v9    # "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v10    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .restart local v11    # "forward":Z
    .restart local v15    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v21    # "j":I
    .restart local v24    # "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v26    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v29    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v10

    .line 285
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v9, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->errorEstimation([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    .line 290
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v15, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-ltz v6, :cond_1

    .line 292
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v16

    .line 293
    .local v16, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v6, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    goto/16 :goto_1

    .line 304
    .end local v16    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v21    # "j":I
    .end local v29    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_4
    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v14

    move-object v13, v8

    invoke-direct/range {v6 .. v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 309
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 312
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->isLastStep()Z

    move-result v6

    if-nez v6, :cond_7

    .line 314
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v28

    array-length v12, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-static {v0, v6, v1, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->resetOccurred()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 319
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 323
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v16

    .line 324
    .restart local v16    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    .line 325
    .local v25, "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/commons/math3/RealFieldElement;

    .line 326
    .local v23, "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    if-eqz v11, :cond_9

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-ltz v6, :cond_8

    const/16 v22, 0x1

    .line 329
    .local v22, "nextIsLast":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v22

    invoke-virtual {v0, v1, v11, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v20

    .line 331
    .local v20, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    .line 332
    .local v18, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    if-eqz v11, :cond_c

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-ltz v6, :cond_b

    const/16 v17, 0x1

    .line 335
    .local v17, "filteredNextIsLast":Z
    :goto_4
    if-eqz v17, :cond_6

    .line 336
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    .line 339
    .restart local v20    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v6, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    .line 345
    .end local v16    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "filteredNextIsLast":Z
    .end local v18    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v20    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v22    # "nextIsLast":Z
    .end local v23    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->isLastStep()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 347
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v19

    .line 348
    .local v19, "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 349
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 350
    return-object v19

    .line 326
    .end local v19    # "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v16    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v23    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v25    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_a

    const/16 v22, 0x1

    goto/16 :goto_3

    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 332
    .restart local v18    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v20    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v22    # "nextIsLast":Z
    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    :cond_c
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4
.end method
