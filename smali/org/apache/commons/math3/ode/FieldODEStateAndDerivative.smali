.class public Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
.super Lorg/apache/commons/math3/ode/FieldODEState;
.source "FieldODEStateAndDerivative.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/FieldODEState",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final derivative:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final secondaryDerivative:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "state":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "derivative":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    .line 49
    move-object v4, v0

    check-cast v4, [[Lorg/apache/commons/math3/RealFieldElement;

    move-object v5, v0

    check-cast v5, [[Lorg/apache/commons/math3/RealFieldElement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;[[TT;[[TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "state":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "derivative":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "secondaryState":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p5, "secondaryDerivative":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/commons/math3/ode/FieldODEState;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 61
    invoke-virtual {p3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->derivative:[Lorg/apache/commons/math3/RealFieldElement;

    .line 62
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->copy(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/RealFieldElement;)[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->secondaryDerivative:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 63
    return-void
.end method


# virtual methods
.method public getDerivative()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->derivative:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getSecondaryDerivative(I)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->derivative:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->secondaryDerivative:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0
.end method
