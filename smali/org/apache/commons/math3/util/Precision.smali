.class public Lorg/apache/commons/math3/util/Precision;
.super Ljava/lang/Object;
.source "Precision.java"


# static fields
.field public static final EPSILON:D

.field private static final EXPONENT_OFFSET:J = 0x3ffL

.field private static final NEGATIVE_ZERO_DOUBLE_BITS:J

.field private static final NEGATIVE_ZERO_FLOAT_BITS:I

.field private static final POSITIVE_ZERO:D = 0.0

.field private static final POSITIVE_ZERO_DOUBLE_BITS:J

.field private static final POSITIVE_ZERO_FLOAT_BITS:I

.field public static final SAFE_MIN:D

.field private static final SGN_MASK:J = -0x8000000000000000L

.field private static final SGN_MASK_FLOAT:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    .line 67
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    .line 71
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    .line 79
    const-wide/high16 v0, 0x3ca0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    .line 86
    const-wide/high16 v0, 0x10000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    .line 87
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(DDD)I
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "eps"    # D

    .prologue
    .line 106
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 109
    const/4 v0, -0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compareTo(DDI)I
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "maxUlps"    # I

    .prologue
    .line 133
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 136
    const/4 v0, -0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equals(DD)Z
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    return v0
.end method

.method public static equals(DDD)Z
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "eps"    # D

    .prologue
    const/4 v0, 0x1

    .line 301
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-nez v1, :cond_0

    sub-double v2, p2, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, p4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(DDI)Z
    .locals 16
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "maxUlps"    # I

    .prologue
    .line 366
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    .line 367
    .local v8, "xInt":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    .line 370
    .local v10, "yInt":J
    xor-long v12, v8, v10

    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_1

    .line 372
    sub-long v12, v8, v10

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v12

    move/from16 v0, p4

    int-to-long v14, v0

    cmp-long v7, v12, v14

    if-gtz v7, :cond_0

    const/4 v6, 0x1

    .line 393
    .local v6, "isEqual":Z
    :goto_0
    if-eqz v6, :cond_5

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    return v7

    .line 372
    .end local v6    # "isEqual":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 377
    :cond_1
    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 378
    sget-wide v12, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    sub-long v4, v10, v12

    .line 379
    .local v4, "deltaPlus":J
    sget-wide v12, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    sub-long v2, v8, v12

    .line 385
    .local v2, "deltaMinus":J
    :goto_2
    move/from16 v0, p4

    int-to-long v12, v0

    cmp-long v7, v4, v12

    if-lez v7, :cond_3

    .line 386
    const/4 v6, 0x0

    .restart local v6    # "isEqual":Z
    goto :goto_0

    .line 381
    .end local v2    # "deltaMinus":J
    .end local v4    # "deltaPlus":J
    .end local v6    # "isEqual":Z
    :cond_2
    sget-wide v12, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    sub-long v4, v8, v12

    .line 382
    .restart local v4    # "deltaPlus":J
    sget-wide v12, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    sub-long v2, v10, v12

    .restart local v2    # "deltaMinus":J
    goto :goto_2

    .line 388
    :cond_3
    move/from16 v0, p4

    int-to-long v12, v0

    sub-long/2addr v12, v4

    cmp-long v7, v2, v12

    if-gtz v7, :cond_4

    const/4 v6, 0x1

    .restart local v6    # "isEqual":Z
    :goto_3
    goto :goto_0

    .end local v6    # "isEqual":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 393
    .end local v2    # "deltaMinus":J
    .end local v4    # "deltaPlus":J
    .restart local v6    # "isEqual":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static equals(FF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v0

    return v0
.end method

