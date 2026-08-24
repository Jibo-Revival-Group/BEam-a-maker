.class Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "ThreeEighthesFieldStepInterpolator.java"


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
    .line 81
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 22
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
    .line 107
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v18, 0x3fe8000000000000L    # 0.75

    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 108
    .local v10, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    invoke-interface/range {v17 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v17 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 109
    .local v8, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, -0x6

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    invoke-interface/range {v17 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 110
    .local v9, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v17 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 114
    .local v11, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-interface/range {p3 .. p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpg-double v17, v18, v20

    if-gtz v17, :cond_0

    .line 115
    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 116
    .local v15, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0x4

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 117
    .local v12, "fourTheta2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0xf

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    invoke-interface/range {v17 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 118
    .local v4, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 119
    .local v5, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 120
    .local v6, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 121
    .local v7, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    const/16 v18, 0x2

    aput-object v6, v17, v18

    const/16 v18, 0x3

    aput-object v7, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 122
    .local v14, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    aput-object v9, v17, v18

    const/16 v18, 0x2

    aput-object v10, v17, v18

    const/16 v18, 0x3

    aput-object v11, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    .line 135
    .local v13, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v17, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v13}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v17

    .line 124
    .end local v4    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "fourTheta2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v14    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v15    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    const-wide/high16 v18, -0x3fe0000000000000L    # -8.0

    move-object/from16 v0, p5

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 125
    .restart local v15    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0x4

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 126
    .restart local v12    # "fourTheta2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 127
    .local v16, "thetaPlus1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v17 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 128
    .restart local v4    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    .restart local v5    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 130
    .restart local v6    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 131
    .restart local v7    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    const/16 v18, 0x2

    aput-object v6, v17, v18

    const/16 v18, 0x3

    aput-object v7, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 132
    .restart local v14    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    aput-object v9, v17, v18

    const/16 v18, 0x2

    aput-object v10, v17, v18

    const/16 v18, 0x3

    aput-object v11, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    .restart local v13    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    goto/16 :goto_0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method
