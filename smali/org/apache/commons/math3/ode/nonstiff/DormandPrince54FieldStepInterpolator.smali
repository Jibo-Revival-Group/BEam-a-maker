.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "DormandPrince54FieldStepInterpolator.java"


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
.field private final a70:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a72:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a73:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a74:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a75:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d3:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d4:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d5:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d6:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 4
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
    .line 92
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 96
    .local v0, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v2, 0x4041800000000000L    # 35.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4078000000000000L    # 384.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    .line 97
    const-wide v2, 0x407f400000000000L    # 500.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x4091640000000000L    # 1113.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    .line 98
    const-wide v2, 0x405f400000000000L    # 125.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4068000000000000L    # 192.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    .line 99
    const-wide v2, -0x3f5eea0000000000L    # -2187.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x40ba800000000000L    # 6784.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    .line 100
    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4055000000000000L    # 84.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    .line 101
    const-wide v2, -0x3df850f726680000L    # -1.2715105075E10

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x420503b754000000L    # 1.1282082432E10

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    .line 102
    const-wide v2, 0x42345ea8ff940000L    # 8.74874797E10

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x421e7462aebc0000L    # 3.2700410799E10

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    .line 103
    const-wide v2, -0x3dfc163f19c80000L    # -1.0690763975E10

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x41dc04f470000000L    # 1.880347072E9

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    const-wide v2, 0x42646e2913596000L    # 7.01980252875E11

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x4247341a6cc00000L    # 1.99316789632E11

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    const-wide v2, -0x3e2a55f997c00000L    # -1.453857185E9

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x41c88455e2000000L    # 8.22651844E8

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    const-wide v2, 0x4190b055e4000000L    # 6.9997945E7

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x417c04f470000000L    # 2.9380423E7

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    .line 107
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 34
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
    .line 130
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/commons/math3/RealFieldElement;

    .line 131
    .local v28, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    .line 132
    .local v21, "eta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v30, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/RealFieldElement;

    .line 133
    .local v29, "twoTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/RealFieldElement;

    .line 134
    .local v18, "dot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v30, -0x3

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/RealFieldElement;

    .line 135
    .local v19, "dot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v30, 0x4008000000000000L    # 3.0

    invoke-interface/range {v29 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    .line 138
    .local v20, "dot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v30

    if-eqz v30, :cond_0

    invoke-interface/range {p3 .. p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v30

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_0

    .line 139
    move-object/from16 v22, p4

    .line 140
    .local v22, "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/commons/math3/RealFieldElement;

    .line 141
    .local v23, "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    .line 142
    .local v24, "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    .line 143
    .local v25, "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 147
    .local v4, "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 148
    .local v5, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 152
    .local v6, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 156
    .local v7, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    .local v8, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 164
    .local v9, "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 165
    .local v10, "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 169
    .local v11, "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 170
    .local v12, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 174
    .local v13, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 178
    .local v14, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 182
    .local v15, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 186
    .local v16, "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 187
    .local v17, "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v30, 0x7

    move/from16 v0, v30

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v4, v30, v31

    const/16 v31, 0x1

    aput-object v5, v30, v31

    const/16 v31, 0x2

    aput-object v6, v30, v31

    const/16 v31, 0x3

    aput-object v7, v30, v31

    const/16 v31, 0x4

    aput-object v8, v30, v31

    const/16 v31, 0x5

    aput-object v9, v30, v31

    const/16 v31, 0x6

    aput-object v10, v30, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v27

    .line 189
    .local v27, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v30, 0x7

    move/from16 v0, v30

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v11, v30, v31

    const/16 v31, 0x1

    aput-object v12, v30, v31

    const/16 v31, 0x2

    aput-object v13, v30, v31

    const/16 v31, 0x3

    aput-object v14, v30, v31

    const/16 v31, 0x4

    aput-object v15, v30, v31

    const/16 v31, 0x5

    aput-object v16, v30, v31

    const/16 v31, 0x6

    aput-object v17, v30, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v26

    .line 245
    .local v26, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v30, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v30

    .line 192
    .end local v4    # "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v10    # "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v22    # "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v23    # "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v24    # "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v26    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v27    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_0
    invoke-interface/range {p5 .. p5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/commons/math3/RealFieldElement;

    .line 193
    .restart local v22    # "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/commons/math3/RealFieldElement;

    .line 194
    .restart local v23    # "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/RealFieldElement;

    .line 195
    .restart local v24    # "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/math3/RealFieldElement;

    .line 196
    .restart local v25    # "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 200
    .restart local v4    # "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 201
    .restart local v5    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 205
    .restart local v6    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 209
    .restart local v7    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 213
    .restart local v8    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 217
    .restart local v9    # "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 218
    .restart local v10    # "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v31 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 222
    .restart local v11    # "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 223
    .restart local v12    # "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 227
    .restart local v13    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 231
    .restart local v14    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 235
    .restart local v15    # "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    .line 239
    .restart local v16    # "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 240
    .restart local v17    # "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v30, 0x7

    move/from16 v0, v30

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v4, v30, v31

    const/16 v31, 0x1

    aput-object v5, v30, v31

    const/16 v31, 0x2

    aput-object v6, v30, v31

    const/16 v31, 0x3

    aput-object v7, v30, v31

    const/16 v31, 0x4

    aput-object v8, v30, v31

    const/16 v31, 0x5

    aput-object v9, v30, v31

    const/16 v31, 0x6

    aput-object v10, v30, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v27

    .line 242
    .restart local v27    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v30, 0x7

    move/from16 v0, v30

    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v11, v30, v31

    const/16 v31, 0x1

    aput-object v12, v30, v31

    const/16 v31, 0x2

    aput-object v13, v30, v31

    const/16 v31, 0x3

    aput-object v14, v30, v31

    const/16 v31, 0x4

    aput-object v15, v30, v31

    const/16 v31, 0x5

    aput-object v16, v30, v31

    const/16 v31, 0x6

    aput-object v17, v30, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v26

    .restart local v26    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    goto/16 :goto_0
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method