.method public static equals(FFF)Z
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "eps"    # F

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v1

    if-nez v1, :cond_0

    sub-float v1, p1, p0

    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(FFI)Z
    .locals 9
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "maxUlps"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 216
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    .line 217
    .local v3, "xInt":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    .line 220
    .local v4, "yInt":I
    xor-int v7, v3, v4

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-nez v7, :cond_1

    .line 222
    sub-int v7, v3, v4

    invoke-static {v7}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v7

    if-gt v7, p2, :cond_0

    move v2, v5

    .line 243
    .local v2, "isEqual":Z
    :goto_0
    if-eqz v2, :cond_5

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_1
    return v5

    .end local v2    # "isEqual":Z
    :cond_0
    move v2, v6

    .line 222
    goto :goto_0

    .line 227
    :cond_1
    if-ge v3, v4, :cond_2

    .line 228
    sget v7, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    sub-int v1, v4, v7

    .line 229
    .local v1, "deltaPlus":I
    sget v7, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    sub-int v0, v3, v7

    .line 235
    .local v0, "deltaMinus":I
    :goto_2
    if-le v1, p2, :cond_3

    .line 236
    const/4 v2, 0x0

    .restart local v2    # "isEqual":Z
    goto :goto_0

    .line 231
    .end local v0    # "deltaMinus":I
    .end local v1    # "deltaPlus":I
    .end local v2    # "isEqual":Z
    :cond_2
    sget v7, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    sub-int v1, v3, v7

    .line 232
    .restart local v1    # "deltaPlus":I
    sget v7, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    sub-int v0, v4, v7

    .restart local v0    # "deltaMinus":I
    goto :goto_2

    .line 238
    :cond_3
    sub-int v7, p2, v1

    if-gt v0, v7, :cond_4

    move v2, v5

    .restart local v2    # "isEqual":Z
    :goto_3
    goto :goto_0

    .end local v2    # "isEqual":Z
    :cond_4
    move v2, v6

    goto :goto_3

    .end local v0    # "deltaMinus":I
    .end local v1    # "deltaPlus":I
    .restart local v2    # "isEqual":Z
    :cond_5
    move v5, v6

    .line 243
    goto :goto_1
.end method

.method public static equalsIncludingNaN(DD)Z
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 285
    cmpl-double v2, p0, p0

    if-nez v2, :cond_0

    cmpl-double v2, p2, p2

    if-eqz v2, :cond_4

    :cond_0
    cmpl-double v2, p0, p0

    if-eqz v2, :cond_1

    move v3, v0

    :goto_0
    cmpl-double v2, p2, p2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    xor-int/2addr v2, v3

    if-nez v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    goto :goto_2
.end method

.method public static equalsIncludingNaN(DDD)Z
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "eps"    # D

    .prologue
    .line 340
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v0

    if-nez v0, :cond_0

    sub-double v0, p2, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalsIncludingNaN(DDI)Z
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "maxUlps"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    cmpl-double v2, p0, p0

    if-nez v2, :cond_0

    cmpl-double v2, p2, p2

    if-eqz v2, :cond_4

    :cond_0
    cmpl-double v2, p0, p0

    if-eqz v2, :cond_1

    move v3, v0

    :goto_0
    cmpl-double v2, p2, p2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    xor-int/2addr v2, v3

    if-nez v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    goto :goto_2
.end method

.method public static equalsIncludingNaN(FF)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 163
    cmpl-float v2, p0, p0

    if-nez v2, :cond_0

    cmpl-float v2, p1, p1

    if-eqz v2, :cond_4

    :cond_0
    cmpl-float v2, p0, p0

    if-eqz v2, :cond_1

    move v3, v0

    :goto_0
    cmpl-float v2, p1, p1

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    xor-int/2addr v2, v3

    if-nez v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v0

    goto :goto_2
.end method

