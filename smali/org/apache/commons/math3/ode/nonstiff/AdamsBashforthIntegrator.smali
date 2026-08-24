.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsBashforthIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .param p1, "nSteps"    # I
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 167
    const-string v1, "Adams-Bashforth"

    move-object v0, p0

    move v2, p1

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 169
    return-void
.end method

.method public constructor <init>(IDD[D[D)V
    .locals 10
    .param p1, "nSteps"    # I
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v1, "Adams-Bashforth"

    move-object v0, p0

    move v2, p1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 191
    return-void
.end method

.method private errorEstimation([D[D[DLorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 20
    .param p1, "previousState"    # [D
    .param p2, "predictedState"    # [D
    .param p3, "predictedScaled"    # [D
    .param p4, "predictedNordsieck"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 209
    const-wide/16 v2, 0x0

    .line 210
    .local v2, "error":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    if-ge v4, v9, :cond_3

    .line 211
    aget-wide v16, p2, v4

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    .line 212
    .local v14, "yScale":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalAbsoluteTolerance:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalRelativeTolerance:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    add-double v10, v16, v18

    .line 218
    .local v10, "tol":D
    :goto_1
    const-wide/16 v12, 0x0

    .line 219
    .local v12, "variation":D
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    const/4 v8, -0x1

    .line 220
    .local v8, "sign":I
    :goto_2
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .local v5, "k":I
    :goto_3
    if-ltz v5, :cond_2

    .line 221
    int-to-double v0, v8

    move-wide/from16 v16, v0

    move-object/from16 v0, p4

    invoke-interface {v0, v5, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v12, v12, v16

    .line 222
    neg-int v8, v8

    .line 220
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 212
    .end local v5    # "k":I
    .end local v8    # "sign":I
    .end local v10    # "tol":D
    .end local v12    # "variation":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v16, v9, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecRelativeTolerance:[D

    aget-wide v18, v9, v4

    mul-double v18, v18, v14

    add-double v10, v16, v18

    goto :goto_1

    .line 219
    .restart local v10    # "tol":D
    .restart local v12    # "variation":D
    :cond_1
    const/4 v8, 0x1

    goto :goto_2

    .line 224
    .restart local v5    # "k":I
    .restart local v8    # "sign":I
    :cond_2
    aget-wide v16, p3, v4

    sub-double v12, v12, v16

    .line 226
    aget-wide v16, p2, v4

    aget-wide v18, p1, v4

    sub-double v16, v16, v18

    add-double v16, v16, v12

    div-double v6, v16, v10

    .line 227
    .local v6, "ratio":D
    mul-double v16, v6, v6

    add-double v2, v2, v16

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    .end local v5    # "k":I
    .end local v6    # "ratio":D
    .end local v8    # "sign":I
    .end local v10    # "tol":D
    .end local v12    # "variation":D
    .end local v14    # "yScale":D
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v16, v2, v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    return-wide v16
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 54
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 242
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 243
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v6

    cmpl-double v6, p2, v6

    if-lez v6, :cond_2

    const/16 v37, 0x1

    .line 246
    .local v37, "forward":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v9

    .line 247
    .local v9, "y":[D
    array-length v6, v9

    new-array v0, v6, [D

    move-object/from16 v21, v0

    .line 250
    .local v21, "yDot":[D
    new-instance v19, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct/range {v19 .. v19}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    .line 251
    .local v19, "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v7

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v9, v1, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v7

    move-object/from16 v6, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->initIntegration(D[DD)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v7

    move-object/from16 v6, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 259
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v17, v0

    move-object/from16 v11, v19

    invoke-virtual/range {v11 .. v17}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 260
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 263
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide/from16 v40, v0

    .line 264
    .local v40, "hNew":D
    move-object/from16 v0, v19

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 267
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    .line 270
    :cond_0
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 271
    array-length v6, v9

    new-array v0, v6, [D

    move-object/from16 v47, v0

    .line 272
    .local v47, "predictedY":[D
    array-length v6, v9

    new-array v0, v6, [D

    move-object/from16 v16, v0

    .line 273
    .local v16, "predictedScaled":[D
    const/16 v17, 0x0

    .line 274
    .local v17, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    const-wide/high16 v32, 0x4024000000000000L    # 10.0

    .line 275
    .local v32, "error":D
    :cond_1
    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v32, v6

    if-ltz v6, :cond_5

    .line 278
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double v12, v6, v40

    .line 279
    .local v12, "stepEnd":D
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v31

    .line 281
    .local v31, "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v50

    .line 282
    .local v50, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v6

    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 283
    const/16 v43, 0x0

    .line 284
    .local v43, "index":I
    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v30

    .local v30, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v45, v0

    .local v45, "len$":I
    const/16 v42, 0x0

    .local v42, "i$":I
    :goto_2
    move/from16 v0, v42

    move/from16 v1, v45

    if-ge v0, v1, :cond_3

    aget-object v51, v30, v42

    .line 285
    .local v51, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v0, v19

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v6

    move-object/from16 v0, v51

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 286
    add-int/lit8 v43, v43, 0x1

    .line 284
    add-int/lit8 v42, v42, 0x1

    goto :goto_2

    .line 243
    .end local v9    # "y":[D
    .end local v12    # "stepEnd":D
    .end local v16    # "predictedScaled":[D
    .end local v17    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .end local v19    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .end local v21    # "yDot":[D
    .end local v30    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v31    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .end local v32    # "error":D
    .end local v37    # "forward":Z
    .end local v40    # "hNew":D
    .end local v42    # "i$":I
    .end local v43    # "index":I
    .end local v45    # "len$":I
    .end local v47    # "predictedY":[D
    .end local v50    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v51    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_2
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 290
    .restart local v9    # "y":[D
    .restart local v12    # "stepEnd":D
    .restart local v16    # "predictedScaled":[D
    .restart local v17    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .restart local v19    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .restart local v21    # "yDot":[D
    .restart local v30    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .restart local v31    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .restart local v32    # "error":D
    .restart local v37    # "forward":Z
    .restart local v40    # "hNew":D
    .restart local v42    # "i$":I
    .restart local v43    # "index":I
    .restart local v45    # "len$":I
    .restart local v47    # "predictedY":[D
    .restart local v50    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v21

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeDerivatives(D[D[D)V

    .line 293
    const/16 v44, 0x0

    .local v44, "j":I
    :goto_3
    move-object/from16 v0, v16

    array-length v6, v0

    move/from16 v0, v44

    if-ge v0, v6, :cond_4

    .line 294
    aget-wide v6, v21, v44

    mul-double v6, v6, v40

    aput-wide v6, v16, v44

    .line 293
    add-int/lit8 v44, v44, 0x1

    goto :goto_3

    .line 296
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v17

    .line 297
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v6, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v9, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->errorEstimation([D[D[DLorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v32

    .line 302
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v32, v6

    if-ltz v6, :cond_1

    .line 304
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v34

    .line 305
    .local v34, "factor":D
    mul-double v6, v40, v34

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v6, v7, v1, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v40

    .line 306
    move-object/from16 v0, v19

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto/16 :goto_1

    .line 311
    .end local v12    # "stepEnd":D
    .end local v30    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v31    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .end local v34    # "factor":D
    .end local v42    # "i$":I
    .end local v43    # "index":I
    .end local v44    # "j":I
    .end local v45    # "len$":I
    .end local v50    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_5
    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    .line 312
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    add-double v12, v6, v10

    .line 313
    .restart local v12    # "stepEnd":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-object/from16 v11, v19

    invoke-virtual/range {v11 .. v17}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 316
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 317
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v9

    move-object/from16 v0, v47

    invoke-static {v0, v6, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v18, p0

    move-object/from16 v20, v9

    move-wide/from16 v22, p2

    .line 318
    invoke-virtual/range {v18 .. v23}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    .line 319
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    .line 320
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 321
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v29, v0

    move-object/from16 v23, v19

    move-wide/from16 v24, v12

    invoke-virtual/range {v23 .. v29}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 323
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-nez v6, :cond_8

    .line 326
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 328
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetOccurred:Z

    if-eqz v6, :cond_6

    .line 331
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v6, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 332
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v29, v0

    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v29}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 336
    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v34

    .line 337
    .restart local v34    # "factor":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    mul-double v52, v6, v34

    .line 338
    .local v52, "scaledH":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double v48, v6, v52

    .line 339
    .local v48, "nextT":D
    if-eqz v37, :cond_a

    cmpl-double v6, v48, p2

    if-ltz v6, :cond_9

    const/16 v46, 0x1

    .line 340
    .local v46, "nextIsLast":Z
    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    move/from16 v3, v37

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v40

    .line 342
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double v38, v6, v40

    .line 343
    .local v38, "filteredNextT":D
    if-eqz v37, :cond_d

    cmpl-double v6, v38, p2

    if-ltz v6, :cond_c

    const/16 v36, 0x1

    .line 344
    .local v36, "filteredNextIsLast":Z
    :goto_5
    if-eqz v36, :cond_7

    .line 345
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    sub-double v40, p2, v6

    .line 348
    :cond_7
    move-object/from16 v0, v19

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 352
    .end local v34    # "factor":D
    .end local v36    # "filteredNextIsLast":Z
    .end local v38    # "filteredNextT":D
    .end local v46    # "nextIsLast":Z
    .end local v48    # "nextT":D
    .end local v52    # "scaledH":D
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-eqz v6, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 356
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetInternalState()V

    .line 360
    return-void

    .line 339
    .restart local v34    # "factor":D
    .restart local v48    # "nextT":D
    .restart local v52    # "scaledH":D
    :cond_9
    const/16 v46, 0x0

    goto :goto_4

    :cond_a
    cmpg-double v6, v48, p2

    if-gtz v6, :cond_b

    const/16 v46, 0x1

    goto :goto_4

    :cond_b
    const/16 v46, 0x0

    goto :goto_4

    .line 343
    .restart local v38    # "filteredNextT":D
    .restart local v46    # "nextIsLast":Z
    :cond_c
    const/16 v36, 0x0

    goto :goto_5

    :cond_d
    cmpg-double v6, v38, p2

    if-gtz v6, :cond_e

    const/16 v36, 0x1

    goto :goto_5

    :cond_e
    const/16 v36, 0x0

    goto :goto_5
.end method
