.class public Lorg/apache/commons/math3/util/IntegerSequence;
.super Ljava/lang/Object;
.source "IntegerSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;,
        Lorg/apache/commons/math3/util/IntegerSequence$Range;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static range(II)Lorg/apache/commons/math3/util/IntegerSequence$Range;
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/IntegerSequence;->range(III)Lorg/apache/commons/math3/util/IntegerSequence$Range;

    move-result-object v0

    return-object v0
.end method

.method public static range(III)Lorg/apache/commons/math3/util/IntegerSequence$Range;
    .locals 1
    .param p0, "start"    # I
    .param p1, "max"    # I
    .param p2, "step"    # I

    .prologue
    .line 64
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Range;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Range;-><init>(III)V

    return-object v0
.end method
