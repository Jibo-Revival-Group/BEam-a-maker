.class public abstract Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;
.source "MultistepFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException;,
        Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private exp:D

.field private maxGrowth:D

.field private minReduction:D

.field private final nSteps:I

.field protected nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end field

.field private safety:D

.field protected scaled:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V
    .locals 15
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nSteps"    # I
    .param p4, "order"    # I
    .param p5, "minStep"    # D
    .param p7, "maxStep"    # D
    .param p9, "scalAbsoluteTolerance"    # D
    .param p11, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "IIDDDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v3 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DDDD)V

    .line 127
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ge v0, v2, :cond_0

    .line 128
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 133
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;

    move-object/from16 v3, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    invoke-direct/range {v2 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;DDDD)V

    iput-object v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    .line 136
    move/from16 v0, p3

    iput v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nSteps:I

    .line 138
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move/from16 v0, p4

    int-to-double v4, v0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->exp:D

    .line 141
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setSafety(D)V

    .line 142
    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setMinReduction(D)V

    .line 143
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->exp:D

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setMaxGrowth(D)V

    .line 145
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V
    .locals 11
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nSteps"    # I
    .param p4, "order"    # I
    .param p5, "minStep"    # D
    .param p7, "maxStep"    # D
    .param p9, "vecAbsoluteTolerance"    # [D
    .param p10, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "IIDD[D[D)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DD[D[D)V

    .line 173
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;

    move-object v1, p1

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;DD[D[D)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    .line 176
    iput p3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nSteps:I

    .line 178
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    int-to-double v2, p4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->exp:D

    .line 181
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setSafety(D)V

    .line 182
    const-wide v0, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setMinReduction(D)V

    .line 183
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->exp:D

    neg-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setMaxGrowth(D)V

    .line 185
    return-void
.end method


# virtual methods
.method protected computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    .local p1, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->maxGrowth:D

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->minReduction:D

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->exp:D

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->pow(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->safety:D

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGrowth()D
    .locals 2

    .prologue
    .line 288
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->minReduction:D

    return-wide v0
.end method

.method public getNSteps()I
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nSteps:I

    return v0
.end method

.method public getSafety()D
    .locals 2

    .prologue
    .line 302
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->safety:D

    return-wide v0
.end method

.method public getStarterIntegrator()Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    return-object v0
.end method

.method protected abstract initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;[[TT;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected rescale(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    .local p1, "newStepSize":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 327
    .local v5, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 328
    iget-object v7, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v6, v6, v0

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v7, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getDataRef()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 332
    .local v2, "nData":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    move-object v4, v5

    .line 333
    .local v4, "power":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v0, 0x0

    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_2

    .line 334
    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "power":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 335
    .restart local v4    # "power":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, v2, v0

    .line 336
    .local v3, "nDataI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 337
    aget-object v6, v3, v1

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v3, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 333
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    .end local v1    # "j":I
    .end local v3    # "nDataI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 343
    return-void
.end method

.method public setMaxGrowth(D)V
    .locals 1
    .param p1, "maxGrowth"    # D

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->maxGrowth:D

    .line 296
    return-void
.end method

.method public setMinReduction(D)V
    .locals 1
    .param p1, "minReduction"    # D

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->minReduction:D

    .line 282
    return-void
.end method

.method public setSafety(D)V
    .locals 1
    .param p1, "safety"    # D

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->safety:D

    .line 310
    return-void
.end method

.method public setStarterIntegrator(Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    .local p1, "starterIntegrator":Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;, "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator<TT;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    .line 204
    return-void
.end method

.method protected start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEState",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->clearEventHandlers()V

    .line 232
    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->clearStepHandlers()V

    .line 235
    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    new-instance v2, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nSteps:I

    add-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;-><init>(Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;)V

    .line 240
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 243
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MULTISTEP_STARTER_STOPPED_EARLY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :catch_0
    move-exception v0

    .line 249
    .local v0, "icme":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException;
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->getEvaluationsCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->getEvaluations()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment(I)V

    .line 254
    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->clearStepHandlers()V

    .line 256
    return-void
.end method
