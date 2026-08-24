.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;
.super Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;
.source "AdamsFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nSteps"    # I
    .param p4, "order"    # I
    .param p5, "minStep"    # D
    .param p7, "maxStep"    # D
    .param p9, "scalAbsoluteTolerance"    # D
    .param p11, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "IIDDDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct/range {p0 .. p12}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V

    .line 67
    invoke-static {p1, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->getInstance(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nSteps"    # I
    .param p4, "order"    # I
    .param p5, "minStep"    # D
    .param p7, "maxStep"    # D
    .param p9, "vecAbsoluteTolerance"    # [D
    .param p10, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;",
            "Ljava/lang/String;",
            "IIDD[D[D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V

    .line 94
    invoke-static {p1, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->getInstance(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    .line 95
    return-void
.end method


# virtual methods
.method protected initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;[[TT;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator<TT;>;"
    .local p1, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "t":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "yDot":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v0

    return-object v0
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
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
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator<TT;>;"
    .local p1, "highOrder":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v0

    return-object v0
.end method

.method public updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator<TT;>;"
    .local p1, "start":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "end":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "highOrder":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 143
    return-void
.end method
