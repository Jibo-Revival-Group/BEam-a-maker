.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;
.source "AdaptiveStepsizeFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private initialStep:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mainSetDimension:I

.field private maxStep:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private minStep:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected scalAbsoluteTolerance:D

.field protected scalRelativeTolerance:D

.field protected vecAbsoluteTolerance:[D

.field protected vecRelativeTolerance:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DDDD)V
    .locals 11
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "minStep"    # D
    .param p5, "maxStep"    # D
    .param p7, "scalAbsoluteTolerance"    # D
    .param p9, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "DDDD)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V

    move-object v1, p0

    move-wide v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    .line 116
    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->setStepSizeControl(DDDD)V

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->resetInternalState()V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DD[D[D)V
    .locals 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "minStep"    # D
    .param p5, "maxStep"    # D
    .param p7, "vecAbsoluteTolerance"    # [D
    .param p8, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "DD[D[D)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 140
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->setStepSizeControl(DD[D[D)V

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->resetInternalState()V

    .line 143
    return-void
.end method


# virtual methods
.method protected filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .param p2, "forward"    # Z
    .param p3, "acceptSmall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/16 v4, 0x0

    .line 326
    move-object v0, p1

    .line 327
    .local v0, "filteredH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 328
    if-eqz p3, :cond_3

    .line 329
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 336
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    .line 337
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 342
    :cond_1
    :goto_1
    return-object v0

    .line 329
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    move-object v0, v1

    goto :goto_0

    .line 331
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 338
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 339
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "filteredH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .restart local v0    # "filteredH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto :goto_1
.end method

.method public getMaxStep()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMinStep()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public initializeStep(ZI[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 24
    .param p1, "forward"    # Z
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p3, "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "state0":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1

    .line 259
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v18, v0

    .line 310
    :goto_0
    return-object v18

    .line 259
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0

    .line 264
    :cond_1
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    .line 265
    .local v11, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 266
    .local v14, "yDot0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 267
    .local v17, "yOnScale2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 268
    .local v16, "yDotOnScale2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 269
    aget-object v18, v11, v6

    aget-object v19, p3, v6

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 270
    .local v8, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v8, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "yOnScale2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 271
    .restart local v17    # "yOnScale2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v18, v14, v6

    aget-object v19, p3, v6

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 272
    .local v9, "ratioDot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v9, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "yDotOnScale2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 268
    .restart local v16    # "yDotOnScale2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 275
    .end local v8    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "ratioDot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_2
    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_3

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v18, v18, v20

    if-gez v18, :cond_5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v4, v18

    .line 278
    .local v4, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_2
    if-nez p1, :cond_4

    .line 279
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 283
    .restart local v4    # "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v18

    array-length v0, v11

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lorg/apache/commons/math3/RealFieldElement;

    .line 284
    .local v12, "y1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v6, 0x0

    :goto_3
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_6

    .line 285
    aget-object v18, v11, v6

    aget-object v19, v14, v6

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v18, v12, v6

    .line 284
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 275
    .end local v4    # "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "y1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v4, v18

    goto :goto_2

    .line 287
    .restart local v4    # "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v12    # "y1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    .line 290
    .local v15, "yDot1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 291
    .local v13, "yDDotOnScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_7

    .line 292
    aget-object v18, v15, v6

    aget-object v19, v14, v6

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v19, p3, v6

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 293
    .local v10, "ratioDotDot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "yDDotOnScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 291
    .restart local v13    # "yDDotOnScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 295
    .end local v10    # "ratioDotDot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_7
    invoke-interface {v13}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "yDDotOnScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 299
    .restart local v13    # "yDDotOnScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    .line 300
    .local v7, "maxInv2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    const-wide v20, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v18, v18, v20

    if-gez v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v20, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-interface/range {v19 .. v21}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 303
    .local v5, "h1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_5
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v19, 0x64

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 304
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v20, 0x3d719799812dea11L    # 1.0E-12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 306
    if-nez p1, :cond_8

    .line 307
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .restart local v4    # "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_8
    move-object/from16 v18, v4

    .line 310
    goto/16 :goto_0

    .line 300
    .end local v5    # "h1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_9
    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->pow(D)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v5, v18

    goto :goto_5
.end method

.method protected resetInternalState()V
    .locals 2

    .prologue
    .line 348
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 349
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 350
    return-void
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEState",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "eqn":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p2, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 230
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getStateDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    .line 232
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    if-eq v0, v1, :cond_0

    .line 233
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    if-eq v0, v1, :cond_1

    .line 237
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 240
    :cond_1
    return-void
.end method

.method public setInitialStepSize(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "initialStepSize":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/16 v2, 0x0

    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0
.end method

.method public setStepSizeControl(DDDD)V
    .locals 5
    .param p1, "minimalStep"    # D
    .param p3, "maximalStep"    # D
    .param p5, "absoluteTolerance"    # D
    .param p7, "relativeTolerance"    # D

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 167
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    .line 168
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    .line 169
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    .line 170
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    .line 172
    return-void
.end method

.method public setStepSizeControl(DD[D[D)V
    .locals 7
    .param p1, "minimalStep"    # D
    .param p3, "maximalStep"    # D
    .param p5, "absoluteTolerance"    # [D
    .param p6, "relativeTolerance"    # [D

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    const-wide/16 v4, 0x0

    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 196
    iput-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    .line 197
    iput-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    .line 198
    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    .line 199
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    .line 201
    return-void
.end method
