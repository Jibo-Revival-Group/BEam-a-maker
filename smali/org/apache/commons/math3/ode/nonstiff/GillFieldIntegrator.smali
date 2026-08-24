.class public Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.source "GillFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-string v0, "Gill"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 77
    .local v3, "two":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 79
    .local v2, "sqrtTwo":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 80
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v4, v5

    .line 84
    const/4 v4, 0x1

    aget-object v5, v0, v4

    const/4 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-interface {v4, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 85
    const/4 v4, 0x1

    aget-object v5, v0, v4

    const/4 v6, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    invoke-interface {v4, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 86
    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 87
    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x1

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 88
    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-interface {v4, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 89
    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator<TT;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 96
    .local v2, "two":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 98
    .local v1, "sqrtTwo":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 99
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v3, 0x6

    invoke-virtual {p0, v9, v3}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v8

    .line 100
    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, -0x3fe8000000000000L    # -6.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v0, v9

    .line 101
    const/4 v4, 0x2

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v0, v4

    .line 102
    const/4 v3, 0x3

    aget-object v4, v0, v8

    aput-object v4, v0, v3

    .line 104
    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator<TT;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 67
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v3

    .line 68
    aget-object v1, v0, v3

    aput-object v1, v0, v4

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v5

    .line 70
    return-object v0
.end method
