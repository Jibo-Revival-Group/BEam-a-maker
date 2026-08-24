.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "DormandPrince853FieldStepInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final d:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 8
    .param p2, "forward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 66
    const/4 v0, 0x7

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 69
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/4 v7, 0x0

    const-wide v2, 0x40f9741000000000L    # 104257.0

    const-wide v4, 0x413d4cf000000000L    # 1920240.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 71
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 72
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x3

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 73
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x4

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/4 v7, 0x5

    const-wide v2, 0x4149ef4f80000000L    # 3399327.0

    const-wide v4, 0x41274f8000000000L    # 763840.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/4 v7, 0x6

    const-wide v2, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v4, 0x4180c8ae78000000L    # 3.5198415E7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/4 v7, 0x7

    const-wide v2, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v4, 0x41b1357670000000L    # 2.887164E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 77
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/16 v7, 0x8

    const-wide v2, 0x42c9008ebfdc2c80L    # 5.4980371265625E13

    const-wide v4, 0x42e4166cc96ea800L    # 1.76692375811392E14

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 78
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/16 v7, 0x9

    const-wide v2, -0x3ed996b200000000L    # -734375.0

    const-wide v4, 0x4152693000000000L    # 4826304.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 79
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/16 v7, 0xa

    const-wide v2, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v4, 0x41c95e9bec000000L    # 8.512614E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 80
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/16 v7, 0xb

    const-wide v2, 0x4100d5a800000000L    # 137909.0

    const-wide v4, 0x4147886000000000L    # 3084480.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 81
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v2, 0xc

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 82
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v2, 0xd

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v2, 0xe

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v2, 0xf

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 87
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 88
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 89
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x3

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 90
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x4

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x5

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x6

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x6

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x7

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 94
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v2, 0x8

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0x8

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 95
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v2, 0x9

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0x9

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 96
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v2, 0xa

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xa

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 97
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v2, 0xb

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xb

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 98
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v2, 0xc

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xc

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v2, 0xd

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xd

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 100
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v2, 0xe

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xe

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v2, 0xf

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xf

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 104
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 105
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x2

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x3

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x3

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 107
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x4

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x4

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 108
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x5

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x5

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 109
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x6

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x6

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x7

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x7

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x8

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0x8

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x9

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0x9

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0xa

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xa

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0xb

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xb

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0xc

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xc

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0xd

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xd

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 117
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0xe

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xe

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0xf

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0xf

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 120
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/4 v7, 0x0

    const-wide v2, -0x3def77988ebc0000L    # -1.7751989329E10

    const-wide v4, 0x41df620b64000000L    # 2.10607656E9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 122
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 123
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x3

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 124
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x4

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 125
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/4 v7, 0x5

    const-wide v2, 0x41efd60356e00000L    # 4.272954039E9

    const-wide v4, 0x41fc169344000000L    # 7.53986464E9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 126
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/4 v7, 0x6

    const-wide v2, -0x3dc46a42d4000000L    # -1.18476319744E11

    const-wide v4, 0x4221fa0e33b20000L    # 3.8604839385E10

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/4 v7, 0x7

    const-wide v2, 0x4265fa1bae6d6000L    # 7.55123450731E11

    const-wide v4, 0x42526e9162040000L    # 3.166577316E11

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/16 v7, 0x8

    const-wide v2, 0x43c99efe0d5d097aL    # 3.6923844612348283E18

    const-wide v4, 0x43b8346565578dffL    # 1.7441304416342505E18

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/16 v7, 0x9

    const-wide v2, -0x3e0ed112aa100000L    # -4.612609375E9

    const-wide v4, 0x41f3b829d4000000L    # 5.293382976E9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 130
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/16 v7, 0xa

    const-wide v2, 0x427e70757f66b000L    # 2.091772278379E12

    const-wide v4, 0x426b2c31b9cd0000L    # 9.336445866E11

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 131
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/16 v7, 0xb

    const-wide v2, 0x41dfd69302400000L    # 2.136624137E9

    const-wide v4, 0x41e9348a28000000L    # 3.38298912E9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 132
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/16 v7, 0xc

    const-wide v2, -0x3f011e3000000000L    # -126493.0

    const-wide v4, 0x4135b07000000000L    # 1421424.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 133
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/16 v7, 0xd

    const-wide v2, 0x419772cec0000000L    # 9.835E7

    const-wide v4, 0x4154ac2ac0000000L    # 5419179.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/16 v7, 0xe

    const-wide v2, -0x3e8dff1530000000L    # -1.8878125E7

    const-wide v4, 0x413f543000000000L    # 2053168.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/16 v7, 0xf

    const-wide v2, -0x3e23062899400000L    # -1.944542619E9

    const-wide v4, 0x41ba20b608000000L    # 4.38351368E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/4 v7, 0x0

    const-wide v2, 0x421eade9a4440000L    # 3.2941697297E10

    const-wide v4, 0x41e789888b000000L    # 3.15911484E9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 139
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 140
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    const/4 v2, 0x3

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    const/4 v2, 0x4

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/4 v7, 0x5

    const-wide v2, 0x425a954dae54c000L    # 4.56696183123E11

    const-wide v4, 0x41dc169344000000L    # 1.88496616E9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 143
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/4 v7, 0x6

    const-wide v2, 0x42b166a8771c0000L    # 1.9132610714624E13

    const-wide v4, 0x423af7154d8b0000L    # 1.15814518155E11

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 144
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/4 v7, 0x7

    const-wide v2, -0x3d1bc64ac770fa20L    # -1.77904688592943E14

    const-wide v4, 0x425ba5da13060000L    # 4.749865974E11

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 145
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/16 v7, 0x8

    const-wide v2, -0x3c2f45f7b10c97d2L    # -4.821139941836765E18

    const-wide v4, 0x4388346565578dffL    # 2.180163052042813E17

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 146
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/16 v7, 0x9

    const-wide v2, 0x421c97ee52240000L    # 3.0702015625E10

    const-wide v4, 0x41ed943ebe000000L    # 3.970037232E9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 147
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/16 v7, 0xa

    const-wide v2, -0x3d2c7706a68e6780L    # -8.5916079474274E13

    const-wide v4, 0x428461254b59c000L    # 2.8009337598E12

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 148
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/16 v7, 0xb

    const-wide v2, -0x3e09f2c161900000L    # -5.919468007E9

    const-wide v4, 0x41c2e7679e000000L    # 6.3431046E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 149
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/16 v7, 0xc

    const-wide v2, 0x4142ea1b80000000L    # 2479159.0

    const-wide v4, 0x4103478000000000L    # 157936.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/16 v7, 0xd

    const-wide v2, -0x3e8e1e5d00000000L    # -1.875E7

    const-wide v4, 0x4122602600000000L    # 602131.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/16 v7, 0xe

    const-wide v2, -0x3e8dafbcb0000000L    # -1.9203125E7

    const-wide v4, 0x413f543000000000L    # 2053168.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 152
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/16 v7, 0xf

    const-wide v2, 0x420d3e8407b80000L    # 1.5700361463E10

    const-wide v4, 0x41ba20b608000000L    # 4.38351368E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 154
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/4 v7, 0x0

    const-wide v2, 0x42078507bf380000L    # 1.2627015655E10

    const-wide v4, 0x41c2d46d3c000000L    # 6.31822968E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 156
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 157
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    const/4 v2, 0x3

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    const/4 v2, 0x4

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/4 v7, 0x5

    const-wide v2, -0x3dcf0387a44b0000L    # -7.2955222965E10

    const-wide v4, 0x41a67875d0000000L    # 1.88496616E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 160
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/4 v7, 0x6

    const-wide v2, -0x3d58168915680000L    # -1.314574495232E13

    const-wide v4, 0x42302dd994ed0000L    # 6.9488710893E10

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 161
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/4 v7, 0x7

    const-wide v2, 0x42bb5c870505d100L    # 3.0084216194513E13

    const-wide v4, 0x422a8abcdf100000L    # 5.6998391688E10

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 162
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/16 v7, 0x8

    const-wide v2, -0x3c6f85621e66f248L    # -2.9685876100664064E17

    const-wide v4, 0x4356c7e6f5f80d2cL    # 2.5648977082856624E16

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 163
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/16 v7, 0x9

    const-wide v2, 0x41c0f632c8800000L    # 5.69140625E8

    const-wide v4, 0x4193b829d4000000L    # 8.2709109E7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/16 v7, 0xa

    const-wide v2, -0x3dee9957814c0000L    # -1.8684190637E10

    const-wide v4, 0x421163f6dd500000L    # 1.8672891732E10

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/16 v7, 0xb

    const-wide v2, 0x41909abc34000000L    # 6.9644045E7

    const-wide v4, 0x419559ae40000000L    # 8.9549712E7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 166
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/16 v7, 0xc

    const-wide v2, -0x3e996751e0000000L    # -1.1847025E7

    const-wide v4, 0x4150445400000000L    # 4264272.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 167
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/16 v7, 0xd

    const-wide v2, -0x3e32d57e38000000L    # -9.7865E8

    const-wide v4, 0x416f024020000000L    # 1.6257537E7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/16 v7, 0xe

    const-wide v2, 0x41bef4fc63000000L    # 5.19371875E8

    const-wide v4, 0x41577f2400000000L    # 6159504.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 169
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x5

    aget-object v6, v0, v1

    const/16 v7, 0xf

    const-wide v2, 0x41f3954f86900000L    # 5.256837225E9

    const-wide v4, 0x41ba20b608000000L    # 4.38351368E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/4 v7, 0x0

    const-wide v2, -0x3e451f2063000000L    # -4.50944925E8

    const-wide v4, 0x4170bcd2e0000000L    # 1.7550638E7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    const/4 v2, 0x3

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 175
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    const/4 v2, 0x4

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v2

    .line 176
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/4 v7, 0x5

    const-wide v2, -0x3df4ee8b36980000L    # -1.4532122925E10

    const-wide v4, 0x41967875d0000000L    # 9.4248308E7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/4 v7, 0x6

    const-wide v2, -0x3d9ea85ee2000000L    # -5.958769664E11

    const-wide v4, 0x41e32cdbf2e00000L    # 2.573655959E9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/4 v7, 0x7

    const-wide v2, 0x4245f925f0eb8000L    # 1.88748653015E11

    const-wide v4, 0x41bf7505c6000000L    # 5.27762886E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 179
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/16 v7, 0x8

    const-wide v2, 0x43c1a9b0c4cff0c5L    # 2.5454854581152343E18

    const-wide v4, 0x4358346565578dffL    # 2.7252038150535164E16

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/16 v7, 0x9

    const-wide v2, -0x3e2b7b5736c00000L    # -1.376953125E9

    const-wide v4, 0x41818741a0000000L    # 3.6759604E7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/16 v7, 0xa

    const-wide v2, 0x422924c6d7f60000L    # 5.3995596795E10

    const-wide v4, 0x41beea9a6d000000L    # 5.18691437E8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/16 v7, 0xb

    const-wide v2, 0x41a9123072000000L    # 2.10311225E8

    const-wide v4, 0x415ae2b580000000L    # 7047894.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 183
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/16 v7, 0xc

    const-wide v2, -0x3ec5c5a500000000L    # -1718875.0

    const-wide v4, 0x40e3478000000000L    # 39484.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/16 v7, 0xd

    const-wide v2, 0x418ba81400000000L    # 5.8E7

    const-wide v4, 0x4122602600000000L    # 602131.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/16 v7, 0xe

    const-wide v2, -0x3ec8658500000000L    # -1546875.0

    const-wide v4, 0x40e3478000000000L    # 39484.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 186
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    aget-object v6, v0, v1

    const/16 v7, 0xf

    const-wide v2, -0x3e2d3131ca400000L    # -1.262172375E9

    const-wide v4, 0x4160142140000000L    # 8429834.0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v6, v7

    .line 188
    return-void
