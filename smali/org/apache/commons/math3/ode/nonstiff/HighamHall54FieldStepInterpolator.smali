.class Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "HighamHall54FieldStepInterpolator.java"


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


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 0
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
    .line 55
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v20, -0x3fdc000000000000L    # -10.0

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, 0x4030000000000000L    # 16.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x3fe2000000000000L    # -7.5

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 82
    .local v10, "bDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 83
    .local v11, "bDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v20, 0x4050e00000000000L    # 67.5

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x3fa9380000000000L    # -91.125

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x403cb00000000000L    # 28.6875

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 84
    .local v12, "bDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v20, -0x3fa2000000000000L    # -120.0

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, 0x4063000000000000L    # 152.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x3fba000000000000L    # -44.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 85
    .local v13, "bDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v20, 0x404f400000000000L    # 62.5

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x3fac780000000000L    # -78.125

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x4037700000000000L    # 23.4375

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 86
    .local v14, "bDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v20, 0x3fe4000000000000L    # 0.625

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v21, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v21 .. v23}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 90
    .local v15, "bDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-interface/range {p3 .. p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v20

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_0

    .line 91
    const-wide/high16 v20, -0x3ffc000000000000L    # -2.5

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x4015555555555555L    # 5.333333333333333

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x3ff2000000000000L    # -3.75

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 92
    .local v4, "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 93
    .local v5, "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v20, 0x4030e00000000000L    # 16.875

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x3fc1a00000000000L    # -30.375

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x402cb00000000000L    # 14.34375

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 94
    .local v6, "b2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v20, -0x3fc2000000000000L    # -30.0

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x4049555555555555L    # 50.666666666666664

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x3fca000000000000L    # -22.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 95
    .local v7, "b3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v20, 0x402f400000000000L    # 15.625

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x3fc5f55555555555L    # -26.041666666666668

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x4027700000000000L    # 11.71875

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 96
    .local v8, "b4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v20, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x402c000000000000L    # -0.3125

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 97
    .local v9, "b5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v4, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    const/16 v21, 0x2

    aput-object v6, v20, v21

    const/16 v21, 0x3

    aput-object v7, v20, v21

    const/16 v21, 0x4

    aput-object v8, v20, v21

    const/16 v21, 0x5

    aput-object v9, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v18

    .line 98
    .local v18, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    aput-object v11, v20, v21

    const/16 v21, 0x2

    aput-object v12, v20, v21

    const/16 v21, 0x3

    aput-object v13, v20, v21

    const/16 v21, 0x4

    aput-object v14, v20, v21

    const/16 v21, 0x5

    aput-object v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    .line 112
    .local v17, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v20, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v20

    .line 100
    .end local v4    # "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "b2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "b3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "b4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "b5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v18    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/RealFieldElement;

    .line 101
    .local v19, "theta2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 102
    .local v16, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v20, -0x3ffc000000000000L    # -2.5

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x4015555555555555L    # 5.333333333333333

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x3ff2000000000000L    # -3.75

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x404aaaaaaaaaaaabL    # -0.08333333333333333

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 103
    .restart local v4    # "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    .restart local v5    # "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v20, 0x4030e00000000000L    # 16.875

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x3fc1a00000000000L    # -30.375

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x402cb00000000000L    # 14.34375

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x4015000000000000L    # -0.84375

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    .restart local v6    # "b2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v20, -0x3fc2000000000000L    # -30.0

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x4049555555555555L    # 50.666666666666664

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x3fca000000000000L    # -22.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x3ff5555555555555L    # 1.3333333333333333

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    .restart local v7    # "b3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v20, 0x402f400000000000L    # 15.625

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x3fc5f55555555555L    # -26.041666666666668

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, 0x4027700000000000L    # 11.71875

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x400b2aaaaaaaaaabL    # -1.3020833333333333

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 107
    .restart local v8    # "b4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v20, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v22, -0x402c000000000000L    # -0.3125

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v22, -0x4045555555555555L    # -0.10416666666666667

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 108
    .restart local v9    # "b5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v4, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    const/16 v21, 0x2

    aput-object v6, v20, v21

    const/16 v21, 0x3

    aput-object v7, v20, v21

    const/16 v21, 0x4

    aput-object v8, v20, v21

    const/16 v21, 0x5

    aput-object v9, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v18

    .line 109
    .restart local v18    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    aput-object v11, v20, v21

    const/16 v21, 0x2

    aput-object v12, v20, v21

    const/16 v21, 0x3

    aput-object v13, v20, v21

    const/16 v21, 0x4

    aput-object v14, v20, v21

    const/16 v21, 0x5

    aput-object v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    .restart local v17    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    goto/16 :goto_0
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method
