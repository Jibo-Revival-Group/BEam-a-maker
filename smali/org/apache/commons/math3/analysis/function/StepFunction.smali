.class public Lorg/apache/commons/math3/analysis/function/StepFunction;
.super Ljava/lang/Object;
.source "StepFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# instance fields
.field private final abscissa:[D

.field private final ordinate:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 3
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 67
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 69
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 71
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 73
    :cond_3
    array-length v0, p2

    array-length v1, p1

    if-eq v0, v1, :cond_4

    .line 74
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 76
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 78
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->abscissa:[D

    .line 79
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->ordinate:[D

    .line 80
    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 5
    .param p1, "x"    # D

    .prologue
    .line 84
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->abscissa:[D

    invoke-static {v3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    .line 85
    .local v2, "index":I
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "fx":D
    const/4 v3, -0x1

    if-ge v2, v3, :cond_0

    .line 89
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->ordinate:[D

    neg-int v4, v2

    add-int/lit8 v4, v4, -0x2

    aget-wide v0, v3, v4

    .line 99
    :goto_0
    return-wide v0

    .line 90
    :cond_0
    if-ltz v2, :cond_1

    .line 92
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->ordinate:[D

    aget-wide v0, v3, v2

    goto :goto_0

    .line 96
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->ordinate:[D

    const/4 v4, 0x0

    aget-wide v0, v3, v4

    goto :goto_0
.end method
