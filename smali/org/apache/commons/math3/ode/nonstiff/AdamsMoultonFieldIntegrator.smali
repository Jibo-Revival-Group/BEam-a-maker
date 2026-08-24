.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;
.source "AdamsMoultonFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;
    }
.end annotation

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
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


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
    .line 187
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v3, "Adams-Moulton"

    add-int/lit8 v5, p2, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V

    .line 189
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
    .line 210
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v3, "Adams-Moulton"

    add-int/lit8 v5, p2, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V

    .line 212
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 33
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
    .line 222
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v30

    .line 224
    .local v30, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v31

    .line 225
    .local v31, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 226
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

    if-lez v6, :cond_1

    const/4 v11, 0x1

    .line 229
    .local v11, "forward":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v29

    .line 233
    .local v29, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-object/from16 v0, v29

    invoke-static {v0, v6, v7, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    .line 239
    .local v8, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setIsLastStep(Z)V

    .line 242
    :cond_0
    const/16 v26, 0x0

    .line 243
    .local v26, "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    move-object/from16 v0, v31

    array-length v7, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Lorg/apache/commons/math3/RealFieldElement;

    .line 244
    .local v25, "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v10, 0x0

    .line 245
    .local v10, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-interface {v6, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .local v16, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v28, v8

    .line 246
    .end local v8    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v28, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v16

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-ltz v6, :cond_3

    .line 249
    invoke-virtual/range {v28 .. v28}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v26

    .line 252
    invoke-virtual/range {v28 .. v28}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v32

    .line 255
    .local v32, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_2
    move-object/from16 v0, v25

    array-length v6, v0

    move/from16 v0, v22

    if-ge v0, v6, :cond_2

    .line 256
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aget-object v7, v32, v22

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v25, v22

    .line 255
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 226
    .end local v10    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .end local v11    # "forward":Z
    .end local v16    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v22    # "j":I
    .end local v25    # "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v26    # "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v28    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v29    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v32    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 258
    .restart local v10    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .restart local v11    # "forward":Z
    .restart local v16    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v22    # "j":I
    .restart local v25    # "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v26    # "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v28    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v29    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v32    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v10

    .line 259
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 262
    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;-><init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    invoke-virtual {v10, v6}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v16

    .end local v16    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 264
    .restart local v16    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v16

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-ltz v6, :cond_e

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    .line 267
    .local v17, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v6, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    .end local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v28    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v8    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :goto_3
    move-object/from16 v28, v8

    .line 274
    .end local v8    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v28    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    goto/16 :goto_1

    .line 277
    .end local v22    # "j":I
    .end local v32    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_3
    invoke-virtual/range {v28 .. v28}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    .line 280
    .local v15, "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    move-object/from16 v0, v31

    array-length v7, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/apache/commons/math3/RealFieldElement;

    .line 281
    .local v9, "correctedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v22, 0x0

    .restart local v22    # "j":I
    :goto_4
    array-length v6, v9

    move/from16 v0, v22

    if-ge v0, v6, :cond_4

    .line 282
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aget-object v7, v15, v22

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v9, v22

    .line 281
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 284
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 287
    new-instance v8, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual/range {v28 .. v28}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-direct {v8, v6, v0, v15}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 288
    .end local v28    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v8    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v14

    move-object v13, v8

    invoke-direct/range {v6 .. v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 293
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 294
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 296
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->isLastStep()Z

    move-result v6

    if-nez v6, :cond_7

    .line 298
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    array-length v12, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-static {v0, v6, v1, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->resetOccurred()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 303
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 307
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    .line 308
    .restart local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/commons/math3/RealFieldElement;

    .line 309
    .local v27, "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    .local v24, "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    if-eqz v11, :cond_9

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-ltz v6, :cond_8

    const/16 v23, 0x1

    .line 313
    .local v23, "nextIsLast":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-virtual {v0, v1, v11, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v21

    .line 315
    .local v21, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/RealFieldElement;

    .line 316
    .local v19, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    if-eqz v11, :cond_c

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-ltz v6, :cond_b

    const/16 v18, 0x1

    .line 319
    .local v18, "filteredNextIsLast":Z
    :goto_6
    if-eqz v18, :cond_6

    .line 320
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    .line 323
    .restart local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v6, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    .line 329
    .end local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v18    # "filteredNextIsLast":Z
    .end local v19    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v23    # "nextIsLast":Z
    .end local v24    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v27    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->isLastStep()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v20

    .line 332
    .local v20, "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 333
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 334
    return-object v20

    .line 310
    .end local v20    # "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v24    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v27    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_a

    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 316
    .restart local v19    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v23    # "nextIsLast":Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_d

    const/16 v18, 0x1

    goto/16 :goto_6

    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_6

    .end local v8    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v9    # "correctedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v15    # "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v19    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v23    # "nextIsLast":Z
    .end local v24    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v27    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v28    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v32    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_e
    move-object/from16 v8, v28

    .end local v28    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v8    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    goto/16 :goto_3
.end method
