.class public Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.source "ThreeEighthesFieldIntegrator.java"


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
    .line 60
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-string v0, "3/8"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v7, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 75
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    aget-object v2, v0, v4

    invoke-virtual {p0, v5, v7}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v4

    .line 79
    aget-object v3, v0, v5

    aget-object v2, v0, v4

    aget-object v2, v2, v4

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v3, v4

    .line 80
    aget-object v3, v0, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v3, v5

    .line 81
    aget-object v3, v0, v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v3, v4

    .line 82
    aget-object v3, v0, v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v3, v5

    .line 83
    aget-object v3, v0, v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v3, v6

    .line 84
    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 90
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {p0, v3, v6}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v4

    .line 91
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v3

    .line 92
    const/4 v1, 0x2

    aget-object v2, v0, v3

    aput-object v2, v0, v1

    .line 93
    aget-object v1, v0, v4

    aput-object v1, v0, v5

    .line 94
    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 66
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v2

    .line 67
    aget-object v1, v0, v2

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v3

    .line 68
    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 69
    return-object v0
.end method
