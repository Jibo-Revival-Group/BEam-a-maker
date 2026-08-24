.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.source "DormandPrince54FieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 5(4)"


# instance fields
.field private final e1:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e3:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e4:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e5:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e6:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e7:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;DDDD)V
    .locals 12
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;DDDD)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Dormand-Prince 5(4)"

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V

    .line 98
    const/16 v0, 0x47

    const v1, 0xe100

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    .line 99
    const/16 v0, -0x47

    const/16 v1, 0x4137

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    .line 100
    const/16 v0, 0x47

    const/16 v1, 0x780

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    .line 101
    const/16 v0, -0x4365

    const v1, 0x52d00

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    .line 102
    const/16 v0, 0x16

    const/16 v1, 0x20d

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    .line 103
    const/4 v0, -0x1

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;DD[D[D)V
    .locals 10
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;DD[D[D)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Dormand-Prince 5(4)"

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V

    .line 124
    const/16 v0, 0x47

    const v1, 0xe100

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    .line 125
    const/16 v0, -0x47

    const/16 v1, 0x4137

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    .line 126
    const/16 v0, 0x47

    const/16 v1, 0x780

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    .line 127
    const/16 v0, -0x4365

    const v1, 0x52d00

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    .line 128
    const/16 v0, 0x16

    const/16 v1, 0x20d

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    const/4 v0, -0x1

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    .line 130
    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
    .locals 9
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    .local p1, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p2, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 211
    .local v1, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->mainSetDimension:I

    if-ge v2, v6, :cond_1

    .line 212
    const/4 v6, 0x0

    aget-object v6, p1, v6

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x2

    aget-object v7, p1, v7

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x3

    aget-object v7, p1, v7

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x4

    aget-object v7, p1, v7

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x5

    aget-object v7, p1, v7

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x6

    aget-object v7, p1, v7

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 219
    .local v0, "errSum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v6, p2, v2

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p3, v2

    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 220
    .local v5, "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v6, :cond_0

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object v4, v6

    .line 223
    .local v4, "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_1
    invoke-interface {p4, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 224
    .local v3, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 211
    .restart local v1    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 220
    .end local v3    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v6, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v8, v7, v2

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object v4, v6

    goto :goto_1

    .line 228
    .end local v0    # "errSum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    iget v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->mainSetDimension:I

    int-to-double v6, v6

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    return-object v6
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 147
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    aget-object v2, v0, v9

    invoke-virtual {p0, v6, v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 151
    aget-object v2, v0, v6

    const/16 v3, 0x28

    invoke-virtual {p0, v7, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 152
    aget-object v2, v0, v6

    const/16 v3, 0x9

    const/16 v4, 0x28

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 153
    aget-object v2, v0, v10

    const/16 v3, 0x2c

    const/16 v4, 0x2d

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 154
    aget-object v2, v0, v10

    const/16 v3, -0x38

    const/16 v4, 0xf

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 155
    aget-object v2, v0, v10

    const/16 v3, 0x20

    const/16 v4, 0x9

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 156
    aget-object v2, v0, v7

    const/16 v3, 0x4bac

    const/16 v4, 0x19a1

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 157
    aget-object v2, v0, v7

    const/16 v3, -0x6310

    const/16 v4, 0x88b

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 158
    aget-object v2, v0, v7

    const v3, 0xfbc0

    const/16 v4, 0x19a1

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 159
    aget-object v2, v0, v7

    const/16 v3, -0xd4

    const/16 v4, 0x2d9

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 160
    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/16 v3, 0x2339

    const/16 v4, 0xc60

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 161
    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/16 v3, -0x163

    const/16 v4, 0x21

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 162
    const/4 v2, 0x4

    aget-object v2, v0, v2

    const v3, 0xb68c

    const/16 v4, 0x147f

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 163
    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/16 v3, 0x31

    const/16 v4, 0xb0

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 164
    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/4 v3, 0x4

    const/16 v4, -0x13ef

    const/16 v5, 0x48e0

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 165
    aget-object v2, v0, v8

    const/16 v3, 0x23

    const/16 v4, 0x180

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 166
    aget-object v3, v0, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v3, v6

    .line 167
    aget-object v2, v0, v8

    const/16 v3, 0x1f4

    const/16 v4, 0x459

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 168
    aget-object v2, v0, v8

    const/16 v3, 0x7d

    const/16 v4, 0xc0

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 169
    aget-object v2, v0, v8

    const/4 v3, 0x4

    const/16 v4, -0x88b

    const/16 v5, 0x1a80

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 170
    aget-object v2, v0, v8

    const/16 v3, 0xb

    const/16 v4, 0x54

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v8

    .line 171
    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 177
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    const/16 v2, 0x23

    const/16 v3, 0x180

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 178
    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 179
    const/4 v1, 0x2

    const/16 v2, 0x1f4

    const/16 v3, 0x459

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 180
    const/4 v1, 0x3

    const/16 v2, 0x7d

    const/16 v3, 0xc0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 181
    const/4 v1, 0x4

    const/16 v2, -0x88b

    const/16 v3, 0x1a80

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    const/4 v1, 0x5

    const/16 v2, 0xb

    const/16 v3, 0x54

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 183
    const/4 v2, 0x6

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 184
    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 135
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 136
    const/16 v1, 0xa

    invoke-virtual {p0, v5, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v4

    .line 137
    const/4 v1, 0x2

    invoke-virtual {p0, v6, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 138
    const/16 v1, 0x8

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v5

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v6

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v3

    .line 141
    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    const/4 v0, 0x5

    return v0
.end method
