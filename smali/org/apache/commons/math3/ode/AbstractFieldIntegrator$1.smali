.class Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;
.super Ljava/lang/Object;
.source "AbstractFieldIntegrator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/math3/ode/events/FieldEventState",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;

.field final synthetic val$orderingSign:I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;I)V
    .locals 0

    .prologue
    .line 297
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator.1;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;->this$0:Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;

    iput p2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;->val$orderingSign:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 297
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator.1;"
    check-cast p1, Lorg/apache/commons/math3/ode/events/FieldEventState;

    check-cast p2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;->compare(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/events/FieldEventState;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/events/FieldEventState;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventState",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/events/FieldEventState",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;, "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator.1;"
    .local p1, "es0":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p2, "es1":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;->val$orderingSign:I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
