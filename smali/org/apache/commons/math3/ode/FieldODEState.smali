.class public Lorg/apache/commons/math3/ode/FieldODEState;
.super Ljava/lang/Object;
.source "FieldODEState.java"


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
.field private final secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final state:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final time:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "state":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/FieldODEState;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "state":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "secondaryState":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/math3/ode/FieldODEState;->time:Lorg/apache/commons/math3/RealFieldElement;

    .line 63
    invoke-virtual {p2}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    .line 64
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/math3/ode/FieldODEState;->copy(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/RealFieldElement;)[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 65
    return-void
.end method


# virtual methods
.method protected copy(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/RealFieldElement;)[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[[TT;)[[TT;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "original":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    if-nez p2, :cond_0

    .line 76
    const/4 v2, 0x0

    check-cast v2, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 87
    :goto_0
    return-object v2

    .line 80
    :cond_0
    array-length v2, p2

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 83
    .local v0, "copied":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 84
    aget-object v2, p2, v1

    invoke-virtual {v2}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 87
    goto :goto_0
.end method

.method public getNumberOfSecondaryStates()I
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    array-length v0, v0

    goto :goto_0
.end method

.method public getSecondaryState(I)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0
.end method

.method public getSecondaryStateDimension(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    array-length v0, v0

    goto :goto_0
.end method

.method public getState()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getStateDimension()I
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v0, v0

    return v0
.end method

.method public getTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->time:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method
