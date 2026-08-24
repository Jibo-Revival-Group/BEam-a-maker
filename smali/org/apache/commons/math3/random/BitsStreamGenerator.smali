.class public abstract Lorg/apache/commons/math3/random/BitsStreamGenerator;
.super Ljava/lang/Object;
.source "BitsStreamGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1332938L


# instance fields
.field private nextGaussian:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 42
    return-void
.end method

.method private nextBytesFill([BII)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v6, 0x20

    .line 240
    move v0, p2

    .line 244
    .local v0, "index":I
    const v5, 0x7ffffffc

    and-int/2addr v5, p3

    add-int v3, v0, v5

    .local v3, "indexLoopLimit":I
    move v1, v0

    .line 247
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 248
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    .line 249
    .local v4, "random":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v5, v4

    aput-byte v5, p1, v1

    .line 250
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 251
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 252
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    goto :goto_0

    .line 255
    .end local v4    # "random":I
    :cond_0
    add-int v2, p2, p3

    .line 258
    .local v2, "indexLimit":I
    if-ge v1, v2, :cond_1

    .line 259
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    .restart local v4    # "random":I
    move v0, v1

    .line 261
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v5, v4

    aput-byte v5, p1, v0

    .line 262
    if-ge v1, v2, :cond_1

    .line 263
    ushr-int/lit8 v4, v4, 0x8

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1

    .end local v0    # "index":I
    .end local v4    # "random":I
    .restart local v1    # "index":I
    :cond_1
    move v0, v1

    .line 269
    .end local v1    # "index":I
    .restart local v0    # "index":I
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 176
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 177
    return-void
.end method

.method protected abstract next(I)I
.end method

.method public nextBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 191
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextBytesFill([BII)V

    .line 192
    return-void
.end method

.method public nextBytes([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 212
    if-ltz p2, :cond_0

    array-length v0, p1

    if-lt p2, v0, :cond_1

    .line 214
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 216
    :cond_1
    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_3

    .line 218
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 221
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextBytesFill([BII)V

    .line 222
    return-void
.end method

.method public nextDouble()D
    .locals 8

    .prologue
    const/16 v6, 0x1a

    .line 71
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v3

    int-to-long v4, v3

    shl-long v0, v4, v6

    .line 72
    .local v0, "high":J
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    .line 73
    .local v2, "low":I
    int-to-long v4, v2

    or-long/2addr v4, v0

    long-to-double v4, v4

    const-wide/high16 v6, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method public nextFloat()F
    .locals 2

    .prologue
    .line 78
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x34000000

    mul-float/2addr v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 14

    .prologue
    .line 85
    iget-wide v10, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v6

    .line 88
    .local v6, "x":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v8

    .line 89
    .local v8, "y":D
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v0, v10, v6

    .line 90
    .local v0, "alpha":D
    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 91
    .local v2, "r":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v10

    mul-double v4, v2, v10

    .line 92
    .local v4, "random":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v2

    iput-wide v10, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 99
    .end local v0    # "alpha":D
    .end local v2    # "r":D
    .end local v6    # "x":D
    .end local v8    # "y":D
    :goto_0
    return-wide v4

    .line 95
    .end local v4    # "random":D
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 96
    .restart local v4    # "random":D
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    iput-wide v10, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    goto :goto_0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 7
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1f

    .line 124
    if-lez p1, :cond_1

    .line 125
    neg-int v2, p1

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_0

    .line 126
    int-to-long v2, p1

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    shr-long/2addr v2, v6

    long-to-int v1, v2

    .line 134
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    .line 132
    .local v0, "bits":I
    rem-int v1, v0, p1

    .line 133
    .local v1, "val":I
    sub-int v2, v0, v1

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_0

    goto :goto_0

    .line 136
    .end local v0    # "bits":I
    .end local v1    # "val":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2
.end method

.method public nextLong()J
    .locals 8

    .prologue
    const/16 v6, 0x20

    .line 141
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v6

    .line 142
    .local v0, "high":J
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v2, v4, v6

    .line 143
    .local v2, "low":J
    or-long v4, v0, v2

    return-wide v4
.end method

.method public nextLong(J)J
    .locals 13
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x20

    .line 158
    cmp-long v4, p1, v10

    if-lez v4, :cond_1

    .line 162
    :cond_0
    const/16 v4, 0x1f

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v8

    .line 163
    .local v0, "bits":J
    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 164
    rem-long v2, v0, p1

    .line 165
    .local v2, "val":J
    sub-long v4, v0, v2

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-ltz v4, :cond_0

    .line 166
    return-wide v2

    .line 168
    .end local v0    # "bits":J
    .end local v2    # "val":J
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v4
.end method

.method public abstract setSeed(I)V
.end method

.method public abstract setSeed(J)V
.end method

.method public abstract setSeed([I)V
.end method
