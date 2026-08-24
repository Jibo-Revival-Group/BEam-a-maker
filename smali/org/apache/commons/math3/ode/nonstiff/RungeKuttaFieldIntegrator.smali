.class public abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;
.source "RungeKuttaFieldIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator",
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

.field private final step:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 88
    invoke-interface {p3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    .line 89
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
    .line 97
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v2, p1

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v2, p2

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 30
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
    .line 119
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v21

    .line 121
    .local v21, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v23

    .line 122
    .local v23, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpl-double v6, v26, v28

    if-lez v6, :cond_1

    const/4 v7, 0x1

    .line 126
    .local v7, "forward":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v6, v6

    add-int/lit8 v18, v6, 0x1

    .line 127
    .local v18, "stages":I
    move-object/from16 v22, v23

    .line 128
    .local v22, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    const/4 v9, -0x1

    move/from16 v0, v18

    invoke-static {v6, v0, v9}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    .local v8, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    move-object/from16 v0, v23

    array-length v9, v0

    invoke-static {v6, v9}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Lorg/apache/commons/math3/RealFieldElement;

    .line 132
    .local v25, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    if-eqz v7, :cond_3

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpl-double v6, v26, v28

    if-ltz v6, :cond_2

    .line 134
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 147
    :goto_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setIsLastStep(Z)V

    .line 151
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v22

    .line 152
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v8, v6

    .line 155
    const/4 v14, 0x1

    .local v14, "k":I
    :goto_2
    move/from16 v0, v18

    if-ge v14, v0, :cond_7

    .line 157
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    move-object/from16 v0, v23

    array-length v6, v0

    if-ge v13, v6, :cond_6

    .line 158
    const/4 v6, 0x0

    aget-object v6, v8, v6

    aget-object v6, v6, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v11, v14, -0x1

    aget-object v9, v9, v11

    const/4 v11, 0x0

    aget-object v9, v9, v11

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    .local v20, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v15, 0x1

    .local v15, "l":I
    :goto_4
    if-ge v15, v14, :cond_5

    .line 160
    aget-object v6, v8, v15

    aget-object v6, v6, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v11, v14, -0x1

    aget-object v9, v9, v11

    aget-object v9, v9, v15

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    .restart local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 123
    .end local v7    # "forward":Z
    .end local v8    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v15    # "l":I
    .end local v18    # "stages":I
    .end local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v22    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v25    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 136
    .restart local v7    # "forward":Z
    .restart local v8    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .restart local v18    # "stages":I
    .restart local v22    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v25    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpg-double v6, v26, v28

    if-gtz v6, :cond_4

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto/16 :goto_1

    .line 142
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto/16 :goto_1

    .line 162
    .restart local v13    # "j":I
    .restart local v14    # "k":I
    .restart local v15    # "l":I
    .restart local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_5
    aget-object v6, v22, v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v25, v13

    .line 157
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 165
    .end local v15    # "l":I
    .end local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v26, v14, -0x1

    aget-object v11, v11, v26

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v8, v14

    .line 155
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 170
    .end local v13    # "j":I
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_5
    move-object/from16 v0, v23

    array-length v6, v0

    if-ge v13, v6, :cond_9

    .line 171
    const/4 v6, 0x0

    aget-object v6, v8, v6

    aget-object v6, v6, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x0

    aget-object v9, v9, v11

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    .line 172
    .restart local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v15, 0x1

    .restart local v15    # "l":I
    :goto_6
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    .line 173
    aget-object v6, v8, v15

    aget-object v6, v6, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v9, v9, v15

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    .line 172
    .restart local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 175
    :cond_8
    aget-object v6, v22, v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v25, v13

    .line 170
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 177
    .end local v15    # "l":I
    .end local v20    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/RealFieldElement;

    .line 178
    .local v19, "stepEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v24

    .line 179
    .local v24, "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-instance v10, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v10, v0, v1, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 182
    .local v10, "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    array-length v11, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v11

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->isLastStep()Z

    move-result v6

    if-nez v6, :cond_a

    .line 189
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 190
    .local v17, "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    if-eqz v7, :cond_c

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpl-double v6, v26, v28

    if-ltz v6, :cond_b

    const/16 v16, 0x1

    .line 193
    .local v16, "nextIsLast":Z
    :goto_7
    if-eqz v16, :cond_a

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 198
    .end local v16    # "nextIsLast":Z
    .end local v17    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->isLastStep()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    .line 201
    .local v12, "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 202
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 203
    return-object v12

    .line 190
    .end local v12    # "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v17    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_b
    const/16 v16, 0x0

    goto :goto_7

    :cond_c
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpg-double v6, v26, v28

    if-gtz v6, :cond_d

    const/16 v16, 0x1

    goto :goto_7

    :cond_d
    const/16 v16, 0x0

    goto :goto_7
.end method

.method public singleStep(Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations",
            "<TT;>;TT;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;, "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<TT;>;"
    .local p2, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p3 .. p3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/commons/math3/RealFieldElement;

    .line 237
    .local v7, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v10, v10

    add-int/lit8 v5, v10, 0x1

    .line 238
    .local v5, "stages":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v10, v5, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 239
    .local v8, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-virtual/range {p3 .. p3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/apache/commons/math3/RealFieldElement;

    .line 242
    .local v9, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v0, p4

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 243
    .local v1, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v10, 0x0

    invoke-interface {p1, p2, v7}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v8, v10

    .line 246
    const/4 v3, 0x1

    .local v3, "k":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 248
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    move-object/from16 v0, p3

    array-length v10, v0

    if-ge v2, v10, :cond_1

    .line 249
    const/4 v10, 0x0

    aget-object v10, v8, v10

    aget-object v10, v10, v2

    iget-object v11, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v12, v3, -0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 250
    .local v6, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x1

    .local v4, "l":I
    :goto_2
    if-ge v4, v3, :cond_0

    .line 251
    aget-object v10, v8, v4

    aget-object v10, v10, v2

    iget-object v11, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v12, v3, -0x1

    aget-object v11, v11, v12

    aget-object v11, v11, v4

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 250
    .restart local v6    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 253
    :cond_0
    aget-object v10, v7, v2

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v2

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    .end local v4    # "l":I
    .end local v6    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v11, v3, -0x1

    aget-object v10, v10, v11

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p2, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v10, v9}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v8, v3

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "j":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    move-object/from16 v0, p3

    array-length v10, v0

    if-ge v2, v10, :cond_4

    .line 262
    const/4 v10, 0x0

    aget-object v10, v8, v10

    aget-object v10, v10, v2

    iget-object v11, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 263
    .restart local v6    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x1

    .restart local v4    # "l":I
    :goto_4
    if-ge v4, v5, :cond_3

    .line 264
    aget-object v10, v8, v4

    aget-object v10, v10, v2

    iget-object v11, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v11, v11, v4

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 263
    .restart local v6    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 266
    :cond_3
    aget-object v10, v7, v2

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v7, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 269
    .end local v4    # "l":I
    .end local v6    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_4
    return-object v7
.end method
