.class abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
.source "RungeKuttaFieldStepInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final yDotK:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
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
    .line 63
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    move-object v0, p0

    move v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;-><init>(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->field:Lorg/apache/commons/math3/Field;

    .line 65
    array-length v0, p3

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 66
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p3

    if-ge v7, v0, :cond_0

    .line 67
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v0, p3, v7

    invoke-virtual {v0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v7

    .line 66
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method private varargs combine([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<TT;>;"
    .local p1, "a":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "coefficients":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 136
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 137
    aget-object v2, p1, v0

    aget-object v3, p2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, p1, v0

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "k":I
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected abstract create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 9
    .param p1, "newForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
            "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<TT;>;"
    .local p2, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p3, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected varargs currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<TT;>;"
    .local p1, "coefficients":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->combine([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected varargs derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<TT;>;"
    .local p1, "coefficients":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->combine([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<TT;>;"
    .local p1, "coefficients":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->combine([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method
