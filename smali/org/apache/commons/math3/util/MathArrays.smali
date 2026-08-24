.class public Lorg/apache/commons/math3/util/MathArrays;
.super Ljava/lang/Object;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/MathArrays$3;,
        Lorg/apache/commons/math3/util/MathArrays$Position;,
        Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;,
        Lorg/apache/commons/math3/util/MathArrays$OrderDirection;,
        Lorg/apache/commons/math3/util/MathArrays$Function;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .prologue
    .line 1477
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 1478
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1479
    return-object v0
.end method

.method public static buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;
    .locals 6
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;II)[[TT;"
        }
    .end annotation

    .prologue
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/4 v5, 0x0

    .line 1497
    if-gez p2, :cond_1

    .line 1498
    invoke-static {p0, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    .line 1499
    .local v1, "dummyRow":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [[Ljava/lang/Object;

    .line 1509
    .end local v1    # "dummyRow":[Ljava/lang/Object;, "[TT;"
    .local v0, "array":[[Ljava/lang/Object;, "[[TT;"
    :cond_0
    return-object v0

    .line 1501
    .end local v0    # "array":[[Ljava/lang/Object;, "[[TT;"
    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v5

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [[Ljava/lang/Object;

    .line 1505
    .restart local v0    # "array":[[Ljava/lang/Object;, "[[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1506
    aget-object v3, v0, v2

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1505
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static checkEqualLength([D[D)V
    .locals 1
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .prologue
    .line 422
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[DZ)Z

    .line 423
    return-void
.end method

.method public static checkEqualLength([I[I)V
    .locals 1
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    .line 460
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([I[IZ)Z

    .line 461
    return-void
.end method

.method public static checkEqualLength([D[DZ)Z
    .locals 3
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "abort"    # Z

    .prologue
    .line 402
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    .line 405
    :cond_0
    if-eqz p2, :cond_1

    .line 406
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p0

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 408
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkEqualLength([I[IZ)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "abort"    # Z

    .prologue
    .line 440
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 441
    const/4 v0, 0x1

    .line 446
    :goto_0
    return v0

    .line 443
    :cond_0
    if-eqz p2, :cond_1

    .line 444
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p0

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNonNegative([J)V
    .locals 6
    .param p0, "in"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 615
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 616
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 614
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    return-void
.end method

.method public static checkNonNegative([[J)V
    .locals 6
    .param p0, "in"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 631
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v2, p0, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 632
    aget-object v2, p0, v0

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 633
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-object v3, p0, v0

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 631
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method public static checkNotNaN([D)V
    .locals 4
    .param p0, "in"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .prologue
    .line 598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 599
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    new-instance v1, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw v1

    .line 598
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_1
    return-void
.end method

.method public static checkOrder([D)V
    .locals 2
    .param p0, "val"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 549
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    .line 550
    return-void
.end method

.method public static checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V
    .locals 1
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 538
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    .line 539
    return-void
.end method

.method public static checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z
    .locals 10
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .param p3, "abort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 477
    aget-wide v8, p0, v0

    .line 478
    .local v8, "previous":D
    array-length v6, p0

    .line 482
    .local v6, "max":I
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 483
    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 508
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 485
    :pswitch_0
    if-eqz p2, :cond_2

    .line 486
    aget-wide v4, p0, v3

    cmpg-double v1, v4, v8

    if-gtz v1, :cond_3

    .line 514
    :cond_0
    :goto_1
    if-ne v3, v6, :cond_5

    .line 516
    const/4 v0, 0x1

    .line 523
    :cond_1
    return v0

    .line 490
    :cond_2
    aget-wide v4, p0, v3

    cmpg-double v1, v4, v8

    if-ltz v1, :cond_0

    .line 511
    :cond_3
    aget-wide v8, p0, v3

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    :pswitch_1
    if-eqz p2, :cond_4

    .line 497
    aget-wide v4, p0, v3

    cmpl-double v1, v4, v8

    if-ltz v1, :cond_3

    goto :goto_1

    .line 501
    :cond_4
    aget-wide v4, p0, v3

    cmpl-double v1, v4, v8

    if-lez v1, :cond_3

    goto :goto_1

    .line 520
    :cond_5
    if-eqz p3, :cond_1

    .line 521
    new-instance v0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;-><init>(Ljava/lang/Number;Ljava/lang/Number;ILorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    throw v0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkPositive([D)V
    .locals 6
    .param p0, "in"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 583
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 584
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 582
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_1
    return-void
.end method

.method public static checkRectangular([[J)V
    .locals 5
    .param p0, "in"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 562
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 563
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 564
    aget-object v1, p0, v0

    array-length v1, v1

    aget-object v2, p0, v4

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 565
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIFFERENT_ROWS_LENGTHS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object v3, p0, v0

    array-length v3, v3

    aget-object v4, p0, v4

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v1

    .line 563
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_1
    return-void
.end method

.method public static varargs concatenate([[D)[D
    .locals 11
    .param p0, "x"    # [[D

    .prologue
    .line 1892
    const/4 v3, 0x0

    .line 1893
    .local v3, "combinedLength":I
    move-object v1, p0

    .local v1, "arr$":[[D
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 1894
    .local v0, "a":[D
    array-length v9, v0

    add-int/2addr v3, v9

    .line 1893
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1896
    .end local v0    # "a":[D
    :cond_0
    const/4 v8, 0x0

    .line 1897
    .local v8, "offset":I
    const/4 v4, 0x0

    .line 1898
    .local v4, "curLength":I
    new-array v2, v3, [D

    .line 1899
    .local v2, "combined":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, p0

    if-ge v5, v9, :cond_1

    .line 1900
    aget-object v9, p0, v5

    array-length v4, v9

    .line 1901
    aget-object v9, p0, v5

    const/4 v10, 0x0

    invoke-static {v9, v10, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1902
    add-int/2addr v8, v4

    .line 1899
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1904
    :cond_1
    return-object v2
.end method

.method public static convolve([D[D)[D
    .locals 18
    .param p0, "x"    # [D
    .param p1, "h"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 1535
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1536
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1538
    move-object/from16 v0, p0

    array-length v9, v0

    .line 1539
    .local v9, "xLen":I
    move-object/from16 v0, p1

    array-length v2, v0

    .line 1541
    .local v2, "hLen":I
    if-eqz v9, :cond_0

    if-nez v2, :cond_1

    .line 1542
    :cond_0
    new-instance v11, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v11}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v11

    .line 1546
    :cond_1
    add-int v11, v9, v2

    add-int/lit8 v8, v11, -0x1

    .line 1547
    .local v8, "totalLength":I
    new-array v10, v8, [D

    .line 1550
    .local v10, "y":[D
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 1551
    const-wide/16 v12, 0x0

    .line 1552
    .local v12, "yn":D
    const/4 v11, 0x0

    add-int/lit8 v14, v7, 0x1

    sub-int/2addr v14, v9

    invoke-static {v11, v14}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v5

    .line 1553
    .local v5, "k":I
    sub-int v3, v7, v5

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v6, v5

    .line 1554
    .end local v5    # "k":I
    .local v6, "k":I
    :goto_1
    if-ge v6, v2, :cond_2

    if-ltz v4, :cond_2

    .line 1555
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-wide v14, p0, v4

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    aget-wide v16, p1, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    move v6, v5

    .end local v5    # "k":I
    .restart local v6    # "k":I
    goto :goto_1

    .line 1557
    :cond_2
    aput-wide v12, v10, v7

    .line 1550
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1560
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v12    # "yn":D
    :cond_3
    return-object v10
.end method

.method public static copyOf([D)[D
    .locals 1
    .param p0, "source"    # [D

    .prologue
    .line 912
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 3
    .param p0, "source"    # [D
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 940
    new-array v0, p1, [D

    .line 941
    .local v0, "output":[D
    array-length v1, p0

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    return-object v0
.end method

.method public static copyOf([I)[I
    .locals 1
    .param p0, "source"    # [I

    .prologue
    .line 902
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "source"    # [I
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 925
    new-array v0, p1, [I

    .line 926
    .local v0, "output":[I
    array-length v1, p0

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    return-object v0
.end method

.method public static copyOfRange([DII)[D
    .locals 4
    .param p0, "source"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 954
    sub-int v0, p2, p1

    .line 955
    .local v0, "len":I
    new-array v1, v0, [D

    .line 956
    .local v1, "output":[D
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 957
    return-object v1
.end method

.method public static cosAngle([D[D)D
    .locals 6
    .param p0, "v1"    # [D
    .param p1, "v2"    # [D

    .prologue
    .line 257
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v0

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathArrays;->safeNorm([D)D

    move-result-wide v2

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->safeNorm([D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static distance([D[D)D
    .locals 10
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 240
    const-wide/16 v4, 0x0

    .line 241
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 242
    aget-wide v6, p0, v2

    aget-wide v8, p1, v2

    sub-double v0, v6, v8

    .line 243
    .local v0, "dp":D
    mul-double v6, v0, v0

    add-double/2addr v4, v6

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "dp":D
    :cond_0
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public static distance([I[I)D
    .locals 8
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([I[I)V

    .line 271
    const-wide/16 v4, 0x0

    .line 272
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 273
    aget v3, p0, v2

    aget v6, p1, v2

    sub-int/2addr v3, v6

    int-to-double v0, v3

    .line 274
    .local v0, "dp":D
    mul-double v6, v0, v0

    add-double/2addr v4, v6

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "dp":D
    :cond_0
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public static distance1([D[D)D
    .locals 8
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 204
    const-wide/16 v2, 0x0

    .line 205
    .local v2, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 206
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-wide v2
.end method

.method public static distance1([I[I)I
    .locals 4
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([I[I)V

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 224
    aget v2, p0, v0

    aget v3, p1, v0

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return v1
.end method

.method public static distanceInf([D[D)D
    .locals 8
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 290
    const-wide/16 v2, 0x0

    .line 291
    .local v2, "max":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 292
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-wide v2
.end method

.method public static distanceInf([I[I)I
    .locals 4
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([I[I)V

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 310
    aget v2, p0, v0

    aget v3, p1, v0

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return v1
.end method

.method public static ebeAdd([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 126
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 127
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 128
    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-object v1
.end method

.method public static ebeDivide([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 186
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 187
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 188
    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-object v1
.end method

.method public static ebeMultiply([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 166
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 167
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 168
    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-object v1
.end method

.method public static ebeSubtract([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 146
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 147
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 148
    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v1
.end method

.method public static equals([D[D)Z
    .locals 8
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1370
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1371
    :cond_0
    if-nez p0, :cond_2

    move v4, v1

    :goto_0
    if-nez p1, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    :goto_2
    move v2, v1

    .line 1381
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v4, v2

    .line 1371
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1373
    :cond_5
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 1376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 1377
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 1381
    goto :goto_3
.end method

.method public static equals([F[F)Z
    .locals 5
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1319
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1320
    :cond_0
    if-nez p0, :cond_2

    move v4, v1

    :goto_0
    if-nez p1, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    :goto_2
    move v2, v1

    .line 1330
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v4, v2

    .line 1320
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1322
    :cond_5
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 1325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 1326
    aget v3, p0, v0

    aget v4, p1, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1325
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 1330
    goto :goto_3
.end method

.method public static equalsIncludingNaN([D[D)Z
    .locals 8
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1396
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1397
    :cond_0
    if-nez p0, :cond_2

    move v4, v1

    :goto_0
    if-nez p1, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    :goto_2
    move v2, v1

    .line 1407
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v4, v2

    .line 1397
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1399
    :cond_5
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 1402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 1403
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1402
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 1407
    goto :goto_3
.end method

.method public static equalsIncludingNaN([F[F)Z
    .locals 5
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1345
    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    .line 1346
    :cond_0
    if-nez p0, :cond_2

    move v4, v1

    :goto_0
    if-nez p1, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    :goto_2
    move v2, v1

    .line 1356
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v4, v2

    .line 1346
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1348
    :cond_5
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 1351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 1352
    aget v3, p0, v0

    aget v4, p1, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1351
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 1356
    goto :goto_3
.end method

.method public static isMonotonic([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z
    .locals 1
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    move-result v0

    return v0
.end method

.method public static isMonotonic([Ljava/lang/Comparable;Lorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z
    .locals 7
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;",
            "Lorg/apache/commons/math3/util/MathArrays$OrderDirection;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "val":[Ljava/lang/Comparable;, "[TT;"
    const/4 v4, 0x0

    .line 337
    aget-object v3, p0, v4

    .line 338
    .local v3, "previous":Ljava/lang/Comparable;, "TT;"
    array-length v2, p0

    .line 339
    .local v2, "max":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 341
    sget-object v5, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 368
    new-instance v4, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v4

    .line 343
    :pswitch_0
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 344
    .local v0, "comp":I
    if-eqz p2, :cond_1

    .line 345
    if-ltz v0, :cond_2

    .line 373
    .end local v0    # "comp":I
    :cond_0
    :goto_1
    return v4

    .line 349
    .restart local v0    # "comp":I
    :cond_1
    if-gtz v0, :cond_0

    .line 371
    :cond_2
    aget-object v3, p0, v1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "comp":I
    :pswitch_1
    aget-object v5, p0, v1

    invoke-interface {v5, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 356
    .restart local v0    # "comp":I
    if-eqz p2, :cond_3

    .line 357
    if-ltz v0, :cond_2

    goto :goto_1

    .line 361
    :cond_3
    if-lez v0, :cond_2

    goto :goto_1

    .line 373
    .end local v0    # "comp":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static linearCombination(DDDD)D
    .locals 38
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D

    .prologue
    .line 1071
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v32

    const-wide/32 v34, -0x8000000

    and-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 1072
    .local v0, "a1High":D
    sub-double v2, p0, v0

    .line 1073
    .local v2, "a1Low":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v32

    const-wide/32 v34, -0x8000000

    and-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 1074
    .local v8, "b1High":D
    sub-double v10, p2, v8

    .line 1077
    .local v10, "b1Low":D
    mul-double v16, p0, p2

    .line 1078
    .local v16, "prod1High":D
    mul-double v32, v2, v10

    mul-double v34, v0, v8

    sub-double v34, v16, v34

    mul-double v36, v2, v8

    sub-double v34, v34, v36

    mul-double v36, v0, v10

    sub-double v34, v34, v36

    sub-double v18, v32, v34

    .line 1081
    .local v18, "prod1Low":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v32

    const-wide/32 v34, -0x8000000

    and-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 1082
    .local v4, "a2High":D
    sub-double v6, p4, v4

    .line 1083
    .local v6, "a2Low":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v32

    const-wide/32 v34, -0x8000000

    and-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    .line 1084
    .local v12, "b2High":D
    sub-double v14, p6, v12

    .line 1087
    .local v14, "b2Low":D
    mul-double v20, p4, p6

    .line 1088
    .local v20, "prod2High":D
    mul-double v32, v6, v14

    mul-double v34, v4, v12

    sub-double v34, v20, v34

    mul-double v36, v6, v12

    sub-double v34, v34, v36

    mul-double v36, v4, v14

    sub-double v34, v34, v36

    sub-double v22, v32, v34

    .line 1091
    .local v22, "prod2Low":D
    add-double v26, v16, v20

    .line 1092
    .local v26, "s12High":D
    sub-double v30, v26, v20

    .line 1093
    .local v30, "s12Prime":D
    sub-double v32, v26, v30

    sub-double v32, v20, v32

    sub-double v34, v16, v30

    add-double v28, v32, v34

    .line 1097
    .local v28, "s12Low":D
    add-double v32, v18, v22

    add-double v32, v32, v28

    add-double v24, v26, v32

    .line 1099
    .local v24, "result":D
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 1102
    mul-double v32, p0, p2

    mul-double v34, p4, p6

    add-double v24, v32, v34

    .line 1105
    :cond_0
    return-wide v24
.end method

.method public static linearCombination(DDDDDD)D
    .locals 56
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D
    .param p8, "a3"    # D
    .param p10, "b3"    # D

    .prologue
    .line 1146
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v50

    const-wide/32 v52, -0x8000000

    and-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 1147
    .local v0, "a1High":D
    sub-double v2, p0, v0

    .line 1148
    .local v2, "a1Low":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v50

    const-wide/32 v52, -0x8000000

    and-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    .line 1149
    .local v12, "b1High":D
    sub-double v14, p2, v12

    .line 1152
    .local v14, "b1Low":D
    mul-double v24, p0, p2

    .line 1153
    .local v24, "prod1High":D
    mul-double v50, v2, v14

    mul-double v52, v0, v12

    sub-double v52, v24, v52

    mul-double v54, v2, v12

    sub-double v52, v52, v54

    mul-double v54, v0, v14

    sub-double v52, v52, v54

    sub-double v26, v50, v52

    .line 1156
    .local v26, "prod1Low":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v50

    const-wide/32 v52, -0x8000000

    and-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 1157
    .local v4, "a2High":D
    sub-double v6, p4, v4

    .line 1158
    .local v6, "a2Low":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v50

    const-wide/32 v52, -0x8000000

    and-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    .line 1159
    .local v16, "b2High":D
    sub-double v18, p6, v16

    .line 1162
    .local v18, "b2Low":D
    mul-double v28, p4, p6

    .line 1163
    .local v28, "prod2High":D
    mul-double v50, v6, v18

    mul-double v52, v4, v16

    sub-double v52, v28, v52

    mul-double v54, v6, v16

    sub-double v52, v52, v54

    mul-double v54, v4, v18

    sub-double v52, v52, v54

    sub-double v30, v50, v52

    .line 1166
    .local v30, "prod2Low":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v50

    const-wide/32 v52, -0x8000000

    and-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 1167
    .local v8, "a3High":D
    sub-double v10, p8, v8

    .line 1168
    .local v10, "a3Low":D
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v50

    const-wide/32 v52, -0x8000000

    and-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v20

    .line 1169
    .local v20, "b3High":D
    sub-double v22, p10, v20

    .line 1172
    .local v22, "b3Low":D
    mul-double v32, p8, p10

    .line 1173
    .local v32, "prod3High":D
    mul-double v50, v10, v22

    mul-double v52, v8, v20

    sub-double v52, v32, v52

    mul-double v54, v10, v20

    sub-double v52, v52, v54

    mul-double v54, v8, v22

    sub-double v52, v52, v54

    sub-double v34, v50, v52

    .line 1176
    .local v34, "prod3Low":D
    add-double v44, v24, v28

    .line 1177
    .local v44, "s12High":D
    sub-double v48, v44, v28

    .line 1178
    .local v48, "s12Prime":D
    sub-double v50, v44, v48

    sub-double v50, v28, v50

    sub-double v52, v24, v48

    add-double v46, v50, v52

    .line 1181
    .local v46, "s12Low":D
    add-double v38, v44, v32

    .line 1182
    .local v38, "s123High":D
    sub-double v42, v38, v32

    .line 1183
    .local v42, "s123Prime":D
    sub-double v50, v38, v42

    sub-double v50, v32, v50

    sub-double v52, v44, v42

    add-double v40, v50, v52

    .line 1187
    .local v40, "s123Low":D
    add-double v50, v26, v30

    add-double v50, v50, v34

    add-double v50, v50, v46

    add-double v50, v50, v40

    add-double v36, v38, v50

    .line 1189
    .local v36, "result":D
    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->isNaN(D)Z

    move-result v50

    if-eqz v50, :cond_0

    .line 1192
    mul-double v50, p0, p2

    mul-double v52, p4, p6

    add-double v50, v50, v52

    mul-double v52, p8, p10

    add-double v36, v50, v52

    .line 1195
    :cond_0
    return-wide v36
.end method

.method public static linearCombination(DDDDDDDD)D
    .locals 74
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D
    .param p8, "a3"    # D
    .param p10, "b3"    # D
    .param p12, "a4"    # D
    .param p14, "b4"    # D

    .prologue
    .line 1241
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v68

    const-wide/32 v70, -0x8000000

    and-long v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 1242
    .local v0, "a1High":D
    sub-double v2, p0, v0

    .line 1243
    .local v2, "a1Low":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v68

    const-wide/32 v70, -0x8000000

    and-long v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    .line 1244
    .local v16, "b1High":D
    sub-double v18, p2, v16

    .line 1247
    .local v18, "b1Low":D
    mul-double v32, p0, p2

    .line 1248
    .local v32, "prod1High":D
    mul-double v68, v2, v18

    mul-double v70, v0, v16

    sub-double v70, v32, v70

    mul-double v72, v2, v16

    sub-double v70, v70, v72

    mul-double v72, v0, v18

    sub-double v70, v70, v72

    sub-double v34, v68, v70

    .line 1251
    .local v34, "prod1Low":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v68

    const-wide/32 v70, -0x8000000

    and-long v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 1252
    .local v4, "a2High":D
    sub-double v6, p4, v4

    .line 1253
    .local v6, "a2Low":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v68

    const-wide/32 v70, -0x8000000

    and-long v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v20

    .line 1254
    .local v20, "b2High":D
    sub-double v22, p6, v20

    .line 1257
    .local v22, "b2Low":D
    mul-double v36, p4, p6

    .line 1258
    .local v36, "prod2High":D
    mul-double v68, v6, v22

    mul-double v70, v4, v20

    sub-double v70, v36, v70

    mul-double v72, v6, v20

    sub-double v70, v70, v72

    mul-double v72, v4, v22

    sub-double v70, v70, v72

    sub-double v38, v68, v70

    .line 1261
    .local v38, "prod2Low":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v68

    const-wide/32 v70, -0x8000000

    and-long v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 1262
    .local v8, "a3High":D
    sub-double v10, p8, v8

    .line 1263
    .local v10, "a3Low":D
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v68

    const-wide/32 v70, -0x8000000

    and-long v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v24

    .line 1264
    .local v24, "b3High":D
    sub-double v26, p10, v24

    .line 1267
    .local v26, "b3Low":D
    mul-double v40, p8, p10

    .line 1268
    .local v40, "prod3High":D
    mul-double v68, v10, v26

    mul-double v70, v8, v24

    sub-double v70, v40, v70

    mul-double v72, v10, v24

    sub-double v70, v70, v72

    mul-double v72, v8, v26

    sub-double v70, v70, v72

    sub-double v42, v68, v70

    .line 1271
    .local v42, "prod3Low":D
    invoke-static/range {p12 .. p13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v68

    const-wide/32 v70, -0x8000000

    and-long v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    .line 1272
    .local v12, "a4High":D
    sub-double v14, p12, v12

    .line 1273
    .local v14, "a4Low":D
    invoke-static/range {p14 .. p15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v68

    const-wide/32 v70, -0x8000000

    and-long v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v28

    .line 1274
    .local v28, "b4High":D
    sub-double v30, p14, v28

    .line 1277
    .local v30, "b4Low":D
    mul-double v44, p12, p14

    .line 1278
    .local v44, "prod4High":D
    mul-double v68, v14, v30

    mul-double v70, v12, v28

    sub-double v70, v44, v70

    mul-double v72, v14, v28

    sub-double v70, v70, v72

    mul-double v72, v12, v30

    sub-double v70, v70, v72

    sub-double v46, v68, v70

    .line 1281
    .local v46, "prod4Low":D
    add-double v62, v32, v36

    .line 1282
    .local v62, "s12High":D
    sub-double v66, v62, v36

    .line 1283
    .local v66, "s12Prime":D
    sub-double v68, v62, v66

    sub-double v68, v36, v68

    sub-double v70, v32, v66

    add-double v64, v68, v70

    .line 1286
    .local v64, "s12Low":D
    add-double v56, v62, v40

    .line 1287
    .local v56, "s123High":D
    sub-double v60, v56, v40

    .line 1288
    .local v60, "s123Prime":D
    sub-double v68, v56, v60

    sub-double v68, v40, v68

    sub-double v70, v62, v60

    add-double v58, v68, v70

    .line 1291
    .local v58, "s123Low":D
    add-double v50, v56, v44

    .line 1292
    .local v50, "s1234High":D
    sub-double v54, v50, v44

    .line 1293
    .local v54, "s1234Prime":D
    sub-double v68, v50, v54

    sub-double v68, v44, v68

    sub-double v70, v56, v54

    add-double v52, v68, v70

    .line 1297
    .local v52, "s1234Low":D
    add-double v68, v34, v38

    add-double v68, v68, v42

    add-double v68, v68, v46

    add-double v68, v68, v64

    add-double v68, v68, v58

    add-double v68, v68, v52

    add-double v48, v50, v68

    .line 1299
    .local v48, "result":D
    invoke-static/range {v48 .. v49}, Ljava/lang/Double;->isNaN(D)Z

    move-result v68

    if-eqz v68, :cond_0

    .line 1302
    mul-double v68, p0, p2

    mul-double v70, p4, p6

    add-double v68, v68, v70

    mul-double v70, p8, p10

    add-double v68, v68, v70

    mul-double v70, p12, p14

    add-double v48, v68, v70

    .line 1305
    :cond_0
    return-wide v48
.end method

.method public static linearCombination([D[D)D
    .locals 42
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 980
    move-object/from16 v0, p0

    array-length v15, v0

    .line 982
    .local v15, "len":I
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v15, v0, :cond_1

    .line 984
    const/16 v36, 0x0

    aget-wide v36, p0, v36

    const/16 v38, 0x0

    aget-wide v38, p1, v38

    mul-double v26, v36, v38

    .line 1033
    :cond_0
    return-wide v26

    .line 987
    :cond_1
    new-array v0, v15, [D

    move-object/from16 v17, v0

    .line 988
    .local v17, "prodHigh":[D
    const-wide/16 v24, 0x0

    .line 990
    .local v24, "prodLowSum":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v15, :cond_2

    .line 991
    aget-wide v6, p0, v14

    .line 992
    .local v6, "ai":D
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v36

    const-wide/32 v38, -0x8000000

    and-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 993
    .local v2, "aHigh":D
    sub-double v4, v6, v2

    .line 995
    .local v4, "aLow":D
    aget-wide v12, p1, v14

    .line 996
    .local v12, "bi":D
    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v36

    const-wide/32 v38, -0x8000000

    and-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 997
    .local v8, "bHigh":D
    sub-double v10, v12, v8

    .line 998
    .local v10, "bLow":D
    mul-double v36, v6, v12

    aput-wide v36, v17, v14

    .line 999
    mul-double v36, v4, v10

    aget-wide v38, v17, v14

    mul-double v40, v2, v8

    sub-double v38, v38, v40

    mul-double v40, v4, v8

    sub-double v38, v38, v40

    mul-double v40, v2, v10

    sub-double v38, v38, v40

    sub-double v22, v36, v38

    .line 1003
    .local v22, "prodLow":D
    add-double v24, v24, v22

    .line 990
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1007
    .end local v2    # "aHigh":D
    .end local v4    # "aLow":D
    .end local v6    # "ai":D
    .end local v8    # "bHigh":D
    .end local v10    # "bLow":D
    .end local v12    # "bi":D
    .end local v22    # "prodLow":D
    :cond_2
    const/16 v36, 0x0

    aget-wide v18, v17, v36

    .line 1008
    .local v18, "prodHighCur":D
    const/16 v36, 0x1

    aget-wide v20, v17, v36

    .line 1009
    .local v20, "prodHighNext":D
    add-double v30, v18, v20

    .line 1010
    .local v30, "sHighPrev":D
    sub-double v34, v30, v20

    .line 1011
    .local v34, "sPrime":D
    sub-double v36, v30, v34

    sub-double v36, v20, v36

    sub-double v38, v18, v34

    add-double v32, v36, v38

    .line 1013
    .local v32, "sLowSum":D
    add-int/lit8 v16, v15, -0x1

    .line 1014
    .local v16, "lenMinusOne":I
    const/4 v14, 0x1

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    .line 1015
    add-int/lit8 v36, v14, 0x1

    aget-wide v20, v17, v36

    .line 1016
    add-double v28, v30, v20

    .line 1017
    .local v28, "sHighCur":D
    sub-double v34, v28, v20

    .line 1018
    sub-double v36, v28, v34

    sub-double v36, v20, v36

    sub-double v38, v30, v34

    add-double v36, v36, v38

    add-double v32, v32, v36

    .line 1019
    move-wide/from16 v30, v28

    .line 1014
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1022
    .end local v28    # "sHighCur":D
    :cond_3
    add-double v36, v24, v32

    add-double v26, v30, v36

    .line 1024
    .local v26, "result":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isNaN(D)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 1027
    const-wide/16 v26, 0x0

    .line 1028
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_0

    .line 1029
    aget-wide v36, p0, v14

    aget-wide v38, p1, v14

    mul-double v36, v36, v38

    add-double v26, v26, v36

    .line 1028
    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method

.method public static natural(I)[I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 1679
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->sequence(III)[I

    move-result-object v0

    return-object v0
.end method

.method public static normalizeArray([DD)[D
    .locals 11
    .param p0, "values"    # [D
    .param p1, "normalizedSum"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1435
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1436
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORMALIZE_INFINITE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1438
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1439
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORMALIZE_NAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1441
    :cond_1
    const-wide/16 v4, 0x0

    .line 1442
    .local v4, "sum":D
    array-length v1, p0

    .line 1443
    .local v1, "len":I
    new-array v2, v1, [D

    .line 1444
    .local v2, "out":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 1445
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1446
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aget-wide v8, p0, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1448
    :cond_2
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1449
    aget-wide v6, p0, v0

    add-double/2addr v4, v6

    .line 1444
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1452
    :cond_4
    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_5

    .line 1453
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SUMS_TO_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 1455
    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_7

    .line 1456
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1457
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    aput-wide v6, v2, v0

    .line 1455
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1459
    :cond_6
    aget-wide v6, p0, v0

    mul-double/2addr v6, p1

    div-double/2addr v6, v4

    aput-wide v6, v2, v0

    goto :goto_2

    .line 1462
    :cond_7
    return-object v2
.end method

.method public static safeNorm([D)D
    .locals 34
    .param p0, "v"    # [D

    .prologue
    .line 700
    const-wide v12, 0x3be6a1c6e8d98029L    # 3.834E-20

    .line 701
    .local v12, "rdwarf":D
    const-wide v14, 0x43e69eec5d27e300L    # 1.304E19

    .line 702
    .local v14, "rgiant":D
    const-wide/16 v16, 0x0

    .line 703
    .local v16, "s1":D
    const-wide/16 v18, 0x0

    .line 704
    .local v18, "s2":D
    const-wide/16 v20, 0x0

    .line 705
    .local v20, "s3":D
    const-wide/16 v22, 0x0

    .line 706
    .local v22, "x1max":D
    const-wide/16 v24, 0x0

    .line 707
    .local v24, "x3max":D
    move-object/from16 v0, p0

    array-length v7, v0

    int-to-double v4, v7

    .line 708
    .local v4, "floatn":D
    div-double v2, v14, v4

    .line 709
    .local v2, "agiant":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v7, v0

    if-ge v6, v7, :cond_6

    .line 710
    aget-wide v28, p0, v6

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    .line 711
    .local v26, "xabs":D
    cmpg-double v7, v26, v12

    if-ltz v7, :cond_0

    cmpl-double v7, v26, v2

    if-lez v7, :cond_5

    .line 712
    :cond_0
    cmpl-double v7, v26, v12

    if-lez v7, :cond_3

    .line 713
    cmpl-double v7, v26, v22

    if-lez v7, :cond_2

    .line 714
    div-double v10, v22, v26

    .line 715
    .local v10, "r":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v30, v16, v10

    mul-double v30, v30, v10

    add-double v16, v28, v30

    .line 716
    move-wide/from16 v22, v26

    .line 709
    .end local v10    # "r":D
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 718
    :cond_2
    div-double v10, v26, v22

    .line 719
    .restart local v10    # "r":D
    mul-double v28, v10, v10

    add-double v16, v16, v28

    .line 720
    goto :goto_1

    .line 722
    .end local v10    # "r":D
    :cond_3
    cmpl-double v7, v26, v24

    if-lez v7, :cond_4

    .line 723
    div-double v10, v24, v26

    .line 724
    .restart local v10    # "r":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v30, v20, v10

    mul-double v30, v30, v10

    add-double v20, v28, v30

    .line 725
    move-wide/from16 v24, v26

    .line 726
    goto :goto_1

    .line 727
    .end local v10    # "r":D
    :cond_4
    const-wide/16 v28, 0x0

    cmpl-double v7, v26, v28

    if-eqz v7, :cond_1

    .line 728
    div-double v10, v26, v24

    .line 729
    .restart local v10    # "r":D
    mul-double v28, v10, v10

    add-double v20, v20, v28

    .line 730
    goto :goto_1

    .line 734
    .end local v10    # "r":D
    :cond_5
    mul-double v28, v26, v26

    add-double v18, v18, v28

    goto :goto_1

    .line 738
    .end local v26    # "xabs":D
    :cond_6
    const-wide/16 v28, 0x0

    cmpl-double v7, v16, v28

    if-eqz v7, :cond_7

    .line 739
    div-double v28, v18, v22

    div-double v28, v28, v22

    add-double v28, v28, v16

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    mul-double v8, v22, v28

    .line 751
    .local v8, "norm":D
    :goto_2
    return-wide v8

    .line 741
    .end local v8    # "norm":D
    :cond_7
    const-wide/16 v28, 0x0

    cmpl-double v7, v18, v28

    if-nez v7, :cond_8

    .line 742
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    mul-double v8, v24, v28

    .restart local v8    # "norm":D
    goto :goto_2

    .line 744
    .end local v8    # "norm":D
    :cond_8
    cmpl-double v7, v18, v24

    if-ltz v7, :cond_9

    .line 745
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v30, v24, v18

    mul-double v32, v24, v20

    mul-double v30, v30, v32

    add-double v28, v28, v30

    mul-double v28, v28, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .restart local v8    # "norm":D
    goto :goto_2

    .line 747
    .end local v8    # "norm":D
    :cond_9
    div-double v28, v18, v24

    mul-double v30, v24, v20

    add-double v28, v28, v30

    mul-double v28, v28, v24

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .restart local v8    # "norm":D
    goto :goto_2
.end method

.method public static scale(D[D)[D
    .locals 4
    .param p0, "val"    # D
    .param p2, "arr"    # [D

    .prologue
    .line 90
    array-length v2, p2

    new-array v1, v2, [D

    .line 91
    .local v1, "newArr":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 92
    aget-wide v2, p2, v0

    mul-double/2addr v2, p0

    aput-wide v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method

.method public static scaleInPlace(D[D)V
    .locals 4
    .param p0, "val"    # D
    .param p2, "arr"    # [D

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 108
    aget-wide v2, p2, v0

    mul-double/2addr v2, p0

    aput-wide v2, p2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public static sequence(III)[I
    .locals 3
    .param p0, "size"    # I
    .param p1, "start"    # I
    .param p2, "stride"    # I

    .prologue
    .line 1697
    new-array v0, p0, [I

    .line 1698
    .local v0, "a":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 1699
    mul-int v2, v1, p2

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 1698
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1701
    :cond_0
    return-object v0
.end method

.method public static shuffle([I)V
    .locals 1
    .param p0, "list"    # [I

    .prologue
    .line 1668
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1669
    return-void
.end method

.method public static shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;)V
    .locals 1
    .param p0, "list"    # [I
    .param p1, "start"    # I
    .param p2, "pos"    # Lorg/apache/commons/math3/util/MathArrays$Position;

    .prologue
    .line 1590
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1591
    return-void
.end method

.method public static shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 5
    .param p0, "list"    # [I
    .param p1, "start"    # I
    .param p2, "pos"    # Lorg/apache/commons/math3/util/MathArrays$Position;
    .param p3, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 1611
    sget-object v3, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$Position:[I

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/MathArrays$Position;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1643
    new-instance v3, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v3

    .line 1613
    :pswitch_0
    array-length v3, p0

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_2

    .line 1615
    if-ne v0, p1, :cond_0

    .line 1616
    move v1, p1

    .line 1621
    .local v1, "target":I
    :goto_1
    aget v2, p0, v1

    .line 1622
    .local v2, "temp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1623
    aput v2, p0, v0

    .line 1613
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1619
    .end local v1    # "target":I
    .end local v2    # "temp":I
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {v3, p3, p1, v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v1

    .restart local v1    # "target":I
    goto :goto_1

    .line 1628
    .end local v0    # "i":I
    .end local v1    # "target":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-gt v0, p1, :cond_2

    .line 1630
    if-ne v0, p1, :cond_1

    .line 1631
    move v1, p1

    .line 1636
    .restart local v1    # "target":I
    :goto_3
    aget v2, p0, v1

    .line 1637
    .restart local v2    # "temp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1638
    aput v2, p0, v0

    .line 1628
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1634
    .end local v1    # "target":I
    .end local v2    # "temp":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {v3, p3, v0, p1}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v1

    .restart local v1    # "target":I
    goto :goto_3

    .line 1645
    .end local v1    # "target":I
    :cond_2
    return-void

    .line 1611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p0, "list"    # [I
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 1657
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1658
    return-void
.end method

.method public static varargs sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V
    .locals 16
    .param p0, "x"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "yList"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 828
    if-nez p0, :cond_0

    .line 829
    new-instance v13, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v13}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v13

    .line 832
    :cond_0
    move-object/from16 v0, p2

    array-length v11, v0

    .line 833
    .local v11, "yListLen":I
    move-object/from16 v0, p0

    array-length v7, v0

    .line 835
    .local v7, "len":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v11, :cond_3

    .line 836
    aget-object v9, p2, v6

    .line 837
    .local v9, "y":[D
    if-nez v9, :cond_1

    .line 838
    new-instance v13, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v13}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v13

    .line 840
    :cond_1
    array-length v13, v9

    if-eq v13, v7, :cond_2

    .line 841
    new-instance v13, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v14, v9

    invoke-direct {v13, v14, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v13

    .line 835
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 846
    .end local v9    # "y":[D
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 848
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 849
    new-instance v13, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;

    aget-wide v14, p0, v4

    invoke-direct {v13, v14, v15, v4}, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;-><init>(DI)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 853
    :cond_4
    sget-object v13, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_5

    new-instance v2, Lorg/apache/commons/math3/util/MathArrays$1;

    invoke-direct {v2}, Lorg/apache/commons/math3/util/MathArrays$1;-><init>()V

    .line 870
    .local v2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;>;"
    :goto_2
    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 875
    new-array v5, v7, [I

    .line 876
    .local v5, "indices":[I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_6

    .line 877
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;

    .line 878
    .local v3, "e":Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->getKey()D

    move-result-wide v14

    aput-wide v14, p0, v4

    .line 879
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->getValue()I

    move-result v13

    aput v13, v5, v4

    .line 876
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 853
    .end local v2    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;>;"
    .end local v3    # "e":Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;
    .end local v5    # "indices":[I
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/util/MathArrays$2;

    invoke-direct {v2}, Lorg/apache/commons/math3/util/MathArrays$2;-><init>()V

    goto :goto_2

    .line 884
    .restart local v2    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;>;"
    .restart local v5    # "indices":[I
    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v11, :cond_8

    .line 886
    aget-object v10, p2, v6

    .line 887
    .local v10, "yInPlace":[D
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    .line 889
    .local v12, "yOrig":[D
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_7

    .line 890
    aget v13, v5, v4

    aget-wide v14, v12, v13

    aput-wide v14, v10, v4

    .line 889
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 884
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 893
    .end local v10    # "yInPlace":[D
    .end local v12    # "yOrig":[D
    :cond_8
    return-void
.end method

.method public static varargs sortInPlace([D[[D)V
    .locals 1
    .param p0, "x"    # [D
    .param p1, "yList"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 801
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V

    .line 802
    return-void
.end method

.method public static unique([D)[D
    .locals 10
    .param p0, "data"    # [D

    .prologue
    .line 1922
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 1923
    .local v4, "values":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 1924
    aget-wide v6, p0, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1923
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1926
    :cond_0
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 1927
    .local v0, "count":I
    new-array v3, v0, [D

    .line 1928
    .local v3, "out":[D
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1929
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .line 1930
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1931
    add-int/lit8 v1, v1, 0x1

    sub-int v6, v0, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v3, v6

    goto :goto_1

    .line 1933
    :cond_1
    return-object v3
.end method

.method public static verifyValues([DII)Z
    .locals 1
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1725
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result v0

    return v0
.end method

.method public static verifyValues([DIIZ)Z
    .locals 5
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1752
    if-nez p0, :cond_0

    .line 1753
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 1756
    :cond_0
    if-gez p1, :cond_1

    .line 1757
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 1760
    :cond_1
    if-gez p2, :cond_2

    .line 1761
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 1764
    :cond_2
    add-int v2, p1, p2

    array-length v3, p0

    if-le v2, v3, :cond_3

    .line 1765
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SUBARRAY_ENDS_AFTER_ARRAY_END:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    add-int v3, p1, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1769
    :cond_3
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 1773
    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static verifyValues([D[DII)Z
    .locals 1
    .param p0, "values"    # [D
    .param p1, "weights"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1811
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([D[DIIZ)Z

    move-result v0

    return v0
.end method

.method public static verifyValues([D[DIIZ)Z
    .locals 11
    .param p0, "values"    # [D
    .param p1, "weights"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .param p4, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1850
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1851
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1854
    :cond_1
    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 1856
    const/4 v0, 0x0

    .line 1857
    .local v0, "containsPositiveWeight":Z
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v4, p2, p3

    if-ge v1, v4, :cond_6

    .line 1858
    aget-wide v2, p1, v1

    .line 1859
    .local v2, "weight":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1860
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NAN_ELEMENT_AT_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1862
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1863
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1865
    :cond_3
    cmpg-double v4, v2, v6

    if-gez v4, :cond_4

    .line 1866
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NEGATIVE_ELEMENT_AT_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1868
    :cond_4
    if-nez v0, :cond_5

    cmpl-double v4, v2, v6

    if-lez v4, :cond_5

    .line 1869
    const/4 v0, 0x1

    .line 1857
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1873
    .end local v2    # "weight":D
    :cond_6
    if-nez v0, :cond_7

    .line 1874
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WEIGHT_AT_LEAST_ONE_NON_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1877
    :cond_7
    invoke-static {p0, p2, p3, p4}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result v4

    return v4
.end method
