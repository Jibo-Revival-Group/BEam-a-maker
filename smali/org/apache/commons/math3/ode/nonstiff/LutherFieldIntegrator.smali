.class public Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.source "LutherFieldIntegrator.java"


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
    .line 70
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-string v0, "Luther"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator<TT;>;"
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 89
    .local v2, "q":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 90
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v0, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    aget-object v4, v0, v10

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 94
    aget-object v3, v0, v11

    const/16 v4, 0x8

    invoke-virtual {p0, v9, v4}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v10

    .line 95
    aget-object v3, v0, v11

    const/16 v4, 0x8

    invoke-virtual {p0, v11, v4}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 96
    aget-object v3, v0, v8

    const/16 v4, 0x8

    const/16 v5, 0x1b

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v10

    .line 97
    aget-object v3, v0, v8

    const/16 v4, 0x1b

    invoke-virtual {p0, v8, v4}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 98
    aget-object v3, v0, v8

    aget-object v4, v0, v8

    aget-object v4, v4, v10

    aput-object v4, v3, v8

    .line 99
    aget-object v4, v0, v9

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, -0x3fcb000000000000L    # -21.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4078800000000000L    # 392.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 100
    aget-object v4, v0, v9

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, -0x3fb4000000000000L    # -56.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4078800000000000L    # 392.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v11

    .line 101
    aget-object v4, v0, v9

    const/16 v3, -0x30

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x4075000000000000L    # 336.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4078800000000000L    # 392.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v8

    .line 102
    aget-object v4, v0, v9

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3fb0800000000000L    # -63.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4078800000000000L    # 392.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v9

    .line 103
    aget-object v4, v0, v12

    const/16 v3, -0xff

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3f6df40000000000L    # -1155.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x409ea00000000000L    # 1960.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 104
    aget-object v4, v0, v12

    const/16 v3, -0x28

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3f8e800000000000L    # -280.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x409ea00000000000L    # 1960.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v11

    .line 105
    aget-object v4, v0, v12

    const/16 v3, -0x140

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x409ea00000000000L    # 1960.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v8

    .line 106
    aget-object v4, v0, v12

    const/16 v3, 0x16b

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x404f800000000000L    # 63.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x409ea00000000000L    # 1960.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v9

    .line 107
    aget-object v4, v0, v12

    const/16 v3, 0x188

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x40a2600000000000L    # 2352.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x409ea00000000000L    # 1960.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v12

    .line 108
    const/4 v3, 0x5

    aget-object v4, v0, v3

    const/16 v3, 0x69

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4074a00000000000L    # 330.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 109
    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 110
    const/4 v3, 0x5

    aget-object v4, v0, v3

    const/16 v3, 0x118

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, -0x3f97000000000000L    # -200.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v8

    .line 111
    const/4 v3, 0x5

    aget-object v4, v0, v3

    const/16 v3, -0xbd

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x405f800000000000L    # 126.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v9

    .line 112
    const/4 v3, 0x5

    aget-object v4, v0, v3

    const/16 v3, -0x7e

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3f7a900000000000L    # -686.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v12

    .line 113
    const/4 v3, 0x5

    aget-object v4, v0, v3

    const/4 v5, 0x5

    const/16 v3, -0x46

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x407ea00000000000L    # 490.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 114
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
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator<TT;>;"
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 121
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v1, 0x14

    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v4

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v3

    .line 123
    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x2d

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 124
    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 125
    const/16 v1, 0x31

    const/16 v2, 0xb4

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v5

    .line 126
    const/4 v1, 0x5

    aget-object v2, v0, v5

    aput-object v2, v0, v1

    .line 127
    const/4 v1, 0x6

    aget-object v2, v0, v4

    aput-object v2, v0, v1

    .line 129
    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator<TT;>;"
    const/4 v10, 0x3

    const/4 v7, 0x1

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    const/4 v6, 0x2

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 76
    .local v1, "q":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 77
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v3

    .line 78
    invoke-virtual {p0, v7, v6}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v7

    .line 79
    invoke-virtual {p0, v6, v10}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v6

    .line 80
    invoke-interface {v1, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, -0x3fd4000000000000L    # -14.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v10

    .line 81
    const/4 v3, 0x4

    invoke-interface {v1, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v3

    .line 82
    const/4 v3, 0x5

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v3

    .line 83
    return-object v0
.end method
