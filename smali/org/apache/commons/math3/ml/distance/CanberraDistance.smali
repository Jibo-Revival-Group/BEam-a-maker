.class public Lorg/apache/commons/math3/ml/distance/CanberraDistance;
.super Ljava/lang/Object;
.source "CanberraDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x60c281567cfc58a4L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 12
    .param p1, "a"    # [D
    .param p2, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .local v6, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 39
    aget-wide v8, p1, v2

    aget-wide v10, p2, v2

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 40
    .local v4, "num":D
    aget-wide v8, p1, v2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    aget-wide v10, p2, v2

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    add-double v0, v8, v10

    .line 41
    .local v0, "denom":D
    const-wide/16 v8, 0x0

    cmpl-double v3, v4, v8

    if-nez v3, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v3, v0, v8

    if-nez v3, :cond_0

    const-wide/16 v8, 0x0

    :goto_1
    add-double/2addr v6, v8

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    div-double v8, v4, v0

    goto :goto_1

    .line 43
    .end local v0    # "denom":D
    .end local v4    # "num":D
    :cond_1
    return-wide v6
.end method
