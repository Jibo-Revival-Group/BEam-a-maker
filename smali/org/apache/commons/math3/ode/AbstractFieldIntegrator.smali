.class public abstract Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;
.super Ljava/lang/Object;
.source "AbstractFieldIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FUNCTION_VALUE_ACCURACY:D = 1.0E-15

.field private static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-14


# instance fields
.field private transient equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldExpandableODE",
            "<TT;>;"
        }
    .end annotation
.end field

.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private eventsStates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/events/FieldEventState",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field

.field private isLastStep:Z

.field private final name:Ljava/lang/String;

.field private resetOccurred:Z

.field private statesInitialized:Z

.field private stepHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private stepSize:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    .line 97
    iput-object p2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->name:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    .line 99
    iput-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 100
    iput-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    .line 103
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 104
    return-void
.end method


# virtual methods
.method protected acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator",
            "<TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    .local p2, "tEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    .line 285
    .local v11, "previousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    .line 288
    .local v3, "currentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 290
    .local v13, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/ode/events/FieldEventState;->reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V

    goto :goto_0

    .line 292
    .end local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    :cond_0
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    .line 296
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->isForward()Z

    move-result v16

    if-eqz v16, :cond_3

    const/4 v10, 0x1

    .line 297
    .local v10, "orderingSign":I
    :goto_1
    new-instance v9, Ljava/util/TreeSet;

    new-instance v16, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;I)V

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 306
    .local v9, "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 307
    .restart local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/ode/events/FieldEventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 309
    invoke-interface {v9, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 296
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    .end local v10    # "orderingSign":I
    .end local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    :cond_3
    const/4 v10, -0x1

    goto :goto_1

    .line 313
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    .restart local v10    # "orderingSign":I
    :cond_4
    move-object/from16 v12, p1

    .line 314
    .local v12, "restricted":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_d

    .line 317
    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 318
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 319
    .local v2, "currentEvent":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 322
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    .line 325
    .local v4, "eventState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v12, v11, v4}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->restrictStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;

    move-result-object v12

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 329
    .restart local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v13, v4}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 330
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stop()Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_6
    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    goto :goto_5

    .line 334
    .end local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 335
    .local v5, "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v5, v12, v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V

    goto :goto_6

    .line 338
    .end local v5    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 381
    .end local v2    # "currentEvent":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .end local v4    # "eventState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    :goto_7
    return-object v4

    .line 343
    .restart local v2    # "currentEvent":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .restart local v4    # "eventState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    :cond_a
    const/4 v8, 0x0

    .line 344
    .local v8, "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 346
    .restart local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v13, v4}, Lorg/apache/commons/math3/ode/events/FieldEventState;->reset(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;

    move-result-object v8

    .line 347
    if-eqz v8, :cond_b

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 351
    .local v14, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    .line 352
    .local v15, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v16

    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v15}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapStateAndDerivative(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    goto :goto_7

    .line 358
    .end local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .end local v14    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v15    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_c
    move-object v11, v4

    .line 359
    invoke-virtual {v12, v4, v3}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->restrictStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;

    move-result-object v12

    .line 362
    invoke-virtual {v2, v12}, Lorg/apache/commons/math3/ode/events/FieldEventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 364
    invoke-interface {v9, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 370
    .end local v2    # "currentEvent":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .end local v4    # "eventState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;>;"
    .end local v8    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 371
    .restart local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 372
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    move/from16 v16, v0

    if-nez v16, :cond_e

    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stop()Z

    move-result v16

    if-eqz v16, :cond_f

    :cond_e
    const/16 v16, 0x1

    :goto_9
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    goto :goto_8

    :cond_f
    const/16 v16, 0x0

    goto :goto_9

    .line 374
    .end local v13    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    move/from16 v16, v0

    if-nez v16, :cond_11

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_12

    :cond_11
    const/16 v16, 0x1

    :goto_a
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 378
    .restart local v5    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v5, v12, v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V

    goto :goto_b

    .line 374
    .end local v5    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    :cond_12
    const/16 v16, 0x0

    goto :goto_a

    :cond_13
    move-object v4, v3

    .line 381
    goto/16 :goto_7
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDI)V
    .locals 8
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler",
            "<TT;>;DDI)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    new-instance v7, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, p4, p5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x5

    invoke-direct {v7, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;I)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V

    .line 144
    return-void
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V
    .locals 8
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler",
            "<TT;>;DDI",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    .local p7, "solver":Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<TT;>;"
    iget-object v7, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    new-instance v0, Lorg/apache/commons/math3/ode/events/FieldEventState;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, p4, p5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move-object v1, p1

    move-wide v2, p2

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ode/events/FieldEventState;-><init>(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DLorg/apache/commons/math3/RealFieldElement;ILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public clearEventHandlers()V
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 168
    return-void
.end method

.method public clearStepHandlers()V
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 131
    return-void
.end method

.method public computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSignedStepsize()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getCurrentStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method protected getEquations()Lorg/apache/commons/math3/ode/FieldExpandableODE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getEvaluationsCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-object v0
.end method

.method public getEventHandlers()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 160
    .local v2, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v2    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStepHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getStepSize()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method protected getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method protected initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE",
            "<TT;>;TT;[TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "eqn":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v6, 0x0

    .line 205
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    .line 206
    iget-object v5, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 209
    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 212
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 213
    .local v4, "y0Dot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-instance v3, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v3, p2, p3, v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 216
    .local v3, "state0":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 217
    .local v2, "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-result-object v5

    invoke-interface {v5, v3, p4}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0

    .line 221
    .end local v2    # "state":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 222
    .local v0, "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    invoke-interface {v0, v3, p4}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 225
    .end local v0    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<TT;>;"
    :cond_1
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStateInitialized(Z)V

    .line 227
    return-object v3
.end method

.method protected isLastStep()Z
    .locals 1

    .prologue
    .line 450
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    return v0
.end method

.method protected resetOccurred()Z
    .locals 1

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    return v0
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEState",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "eqn":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p2, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v6

    mul-double v2, v4, v6

    .line 397
    .local v2, "threshold":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4, p2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    .line 398
    .local v0, "dt":D
    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 399
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_INTEGRATION_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 403
    :cond_0
    return-void
.end method

.method protected setIsLastStep(Z)V
    .locals 0
    .param p1, "isLastStep"    # Z

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    .line 444
    return-void
.end method

.method public setMaxEvaluations(I)V
    .locals 1
    .param p1, "maxEvaluations"    # I

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    .end local p1    # "maxEvaluations":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 183
    return-void
.end method

.method protected setStateInitialized(Z)V
    .locals 0
    .param p1, "stateInitialized"    # Z

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    .line 269
    return-void
.end method

.method protected setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "stepSize":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    .line 417
    return-void
.end method

.method protected setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<TT;>;"
    .local p1, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 430
    return-void
.end method
