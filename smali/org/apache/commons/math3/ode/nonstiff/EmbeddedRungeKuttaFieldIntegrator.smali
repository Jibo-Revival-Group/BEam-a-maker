.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;
.source "EmbeddedRungeKuttaFieldIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator",
        "<TT;>;",
        "Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final b:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final exp:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final fsal:I

.field private maxGrowth:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private minReduction:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private safety:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V
    .locals 12
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fsal"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "scalAbsoluteTolerance"    # D
    .param p10, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "IDDDD)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DDDD)V

    .line 119
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 124
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v1

    neg-int v1, v1

    int-to-double v2, v1

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    .line 127
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setSafety(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 128
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 129
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V
    .locals 10
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fsal"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "vecAbsoluteTolerance"    # [D
    .param p9, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "IDD[D[D)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DD[D[D)V

    .line 152
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 157
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v1

    neg-int v1, v1

    int-to-double v2, v1

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setSafety(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 161
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 162
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected abstract createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation
.end method

.method protected fraction(DD)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "p"    # D
    .param p3, "q"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)TT;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method protected fraction(II)Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .param p1, "p"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v2, p2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMaxGrowth()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMinReduction()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEState",
            "<TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v33

    .line 223
    .local v33, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v35

    .line 224
    .local v35, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpl-double v6, v10, v38

    if-lez v6, :cond_2

    const/4 v7, 0x1

    .line 228
    .local v7, "forward":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v6, v6

    add-int/lit8 v30, v6, 0x1

    .line 229
    .local v30, "stages":I
    move-object/from16 v34, v35

    .line 230
    .local v34, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    const/4 v8, -0x1

    move/from16 v0, v30

    invoke-static {v6, v0, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 231
    .local v12, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    move-object/from16 v0, v35

    array-length v8, v0

    invoke-static {v6, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Lorg/apache/commons/math3/RealFieldElement;

    .line 234
    .local v37, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/commons/math3/RealFieldElement;

    .line 235
    .local v22, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v21, 0x1

    .line 238
    .local v21, "firstTime":Z
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setIsLastStep(Z)V

    .line 242
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-interface {v6, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 243
    .local v16, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    :goto_1
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpl-double v6, v10, v38

    if-ltz v6, :cond_d

    .line 246
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v34

    .line 247
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v12, v6

    .line 249
    if-eqz v21, :cond_5

    .line 250
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->mainSetDimension:I

    invoke-static {v6, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/apache/commons/math3/RealFieldElement;

    .line 251
    .local v9, "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v6, :cond_3

    .line 252
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    array-length v6, v9

    move/from16 v0, v23

    if-ge v0, v6, :cond_4

    .line 253
    aget-object v6, v34, v23

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v6, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v6, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v9, v23

    .line 252
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 225
    .end local v7    # "forward":Z
    .end local v9    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v12    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v16    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v21    # "firstTime":Z
    .end local v22    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v23    # "i":I
    .end local v30    # "stages":I
    .end local v34    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v37    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 256
    .restart local v7    # "forward":Z
    .restart local v9    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v12    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .restart local v16    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v21    # "firstTime":Z
    .restart local v22    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v30    # "stages":I
    .restart local v34    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v37    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_3
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_3
    array-length v6, v9

    move/from16 v0, v23

    if-ge v0, v6, :cond_4

    .line 257
    aget-object v6, v34, v23

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v10, v8, v23

    invoke-interface {v6, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v10, v8, v23

    invoke-interface {v6, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v9, v23

    .line 256
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 260
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v11

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->initializeStep(ZI[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v22

    .line 261
    const/16 v21, 0x0

    .line 264
    .end local v9    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v23    # "i":I
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 265
    if-eqz v7, :cond_7

    .line 266
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpl-double v6, v10, v38

    if-ltz v6, :cond_6

    .line 267
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 276
    :cond_6
    :goto_4
    const/16 v25, 0x1

    .local v25, "k":I
    :goto_5
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 278
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_6
    move-object/from16 v0, v35

    array-length v6, v0

    move/from16 v0, v24

    if-ge v0, v6, :cond_9

    .line 279
    const/4 v6, 0x0

    aget-object v6, v12, v6

    aget-object v6, v6, v24

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v10, v25, -0x1

    aget-object v8, v8, v10

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/apache/commons/math3/RealFieldElement;

    .line 280
    .local v32, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v26, 0x1

    .local v26, "l":I
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 281
    aget-object v6, v12, v26

    aget-object v6, v6, v24

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v10, v25, -0x1

    aget-object v8, v8, v10

    aget-object v8, v8, v26

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v32, Lorg/apache/commons/math3/RealFieldElement;

    .line 280
    .restart local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 270
    .end local v24    # "j":I
    .end local v25    # "k":I
    .end local v26    # "l":I
    .end local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpg-double v6, v10, v38

    if-gtz v6, :cond_6

    .line 271
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto/16 :goto_4

    .line 283
    .restart local v24    # "j":I
    .restart local v25    # "k":I
    .restart local v26    # "l":I
    .restart local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_8
    aget-object v6, v34, v24

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-interface {v8, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v37, v24

    .line 278
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_6

    .line 286
    .end local v26    # "l":I
    .end local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v11, v25, -0x1

    aget-object v10, v10, v11

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v12, v25

    .line 276
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_5

    .line 291
    .end local v24    # "j":I
    :cond_a
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_8
    move-object/from16 v0, v35

    array-length v6, v0

    move/from16 v0, v24

    if-ge v0, v6, :cond_c

    .line 292
    const/4 v6, 0x0

    aget-object v6, v12, v6

    aget-object v6, v6, v24

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/apache/commons/math3/RealFieldElement;

    .line 293
    .restart local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v26, 0x1

    .restart local v26    # "l":I
    :goto_9
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 294
    aget-object v6, v12, v26

    aget-object v6, v6, v24

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v8, v8, v26

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v32, Lorg/apache/commons/math3/RealFieldElement;

    .line 293
    .restart local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 296
    :cond_b
    aget-object v6, v34, v24

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-interface {v8, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v37, v24

    .line 291
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 300
    .end local v26    # "l":I
    .end local v32    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v37

    invoke-virtual {v0, v12, v1, v2, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v16

    .line 301
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpl-double v6, v10, v38

    if-ltz v6, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lorg/apache/commons/math3/RealFieldElement;->pow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v10, v6}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    .line 305
    .local v17, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v22

    .line 306
    goto/16 :goto_1

    .line 309
    .end local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v24    # "j":I
    .end local v25    # "k":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    .local v31, "stepEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    if-ltz v6, :cond_f

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    aget-object v36, v12, v6

    .line 311
    .local v36, "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_a
    new-instance v14, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-direct {v14, v0, v1, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 314
    .local v14, "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v35

    array-length v10, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-static {v0, v6, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v15

    move-object/from16 v10, p0

    move v11, v7

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->isLastStep()Z

    move-result v6

    if-nez v6, :cond_e

    .line 321
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lorg/apache/commons/math3/RealFieldElement;->pow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v10, v6}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    .line 323
    .restart local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/RealFieldElement;

    .line 324
    .local v29, "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/commons/math3/RealFieldElement;

    .line 325
    .local v28, "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    if-eqz v7, :cond_11

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpl-double v6, v10, v38

    if-ltz v6, :cond_10

    const/16 v27, 0x1

    .line 328
    .local v27, "nextIsLast":Z
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v22

    .line 330
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/RealFieldElement;

    .line 331
    .local v19, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    if-eqz v7, :cond_14

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpl-double v6, v10, v38

    if-ltz v6, :cond_13

    const/16 v18, 0x1

    .line 334
    .local v18, "filteredNextIsLast":Z
    :goto_c
    if-eqz v18, :cond_e

    .line 335
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v22, Lorg/apache/commons/math3/RealFieldElement;

    .line 340
    .end local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v18    # "filteredNextIsLast":Z
    .end local v19    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v27    # "nextIsLast":Z
    .end local v28    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v29    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v22    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->isLastStep()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v20

    .line 343
    .local v20, "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->resetInternalState()V

    .line 344
    return-object v20

    .line 310
    .end local v14    # "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v20    # "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v36    # "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v36

    goto/16 :goto_a

    .line 325
    .restart local v14    # "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v17    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v28    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v29    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v36    # "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_10
    const/16 v27, 0x0

    goto :goto_b

    :cond_11
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpg-double v6, v10, v38

    if-gtz v6, :cond_12

    const/16 v27, 0x1

    goto :goto_b

    :cond_12
    const/16 v27, 0x0

    goto :goto_b

    .line 331
    .restart local v19    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v27    # "nextIsLast":Z
    :cond_13
    const/16 v18, 0x0

    goto :goto_c

    :cond_14
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v38, 0x0

    cmpg-double v6, v10, v38

    if-gtz v6, :cond_15

    const/16 v18, 0x1

    goto :goto_c

    :cond_15
    const/16 v18, 0x0

    goto :goto_c
.end method

.method public setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "maxGrowth":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    .line 374
    return-void
.end method

.method public setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "minReduction":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    .line 360
    return-void
.end method

.method public setSafety(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "safety":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    .line 213
    return-void
.end method