.method public static equalsIncludingNaN(FFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "eps"    # F

    .prologue
    .line 193
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v0

    if-nez v0, :cond_0

    sub-float v0, p1, p0

    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalsIncludingNaN(FFI)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "maxUlps"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    cmpl-float v2, p0, p0

    if-nez v2, :cond_0

    cmpl-float v2, p1, p1

    if-eqz v2, :cond_4

    :cond_0
    cmpl-float v2, p0, p0

    if-eqz v2, :cond_1

    move v3, v0

    :goto_0
    cmpl-float v2, p1, p1

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    xor-int/2addr v2, v3

    if-nez v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v0

    goto :goto_2
.end method

.method public static equalsWithRelativeTolerance(DDD)Z
    .locals 10
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "eps"    # D

    .prologue
    const/4 v4, 0x1

    .line 318
    invoke-static {p0, p1, p2, p3, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v4

    .line 322
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 323
    .local v0, "absoluteMax":D
    sub-double v6, p0, p2

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 325
    .local v2, "relativeDifference":D
    cmpg-double v5, v2, p4

    if-lez v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static representableDelta(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "originalDelta"    # D

    .prologue
    .line 606
    add-double v0, p0, p2

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static round(DI)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "scale"    # I

    .prologue
    .line 423
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/Precision;->round(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static round(DII)D
    .locals 8
    .param p0, "x"    # D
    .param p2, "scale"    # I
    .param p3, "roundingMethod"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 445
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 449
    .local v2, "rounded":D
    cmpl-double v1, v2, v6

    if-nez v1, :cond_0

    mul-double v2, v6, p0

    .line 454
    .end local v2    # "rounded":D
    :cond_0
    :goto_0
    return-wide v2

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v2, p0

    .line 452
    goto :goto_0

    .line 454
    :cond_1
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0
.end method

.method public static round(FI)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "scale"    # I

    .prologue
    .line 469
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->round(FII)F

    move-result v0

    return v0
.end method

.method public static round(FII)F
    .locals 6
    .param p0, "x"    # F
    .param p1, "scale"    # I
    .param p2, "roundingMethod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 487
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p0}, Lorg/apache/commons/math3/util/FastMath;->copySign(FF)F

    move-result v1

    .line 488
    .local v1, "sign":F
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v2, v1

    .line 489
    .local v0, "factor":F
    mul-float v2, p0, v0

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5, p2}, Lorg/apache/commons/math3/util/Precision;->roundUnscaled(DDI)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, v0

    return v2
.end method

.method private static roundUnscaled(DDI)D
    .locals 8
    .param p0, "unscaled"    # D
    .param p2, "sign"    # D
    .param p4, "roundingMethod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 509
    packed-switch p4, :pswitch_data_0

    .line 575
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_ROUNDING_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v4, 0x11

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ROUND_CEILING"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ROUND_DOWN"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "ROUND_FLOOR"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "ROUND_HALF_DOWN"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "ROUND_HALF_EVEN"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "ROUND_HALF_UP"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "ROUND_UNNECESSARY"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "ROUND_UP"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 511
    :pswitch_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, p2, v2

    if-nez v2, :cond_1

    .line 512
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p0, p1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    .line 586
    :cond_0
    :goto_0
    return-wide p0

    .line 514
    :cond_1
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, p1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    .line 516
    goto :goto_0

    .line 518
    :pswitch_1
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p0, p1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    .line 519
    goto :goto_0

    .line 521
    :pswitch_2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, p2, v2

    if-nez v2, :cond_2

    .line 522
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, p1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    .line 524
    :cond_2
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p0, p1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    .line 526
    goto :goto_0

    .line 528
    :pswitch_3
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p0, p1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    .line 529
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v0, p0, v2

    .line 530
    .local v0, "fraction":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    .line 531
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    .line 533
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    .line 535
    goto :goto_0

    .line 538
    .end local v0    # "fraction":D
    :pswitch_4
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v0, p0, v2

    .line 539
    .restart local v0    # "fraction":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v0, v2

    if-lez v2, :cond_4

    .line 540
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    .line 541
    :cond_4
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_5

    .line 542
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto :goto_0

    .line 545
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    .line 546
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto/16 :goto_0

    .line 548
    :cond_6
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    .line 551
    goto/16 :goto_0

    .line 554
    .end local v0    # "fraction":D
    :pswitch_5
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, p1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    .line 555
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v0, p0, v2

    .line 556
    .restart local v0    # "fraction":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_7

    .line 557
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto/16 :goto_0

    .line 559
    :cond_7
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    .line 561
    goto/16 :goto_0

    .line 564
    .end local v0    # "fraction":D
    :pswitch_6
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-eqz v2, :cond_0

    .line 565
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v2

    .line 570
    :pswitch_7
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-eqz v2, :cond_0

    .line 571
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, p1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto/16 :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
