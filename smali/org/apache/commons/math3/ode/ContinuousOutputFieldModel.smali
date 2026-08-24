.class public Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;
.super Ljava/lang/Object;
.source "ContinuousOutputFieldModel.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private finalTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private forward:Z

.field private index:I

.field private initialTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    .line 104
    iput-object v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    iput-object v1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 108
    return-void
.end method

.method private checkDimensionsEquality(II)V
    .locals 1
    .param p1, "d1"    # I
    .param p2, "d2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    if-eq p1, p2, :cond_0

    .line 174
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 176
    :cond_0
    return-void
.end method

.method private locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "interval":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    const-wide/16 v6, 0x0

    .line 327
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    if-eqz v0, :cond_2

    .line 328
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    move v0, v1

    .line 341
    :goto_0
    return v0

    .line 330
    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    move v0, v2

    .line 331
    goto :goto_0

    :cond_1
    move v0, v3

    .line 333
    goto :goto_0

    .line 336
    :cond_2
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpl-double v0, v4, v6

    if-lez v0, :cond_3

    move v0, v1

    .line 337
    goto :goto_0

    .line 338
    :cond_3
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_4

    move v0, v2

    .line 339
    goto :goto_0

    :cond_4
    move v0, v3

    .line 341
    goto :goto_0
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "model":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    .line 164
    :goto_0
    return-void

    .line 127
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_2

    .line 128
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    .line 157
    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 158
    .local v6, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v12}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v9

    .line 134
    .local v9, "s1":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v12}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    .line 135
    .local v10, "s2":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getStateDimension()I

    move-result v12

    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getStateDimension()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    .line 136
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getNumberOfSecondaryStates()I

    move-result v12

    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getNumberOfSecondaryStates()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    .line 137
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getNumberOfSecondaryStates()I

    move-result v12

    if-ge v4, v12, :cond_3

    .line 138
    invoke-virtual {v9, v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getSecondaryStateDimension(I)I

    move-result v12

    invoke-virtual {v10, v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getSecondaryStateDimension(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 141
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    xor-int/2addr v12, v13

    if-eqz v12, :cond_4

    .line 142
    new-instance v12, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PROPAGATION_DIRECTION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v12

    .line 145
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 146
    .local v7, "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface {v7}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 147
    .local v2, "current":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v7}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 148
    .local v8, "previous":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 149
    .local v11, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->getInitialTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v12, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 150
    .local v3, "gap":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-interface {v13, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    .line 151
    new-instance v13, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v14, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->HOLE_BETWEEN_MODELS_TIME_RANGES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v15, v16

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v13

    .line 161
    .end local v2    # "current":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "gap":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "i":I
    .end local v7    # "lastInterpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v8    # "previous":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "s1":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v10    # "s2":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v11    # "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v12}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    goto/16 :goto_0
.end method

.method public getFinalTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getInitialTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v14, 0x0

    .line 237
    .local v14, "iMin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 238
    .local v19, "sMin":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface/range {v19 .. v19}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v24

    invoke-interface/range {v19 .. v19}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/commons/math3/RealFieldElement;

    .line 240
    .local v23, "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v12, v24, -0x1

    .line 241
    .local v12, "iMax":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 242
    .local v17, "sMax":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v24

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    .line 246
    .local v21, "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v24

    if-gtz v24, :cond_0

    .line 247
    move-object/from16 v0, p0

    iput v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 248
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    .line 315
    :goto_0
    return-object v24

    .line 250
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v24

    if-ltz v24, :cond_1

    .line 251
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 252
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    goto :goto_0

    .line 256
    :cond_1
    :goto_1
    sub-int v24, v12, v14

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    move/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 260
    .local v20, "si":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v15

    .line 261
    .local v15, "location":I
    if-gez v15, :cond_3

    .line 262
    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 263
    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v24

    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    .line 273
    .restart local v21    # "tMax":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_2
    add-int v24, v14, v12

    div-int/lit8 v13, v24, 0x2

    .line 274
    .local v13, "iMed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 275
    .local v18, "sMed":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v24

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    .local v22, "tMed":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v26, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_2

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v26, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_5

    .line 280
    :cond_2
    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 299
    :goto_3
    add-int/lit8 v24, v14, 0x1

    mul-int/lit8 v25, v14, 0x9

    add-int v25, v25, v12

    div-int/lit8 v25, v25, 0xa

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v16

    .line 300
    .local v16, "low":I
    add-int/lit8 v24, v12, -0x1

    mul-int/lit8 v25, v12, 0x9

    add-int v25, v25, v14

    div-int/lit8 v25, v25, 0xa

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 301
    .local v10, "high":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 302
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto/16 :goto_1

    .line 264
    .end local v10    # "high":I
    .end local v13    # "iMed":I
    .end local v16    # "low":I
    .end local v18    # "sMed":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v22    # "tMed":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_3
    if-lez v15, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 266
    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v24

    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v23, Lorg/apache/commons/math3/RealFieldElement;

    .restart local v23    # "tMin":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto/16 :goto_2

    .line 269
    :cond_4
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    goto/16 :goto_0

    .line 285
    .restart local v13    # "iMed":I
    .restart local v18    # "sMed":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .restart local v22    # "tMed":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_5
    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 286
    .local v4, "d12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 287
    .local v6, "d23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 288
    .local v5, "d13":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 289
    .local v7, "dt1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 290
    .local v8, "dt2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 291
    .local v9, "dt3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 295
    .local v11, "iLagrange":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto/16 :goto_3

    .line 303
    .end local v4    # "d12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "d13":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "d23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "dt1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "dt2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "dt3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "iLagrange":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v10    # "high":I
    .restart local v16    # "low":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v10, :cond_1

    .line 304
    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto/16 :goto_1

    .line 310
    .end local v10    # "high":I
    .end local v13    # "iMed":I
    .end local v15    # "location":I
    .end local v16    # "low":I
    .end local v18    # "sMed":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v20    # "si":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    .end local v22    # "tMed":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_7
    move-object/from16 v0, p0

    iput v14, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 311
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v0, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    move/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v24

    if-lez v24, :cond_8

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto :goto_4

    .line 315
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    move/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v24

    goto/16 :goto_0
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V
    .locals 1
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator",
            "<TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 200
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    if-eqz p2, :cond_1

    .line 206
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 207
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 210
    :cond_1
    return-void
.end method

.method public init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;, "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<TT;>;"
    .local p1, "initialState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p2, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 181
    iput-object p2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    return-void
.end method
