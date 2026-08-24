.class Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;
.super Ljava/lang/Object;
.source "AdamsMoultonFieldIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Corrector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final after:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final before:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final previous:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final scaled:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;[TT;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>.Corrector;"
    .local p2, "previous":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "scaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "state":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->previous:[Lorg/apache/commons/math3/RealFieldElement;

    .line 367
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 368
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    .line 369
    invoke-virtual {p4}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->before:[Lorg/apache/commons/math3/RealFieldElement;

    .line 370
    return-void
.end method


# virtual methods
.method public bridge synthetic end()Lorg/apache/commons/math3/FieldElement;
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>.Corrector;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->end()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public end()Lorg/apache/commons/math3/RealFieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>.Corrector;"
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 399
    .local v0, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 400
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v1

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->previous:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v7, v1

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v8, v8, v1

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v6, v1

    .line 401
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->mainSetDimension:I

    if-ge v1, v5, :cond_0

    .line 402
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->previous:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v6, v6, v1

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 403
    .local v4, "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget-wide v6, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget-wide v6, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    move-object v3, v5

    .line 406
    .local v3, "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->before:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v6, v6, v1

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 407
    .local v2, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 399
    .end local v2    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v0    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .restart local v4    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v5, v1

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget-object v6, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v6, v6, v1

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    move-object v3, v5

    goto :goto_1

    .line 411
    .end local v4    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->mainSetDimension:I

    int-to-double v6, v5

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    return-object v5
.end method

.method public start(IIIIII)V
    .locals 2
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p3, "startRow"    # I
    .param p4, "endRow"    # I
    .param p5, "startColumn"    # I
    .param p6, "endColumn"    # I

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>.Corrector;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public bridge synthetic visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0

    .prologue
    .line 346
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>.Corrector;"
    check-cast p3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->visit(IILorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method

.method public visit(IILorg/apache/commons/math3/RealFieldElement;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>.Corrector;"
    .local p3, "value":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 381
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v0, v0, p2

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, p2

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v0, v0, p2

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, p2

    goto :goto_0
.end method
