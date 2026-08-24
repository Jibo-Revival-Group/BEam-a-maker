.class public Lorg/apache/commons/math3/ml/neuralnet/Neuron;
.super Ljava/lang/Object;
.source "Neuron.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final features:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[D>;"
        }
    .end annotation
.end field

.field private final identifier:J

.field private final numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final size:I


# direct methods
.method constructor <init>(J[D)V
    .locals 5
    .param p1, "identifier"    # J
    .param p3, "features"    # [D

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    .line 65
    array-length v0, p3

    iput v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    return-void
.end method

.method private containSameValues([D[D)Z
    .locals 6
    .param p1, "current"    # [D
    .param p2, "expect"    # [D

    .prologue
    .line 210
    array-length v1, p2

    iget v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-eq v1, v2, :cond_0

    .line 211
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p2

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-ge v0, v1, :cond_2

    .line 215
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    const/4 v1, 0x0

    .line 219
    :goto_1
    return v1

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 237
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;

    iget-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;-><init>(J[D)V

    return-object v1
.end method


# virtual methods
.method public compareAndSetFeatures([D[D)Z
    .locals 4
    .param p1, "expect"    # [D
    .param p2, "update"    # [D

    .prologue
    const/4 v1, 0x0

    .line 143
    array-length v2, p2

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-eq v2, v3, :cond_0

    .line 144
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p2

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 149
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 150
    .local v0, "current":[D
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->containSameValues([D[D)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    :cond_1
    :goto_0
    return v1

    .line 156
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 158
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 161
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;-><init>(J[D)V

    .line 80
    .local v0, "copy":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    iget-object v1, v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 81
    iget-object v1, v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object v0

    .line 78
    .end local v0    # "copy":Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFeatures()[D
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getIdentifier()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    return-wide v0
.end method

.method public getNumberOfAttemptedUpdates()J
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfSuccessfulUpdates()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    return v0
.end method
