.class public abstract Lorg/apache/commons/math3/ode/AbstractIntegrator;
.super Ljava/lang/Object;
.source "AbstractIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderIntegrator;


# instance fields
.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private eventsStates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/events/EventState;",
            ">;"
        }
    .end annotation
.end field

.field private transient expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field protected isLastStep:Z

.field private final name:Ljava/lang/String;

.field protected resetOccurred:Z

.field private statesInitialized:Z

.field protected stepHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/sampling/StepHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected stepSize:D

.field protected stepStart:D


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->name:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    .line 86
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    .line 87
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 90
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 91
    return-void
.end method


# virtual methods
.method protected acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D
    .locals 28
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .param p2, "y"    # [D
    .param p3, "yDot"    # [D
    .param p4, "tEnd"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalPreviousTime()D

    move-result-wide v22

    .line 328
    .local v22, "previousT":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalCurrentTime()D

    move-result-wide v6

    .line 331
    .local v6, "currentT":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 333
    .local v24, "state":Lorg/apache/commons/math3/ode/events/EventState;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/events/EventState;->reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    goto :goto_0

    .line 335
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 339
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->isForward()Z

    move-result v25

    if-eqz v25, :cond_3

    const/16 v20, 0x1

    .line 340
    .local v20, "orderingSign":I
    :goto_1
    new-instance v19, Ljava/util/TreeSet;

    new-instance v25, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/AbstractIntegrator;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 349
    .local v19, "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/EventState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 350
    .restart local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 352
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 339
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v19    # "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .end local v20    # "orderingSign":I
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_3
    const/16 v20, -0x1

    goto :goto_1

    .line 410
    .local v4, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .local v5, "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .local v9, "eventYComplete":[D
    .local v10, "eventT":D
    .restart local v13    # "i$":Ljava/util/Iterator;
    .local v15, "index":I
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .local v17, "len$":I
    .local v18, "needReset":Z
    .restart local v19    # "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .restart local v20    # "orderingSign":I
    :cond_4
    move-wide/from16 v22, v10

    .line 411
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftPreviousTime(D)V

    .line 412
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftCurrentTime(D)V

    .line 415
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 417
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .end local v9    # "eventYComplete":[D
    .end local v10    # "eventT":D
    .end local v15    # "index":I
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .end local v17    # "len$":I
    .end local v18    # "needReset":Z
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_c

    .line 359
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 360
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/events/EventState;

    .line 361
    .restart local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 364
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide v10

    .line 365
    .restart local v10    # "eventT":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftPreviousTime(D)V

    .line 366
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftCurrentTime(D)V

    .line 369
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 370
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v9, v0, [D

    .line 371
    .restart local v9    # "eventYComplete":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 373
    const/4 v14, 0x0

    .line 374
    .local v14, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    .restart local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v0, v4

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    aget-object v21, v4, v13

    .line 375
    .local v21, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 374
    add-int/lit8 v13, v13, 0x1

    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_3

    .line 380
    .end local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 381
    .restart local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11, v9}, Lorg/apache/commons/math3/ode/events/EventState;->stepAccepted(D[D)V

    .line 382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/events/EventState;->stop()Z

    move-result v25

    if-eqz v25, :cond_8

    :cond_7
    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    goto :goto_4

    :cond_8
    const/16 v25, 0x0

    goto :goto_5

    .line 386
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 387
    .local v12, "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V

    goto :goto_6

    .line 390
    .end local v12    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 392
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    .end local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .end local v9    # "eventYComplete":[D
    .end local v10    # "eventT":D
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    :goto_7
    return-wide v10

    .line 396
    .restart local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .restart local v9    # "eventYComplete":[D
    .restart local v10    # "eventT":D
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    :cond_b
    const/16 v18, 0x0

    .line 397
    .restart local v18    # "needReset":Z
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->resetOccurred:Z

    .line 398
    invoke-virtual {v5, v10, v11, v9}, Lorg/apache/commons/math3/ode/events/EventState;->reset(D[D)Z

    move-result v18

    .line 399
    if-eqz v18, :cond_4

    .line 402
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 403
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v10, v11, v1, v2}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 405
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->resetOccurred:Z

    goto :goto_7

    .line 423
    .end local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .end local v9    # "eventYComplete":[D
    .end local v10    # "eventT":D
    .end local v15    # "index":I
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .end local v17    # "len$":I
    .end local v18    # "needReset":Z
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 424
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v8, v0, [D

    .line 425
    .local v8, "currentY":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 427
    const/4 v14, 0x0

    .line 428
    .restart local v14    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    .restart local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v0, v4

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    :goto_8
    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    aget-object v21, v4, v13

    .line 429
    .restart local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 428
    add-int/lit8 v13, v13, 0x1

    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_8

    .line 432
    .end local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 433
    .restart local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7, v8}, Lorg/apache/commons/math3/ode/events/EventState;->stepAccepted(D[D)V

    .line 434
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    if-nez v25, :cond_e

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/events/EventState;->stop()Z

    move-result v25

    if-eqz v25, :cond_f

    :cond_e
    const/16 v25, 0x1

    :goto_a
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    goto :goto_9

    :cond_f
    const/16 v25, 0x0

    goto :goto_a

    .line 436
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    if-nez v25, :cond_11

    const/16 v25, 0x1

    move-wide/from16 v0, p4

    move/from16 v2, v25

    invoke-static {v6, v7, v0, v1, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v25

    if-eqz v25, :cond_12

    :cond_11
    const/16 v25, 0x1

    :goto_b
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 440
    .restart local v12    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V

    goto :goto_c

    .line 436
    .end local v12    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    :cond_12
    const/16 v25, 0x0

    goto :goto_b

    :cond_13
    move-wide v10, v6

    .line 443
    goto/16 :goto_7
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDI)V
    .locals 8
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I

    .prologue
    .line 124
    new-instance v7, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;

    const/4 v0, 0x5

    invoke-direct {v7, p4, p5, v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    .line 127
    return-void
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 10
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .param p7, "solver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .prologue
    .line 135
    iget-object v8, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    new-instance v0, Lorg/apache/commons/math3/ode/events/EventState;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/events/EventState;-><init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public clearEventHandlers()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 151
    return-void
.end method

.method public clearStepHandlers()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 117
    return-void
.end method

.method public computeDerivatives(D[D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 296
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->computeDerivatives(D[D[D)V

    .line 297
    return-void
.end method

.method protected getCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-object v0
.end method

.method public getCurrentSignedStepsize()D
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    return-wide v0
.end method

.method public getCurrentStepStart()D
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getEvaluationsCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-static {v0}, Lorg/apache/commons/math3/util/Incrementor;->wrap(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v0

    return-object v0
.end method

.method public getEventHandlers()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/events/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ode/events/EventHandler;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/EventState;

    .line 143
    .local v2, "state":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/EventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v2    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method protected getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStepHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/sampling/StepHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected initIntegration(D[DD)V
    .locals 9
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .prologue
    const/4 v8, 0x0

    .line 185
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 187
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/events/EventState;

    .line 188
    .local v7, "state":Lorg/apache/commons/math3/ode/events/EventState;
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/ode/events/EventState;->setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 189
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/events/EventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/events/EventHandler;->init(D[DD)V

    goto :goto_0

    .line 192
    .end local v7    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .local v0, "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    .line 193
    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->init(D[DD)V

    goto :goto_1

    .line 196
    .end local v0    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    :cond_1
    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setStateInitialized(Z)V

    .line 198
    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .locals 4
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "t0"    # D
    .param p4, "y0"    # [D
    .param p5, "t"    # D
    .param p7, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 239
    array-length v1, p4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 240
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 242
    :cond_0
    array-length v1, p7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 243
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 247
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V

    .line 248
    .local v0, "expandableODE":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 249
    invoke-virtual {v0, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setPrimaryState([D)V

    .line 252
    invoke-virtual {p0, v0, p5, p6}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 255
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryState()[D

    move-result-object v1

    array-length v2, p7

    invoke-static {v1, v3, p7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    return-wide v2
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 10
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 457
    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v6

    mul-double v2, v4, v6

    .line 459
    .local v2, "threshold":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v4

    sub-double/2addr v4, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 460
    .local v0, "dt":D
    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 461
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_INTEGRATION_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 465
    :cond_0
    return-void
.end method

.method protected setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .prologue
    .line 204
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 205
    return-void
.end method

.method public setMaxEvaluations(I)V
    .locals 1
    .param p1, "maxEvaluations"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    .end local p1    # "maxEvaluations":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 166
    return-void
.end method

.method protected setStateInitialized(Z)V
    .locals 0
    .param p1, "stateInitialized"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 308
    return-void
.end method
