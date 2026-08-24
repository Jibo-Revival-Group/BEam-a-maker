.class Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;
.super Ljava/lang/Object;
.source "MultistepFieldIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldNordsieckInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private count:I

.field private final mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private savedStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final t:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

.field private final y:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final yDot:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V
    .locals 2
    .param p3, "nbStartPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>.FieldNordsieckInitializer;"
    .local p2, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    const/4 v1, -0x1

    .line 382
    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    .line 385
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    .line 386
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-static {v0, p3, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->y:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 387
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-static {v0, p3, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->yDot:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 388
    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V
    .locals 9
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator",
            "<TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>.FieldNordsieckInitializer;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    const/4 v8, 0x0

    .line 395
    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    if-nez v3, :cond_0

    .line 397
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    .line 398
    .local v2, "prev":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iput-object v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->savedStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 399
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    iget v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 400
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->y:[[Lorg/apache/commons/math3/RealFieldElement;

    iget v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 401
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->yDot:[[Lorg/apache/commons/math3/RealFieldElement;

    iget v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 405
    .end local v2    # "prev":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_0
    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    .line 406
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    .line 407
    .local v0, "curr":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    iget v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 408
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->y:[[Lorg/apache/commons/math3/RealFieldElement;

    iget v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 409
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->yDot:[[Lorg/apache/commons/math3/RealFieldElement;

    iget v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 411
    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->count:I

    iget-object v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 414
    iget-object v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v3, v5

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v8

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    int-to-double v6, v5

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 417
    iget-object v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->yDot:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v8

    array-length v5, v5

    invoke-static {v3, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, v4, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 418
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object v3, v3, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 419
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object v4, v3, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->yDot:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, v3, v8

    aget-object v3, v3, v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v1

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->t:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->y:[[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->yDot:[[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 426
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object v4, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;->savedStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 427
    new-instance v3, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException;

    invoke-direct {v3}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException;-><init>()V

    throw v3

    .line 431
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method public init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$FieldNordsieckInitializer;, "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<TT;>.FieldNordsieckInitializer;"
    .local p1, "initialState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p2, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    return-void
.end method
