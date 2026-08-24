.class public Lorg/apache/commons/math3/ode/events/FieldEventState;
.super Ljava/lang/Object;
.source "FieldEventState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final convergence:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private forward:Z

.field private g0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/Action;

.field private pendingEvent:Z

.field private pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private previousEventTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver",
            "<TT;>;"
        }
    .end annotation
.end field

.field private t0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DLorg/apache/commons/math3/RealFieldElement;ILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V
    .locals 4
    .param p2, "maxCheckInterval"    # D
    .param p5, "maxIterationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler",
            "<TT;>;DTT;I",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    .local p4, "convergence":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p6, "solver":Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    .line 104
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    .line 105
    invoke-interface {p4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    iput p5, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    .line 107
    iput-object p6, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    .line 110
    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 111
    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 112
    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 114
    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 115
    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 116
    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    .line 117
    sget-object v0, Lorg/apache/commons/math3/ode/events/Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/Action;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/events/FieldEventState;)Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/events/FieldEventState;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    return-object v0
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    .line 195
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v20

    .line 196
    .local v20, "s1":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v21

    .line 197
    .local v21, "t1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 198
    .local v13, "dt":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v13}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_0

    .line 200
    const/4 v2, 0x0

    .line 277
    :goto_0
    return v2

    .line 202
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v13}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v18

    .line 203
    .local v18, "n":I
    move/from16 v0, v18

    int-to-double v2, v0

    invoke-interface {v13, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 205
    .local v16, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v4, Lorg/apache/commons/math3/ode/events/FieldEventState$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/ode/events/FieldEventState$1;-><init>(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V

    .line 212
    .local v4, "f":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<TT;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 213
    .local v5, "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 214
    .local v14, "ga":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 217
    add-int/lit8 v2, v18, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    move-object/from16 v6, v21

    .line 218
    .local v6, "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    .line 221
    .local v15, "gb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    invoke-interface {v15}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 225
    invoke-interface {v15, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmpl-double v2, v2, v8

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    .line 228
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    sget-object v7, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v19

    .line 232
    .local v19, "root":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v2, :cond_c

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_c

    .line 240
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object v5, v2

    .line 241
    :goto_6
    invoke-interface {v4, v5}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 242
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    invoke-interface {v14}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_8

    const/4 v2, 0x1

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_9

    const/4 v2, 0x1

    :goto_8
    xor-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_a

    const/4 v2, 0x1

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 246
    add-int/lit8 v17, v17, -0x1

    .line 214
    .end local v19    # "root":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 217
    .end local v6    # "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "gb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object v6, v2

    goto/16 :goto_2

    .line 221
    .restart local v6    # "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v15    # "gb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 225
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 228
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    sget-object v12, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v9, v4

    move-object v10, v6

    move-object v11, v5

    invoke-interface/range {v7 .. v12}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v19

    goto/16 :goto_5

    .line 240
    .restart local v19    # "root":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object v5, v2

    goto/16 :goto_6

    .line 242
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    goto :goto_8

    .line 244
    :cond_a
    const/4 v2, 0x0

    goto :goto_9

    .line 251
    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 252
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 253
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 255
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_e

    .line 257
    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 258
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 259
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 262
    :cond_e
    move-object v5, v6

    .line 263
    move-object v14, v15

    goto/16 :goto_a

    .line 268
    .end local v19    # "root":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_f
    move-object v5, v6

    .line 269
    move-object v14, v15

    goto/16 :goto_a

    .line 275
    .end local v6    # "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "gb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 276
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getConvergence()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    return-object v0
.end method

.method public getEventTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v1, :cond_1

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0

    :cond_1
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1
.end method

.method public getMaxCheckInterval()D
    .locals 2

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    const-wide/16 v8, 0x0

    .line 157
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    .line 158
    .local v2, "s0":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-nez v4, :cond_0

    .line 174
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 176
    .local v0, "epsilon":D
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v0

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 177
    .local v3, "tStart":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 179
    .end local v0    # "epsilon":D
    .end local v3    # "tStart":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 181
    return-void

    .line 179
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public reset(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;)",
            "Lorg/apache/commons/math3/ode/FieldODEState",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "state":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v2, 0x0

    .line 325
    iget-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    if-lez v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 340
    :goto_0
    return-object v0

    .line 330
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    sget-object v3, Lorg/apache/commons/math3/ode/events/Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v1, v3, :cond_2

    .line 331
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->resetState(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;

    move-result-object v0

    .line 337
    .local v0, "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 338
    iput-object v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0

    .line 332
    .end local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    sget-object v3, Lorg/apache/commons/math3/ode/events/Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v1, v3, :cond_3

    .line 333
    move-object v0, p1

    .restart local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    goto :goto_1

    .line 335
    .end local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    goto :goto_1
.end method

.method public stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "state":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 296
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 297
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 299
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1

    .line 301
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 302
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 303
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    iget-boolean v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    xor-int/2addr v0, v4

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, p1, v0}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->eventOccurred(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Z)Lorg/apache/commons/math3/ode/events/Action;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    .line 308
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 303
    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 306
    sget-object v0, Lorg/apache/commons/math3/ode/events/Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/Action;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 305
    goto :goto_2
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 315
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/Action;->STOP:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
