.class public Lorg/apache/commons/math3/util/IterationManager;
.super Ljava/lang/Object;
.source "IterationManager.java"


# instance fields
.field private iterations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/util/IterationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxIterations"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    .line 47
    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
    .locals 1
    .param p1, "maxIterations"    # I
    .param p2, "callBack"    # Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/apache/commons/math3/util/IterationManager$1;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/util/IterationManager$1;-><init>(Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/IterationManager;-><init>(ILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    .line 69
    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V
    .locals 1
    .param p1, "maxIterations"    # I
    .param p2, "callBack"    # Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withCallback(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    .line 84
    return-void
.end method


# virtual methods
.method public addIterationListener(Lorg/apache/commons/math3/util/IterationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/math3/util/IterationListener;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/commons/math3/util/IterationEvent;

    .prologue
    .line 102
    iget-object v2, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/IterationListener;

    .line 103
    .local v1, "l":Lorg/apache/commons/math3/util/IterationListener;
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/IterationListener;->initializationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    .line 105
    .end local v1    # "l":Lorg/apache/commons/math3/util/IterationListener;
    :cond_0
    return-void
.end method

.method public fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/commons/math3/util/IterationEvent;

    .prologue
    .line 114
    iget-object v2, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/IterationListener;

    .line 115
    .local v1, "l":Lorg/apache/commons/math3/util/IterationListener;
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/IterationListener;->iterationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    .line 117
    .end local v1    # "l":Lorg/apache/commons/math3/util/IterationListener;
    :cond_0
    return-void
.end method

.method public fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/commons/math3/util/IterationEvent;

    .prologue
    .line 126
    iget-object v2, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/IterationListener;

    .line 127
    .local v1, "l":Lorg/apache/commons/math3/util/IterationListener;
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/IterationListener;->iterationStarted(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    .line 129
    .end local v1    # "l":Lorg/apache/commons/math3/util/IterationListener;
    :cond_0
    return-void
.end method

.method public fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/commons/math3/util/IterationEvent;

    .prologue
    .line 138
    iget-object v2, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/IterationListener;

    .line 139
    .local v1, "l":Lorg/apache/commons/math3/util/IterationListener;
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/IterationListener;->terminationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    .line 141
    .end local v1    # "l":Lorg/apache/commons/math3/util/IterationListener;
    :cond_0
    return-void
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public incrementIterationCount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 173
    return-void
.end method

.method public removeIterationListener(Lorg/apache/commons/math3/util/IterationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/math3/util/IterationListener;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public resetIterationCount()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 193
    return-void
.end method