.end method

.method private fraction(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .param p2, "p"    # D
    .param p4, "q"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;DD)TT;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p4, p5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    .line 223
    .local v21, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 224
    .local v10, "eta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v26, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    .line 225
    .local v25, "twoTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    .line 226
    .local v24, "theta2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 227
    .local v4, "dot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v26, -0x3

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 228
    .local v5, "dot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    invoke-interface/range {v25 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 229
    .local v6, "dot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v26, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x4020000000000000L    # 8.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 230
    .local v7, "dot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v26, -0x6

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x402e000000000000L    # 15.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x4028000000000000L    # 12.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 231
    .local v8, "dot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v26, -0x7

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x4032000000000000L    # 18.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x402e000000000000L    # 15.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 236
    .local v9, "dot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v26

    if-eqz v26, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_1

    .line 237
    move-object/from16 v11, p4

    .line 238
    .local v11, "f0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v11, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 239
    .local v12, "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 240
    .local v13, "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 241
    .local v14, "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 242
    .local v15, "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v15, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 243
    .local v16, "f5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 244
    .local v17, "f6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lorg/apache/commons/math3/RealFieldElement;

    .line 245
    .local v22, "p":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lorg/apache/commons/math3/RealFieldElement;

    .line 246
    .local v23, "q":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    aget-object v26, v26, v18

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v26, v22, v18

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    aget-object v26, v26, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v8, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v9, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v26, v23, v18

    .line 246
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 262
    :cond_0
    const/16 v26, 0x10

    move/from16 v0, v26

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const/16 v28, 0x3

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x4

    const/16 v28, 0x4

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x5

    const/16 v28, 0x5

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x6

    const/16 v28, 0x6

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x7

    const/16 v28, 0x7

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x8

    const/16 v28, 0x8

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x9

    const/16 v28, 0x9

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xa

    const/16 v28, 0xa

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xb

    const/16 v28, 0xb

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xc

    const/16 v28, 0xc

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xd

    const/16 v28, 0xd

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xe

    const/16 v28, 0xe

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xf

    const/16 v28, 0xf

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v20

    .line 264
    .local v20, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v26, 0x10

    move/from16 v0, v26

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const/16 v28, 0x3

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x4

    const/16 v28, 0x4

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x5

    const/16 v28, 0x5

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x6

    const/16 v28, 0x6

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x7

    const/16 v28, 0x7

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x8

    const/16 v28, 0x8

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x9

    const/16 v28, 0x9

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xa

    const/16 v28, 0xa

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xb

    const/16 v28, 0xb

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xc

    const/16 v28, 0xc

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xd

    const/16 v28, 0xd

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xe

    const/16 v28, 0xe

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xf

    const/16 v28, 0xf

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v19

    .line 298
    .local v19, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_1
    new-instance v26, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v26

    .line 267
    .end local v11    # "f0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "f5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "f6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v18    # "i":I
    .end local v19    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v20    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v22    # "p":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v23    # "q":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_1
    invoke-interface/range {p5 .. p5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 268
    .restart local v11    # "f0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 269
    .restart local v12    # "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 270
    .restart local v13    # "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 271
    .restart local v14    # "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 272
    .restart local v15    # "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v15, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 273
    .restart local v16    # "f5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 274
    .restart local v17    # "f6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lorg/apache/commons/math3/RealFieldElement;

    .line 275
    .restart local v22    # "p":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lorg/apache/commons/math3/RealFieldElement;

    .line 276
    .restart local v23    # "q":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    aget-object v26, v26, v18

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v26, v22, v18

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    aget-object v26, v26, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v8, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->d:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    aget-object v27, v27, v28

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    invoke-interface {v9, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v26, v23, v18

    .line 276
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 292
    :cond_2
    const/16 v26, 0x10

    move/from16 v0, v26

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const/16 v28, 0x3

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x4

    const/16 v28, 0x4

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x5

    const/16 v28, 0x5

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x6

    const/16 v28, 0x6

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x7

    const/16 v28, 0x7

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x8

    const/16 v28, 0x8

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0x9

    const/16 v28, 0x9

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xa

    const/16 v28, 0xa

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xb

    const/16 v28, 0xb

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xc

    const/16 v28, 0xc

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xd

    const/16 v28, 0xd

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xe

    const/16 v28, 0xe

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    const/16 v27, 0xf

    const/16 v28, 0xf

    aget-object v28, v22, v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v20

    .line 294
    .restart local v20    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v26, 0x10

    move/from16 v0, v26

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const/16 v28, 0x3

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x4

    const/16 v28, 0x4

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x5

    const/16 v28, 0x5

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x6

    const/16 v28, 0x6

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x7

    const/16 v28, 0x7

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x8

    const/16 v28, 0x8

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0x9

    const/16 v28, 0x9

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xa

    const/16 v28, 0xa

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xb

    const/16 v28, 0xb

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xc

    const/16 v28, 0xc

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xd

    const/16 v28, 0xd

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xe

    const/16 v28, 0xe

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    const/16 v27, 0xf

    const/16 v28, 0xf

    aget-object v28, v23, v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v19

    .restart local v19    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    goto/16 :goto_1
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;
    .locals 9
    .param p2, "newForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method
