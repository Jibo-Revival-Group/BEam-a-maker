.class public Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.source "HighamHall54FieldIntegrator.java"


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
.field private static final METHOD_NAME:Ljava/lang/String; = "Higham-Hall 5(4)"


# instance fields
.field private final e:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
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
    .line 67
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Higham-Hall 5(4)"

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V

    .line 69
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x14

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 72
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    const/16 v2, 0x51

    const/16 v3, 0xa0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    const/4 v2, -0x6

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    const/16 v2, 0x19

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 77
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
    .line 95
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Higham-Hall 5(4)"

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V

    .line 97
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    .line 98
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x14

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 99
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 100
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    const/16 v2, 0x51

    const/16 v3, 0xa0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    const/4 v2, -0x6

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    const/16 v2, 0x19

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 104
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    .local p1, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p2, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v10, 0x0

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 186
    .local v1, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->mainSetDimension:I

    if-ge v2, v7, :cond_2

    .line 187
    aget-object v7, p1, v10

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v8, v8, v10

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 188
    .local v0, "errSum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v3, 0x1

    .local v3, "l":I
    :goto_1
    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 189
    aget-object v7, p1, v3

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "errSum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 188
    .restart local v0    # "errSum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 192
    :cond_0
    aget-object v7, p2, v2

    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v8, p3, v2

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    .line 193
    .local v6, "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v7, :cond_1

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    move-object v5, v7

    .line 196
    .local v5, "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_2
    invoke-interface {p4, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 197
    .local v4, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 186
    .restart local v1    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v4    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v8, v7, v2

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v8, v8, v2

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    move-object v5, v7

    goto :goto_2

    .line 201
    .end local v0    # "errSum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "l":I
    .end local v6    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_2
    iget v7, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->mainSetDimension:I

    int-to-double v8, v7

    invoke-interface {v1, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    return-object v7
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 122
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-virtual {p0, v9, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 126
    aget-object v2, v0, v6

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {p0, v6, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 127
    aget-object v2, v0, v6

    invoke-virtual {p0, v6, v10}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 128
    aget-object v2, v0, v9

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0, v6, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 129
    aget-object v3, v0, v9

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v3, v6

    .line 130
    aget-object v2, v0, v9

    const/16 v3, 0x8

    invoke-virtual {p0, v8, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 131
    aget-object v2, v0, v8

    const/4 v3, 0x0

    const/16 v4, 0x5b

    const/16 v5, 0x1f4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 132
    aget-object v2, v0, v8

    const/16 v3, -0x1b

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 133
    aget-object v2, v0, v8

    const/16 v3, 0x4e

    const/16 v4, 0x7d

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 134
    aget-object v2, v0, v8

    const/16 v3, 0x8

    const/16 v4, 0x7d

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v8

    .line 135
    aget-object v2, v0, v10

    const/4 v3, 0x0

    const/16 v4, -0xb

    const/16 v5, 0x14

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 136
    aget-object v2, v0, v10

    const/16 v3, 0x1b

    const/16 v4, 0x14

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 137
    aget-object v2, v0, v10

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v7}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 138
    aget-object v2, v0, v10

    const/16 v3, -0x24

    invoke-virtual {p0, v3, v7}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v8

    .line 139
    aget-object v2, v0, v10

    invoke-virtual {p0, v7, v6}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 140
    aget-object v2, v0, v7

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {p0, v6, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 141
    aget-object v3, v0, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v3, v6

    .line 142
    aget-object v2, v0, v7

    const/16 v3, 0x1b

    const/16 v4, 0x20

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 143
    aget-object v2, v0, v7

    const/4 v3, -0x4

    invoke-virtual {p0, v3, v8}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v8

    .line 144
    aget-object v2, v0, v7

    const/16 v3, 0x7d

    const/16 v4, 0x60

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 145
    aget-object v2, v0, v7

    const/16 v3, 0x30

    invoke-virtual {p0, v7, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 146
    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 152
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v3

    .line 154
    const/4 v1, 0x2

    const/16 v2, 0x1b

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 155
    const/4 v1, -0x4

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v4

    .line 156
    const/4 v1, 0x4

    const/16 v2, 0x7d

    const/16 v3, 0x60

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 157
    const/16 v1, 0x30

    invoke-virtual {p0, v5, v1}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v5

    .line 158
    const/4 v2, 0x6

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 159
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
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 110
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 111
    invoke-virtual {p0, v3, v5}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v3

    .line 112
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v4

    .line 113
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v5

    .line 114
    const/4 v2, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v6

    .line 116
    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator<TT;>;"
    const/4 v0, 0x5

    return v0
.end method
