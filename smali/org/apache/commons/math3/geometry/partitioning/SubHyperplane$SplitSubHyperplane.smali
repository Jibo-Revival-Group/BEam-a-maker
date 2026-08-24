.class public Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
.super Ljava/lang/Object;
.source "SubHyperplane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSubHyperplane"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;"
        }
    .end annotation
.end field

.field private final plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TU;>;"
    .local p1, "plus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TU;>;"
    .local p2, "minus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 114
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 115
    return-void
.end method


# virtual methods
.method public getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TU;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TU;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TU;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 149
    :goto_0
    return-object v0

    .line 144
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    .line 149
    :cond_2
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0
.end method
