.class public Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;
.super Ljava/lang/Object;
.source "KolmogorovSmirnovTest.java"


# static fields
.field protected static final KS_SUM_CAUCHY_CRITERION:D = 1.0E-20

.field protected static final LARGE_SAMPLE_PRODUCT:I = 0x2710

.field protected static final MAXIMUM_PARTIAL_SUM_COUNT:I = 0x186a0

.field protected static final MONTE_CARLO_ITERATIONS:I = 0xf4240
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final PG_SUM_RELATIVE_ERROR:D = 1.0E-10

.field protected static final SMALL_SAMPLE_PRODUCT:I = 0xc8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final rng:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 168
    return-void
.end method

.method private static c(IIIIJZ)I
    .locals 8
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "m"    # I
    .param p3, "n"    # I
    .param p4, "cmn"    # J
    .param p6, "strict"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1229
    if-eqz p6, :cond_2

    .line 1230
    int-to-long v2, p0

    int-to-long v4, p3

    mul-long/2addr v2, v4

    int-to-long v4, p1

    int-to-long v6, p2

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-gtz v2, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1230
    goto :goto_0

    .line 1232
    :cond_2
    int-to-long v2, p0

    int-to-long v4, p3

    mul-long/2addr v2, v4

    int-to-long v4, p1

    int-to-long v6, p2

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static calculateIntegralD(DIIZ)J
    .locals 12
    .param p0, "d"    # D
    .param p2, "n"    # I
    .param p3, "m"    # I
    .param p4, "strict"    # Z

    .prologue
    .line 974
    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    .line 975
    .local v4, "tol":D
    int-to-long v8, p2

    int-to-long v10, p3

    mul-long v2, v8, v10

    .line 976
    .local v2, "nm":J
    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    sub-double v8, p0, v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v8

    double-to-long v6, v8

    .line 977
    .local v6, "upperBound":J
    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    add-double/2addr v8, p0

    long-to-double v10, v2

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v8

    double-to-long v0, v8

    .line 978
    .local v0, "lowerBound":J
    if-eqz p4, :cond_0

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    .line 979
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 982
    .end local v6    # "upperBound":J
    :cond_0
    return-wide v6
.end method

.method private checkArray([D)V
    .locals 6
    .param p1, "array"    # [D

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 914
    if-nez p1, :cond_0

    .line 915
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 917
    :cond_0
    array-length v0, p1

    if-ge v0, v4, :cond_1

    .line 918
    new-instance v0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v4, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 921
    :cond_1
    return-void
.end method

.method private createExactH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 21
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .prologue
    .line 750
    move/from16 v0, p3

    int-to-double v6, v0

    mul-double v6, v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v15, v6

    .line 751
    .local v15, "k":I
    mul-int/lit8 v6, v15, 0x2

    add-int/lit8 v16, v6, -0x1

    .line 752
    .local v16, "m":I
    int-to-double v6, v15

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, p1

    sub-double v4, v6, v18

    .line 753
    .local v4, "hDouble":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_0

    .line 754
    new-instance v6, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v6, v7, v8, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v6

    .line 756
    :cond_0
    const/4 v3, 0x0

    .line 758
    .local v3, "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :try_start_0
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    const-wide v6, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .restart local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v16

    filled-new-array {v0, v1}, [I

    move-result-object v6

    const-class v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 771
    .local v2, "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 772
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    .line 773
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-gez v6, :cond_1

    .line 774
    aget-object v6, v2, v13

    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v6, v14

    .line 772
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 759
    .end local v2    # "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v13    # "i":I
    .end local v14    # "j":I
    :catch_0
    move-exception v9

    .line 761
    .local v9, "e1":Lorg/apache/commons/math3/fraction/FractionConversionException;
    :try_start_1
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_1
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 762
    .end local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :catch_1
    move-exception v10

    .line 763
    .local v10, "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    .restart local v3    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 776
    .end local v9    # "e1":Lorg/apache/commons/math3/fraction/FractionConversionException;
    .end local v10    # "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    .restart local v2    # "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    :cond_1
    aget-object v6, v2, v13

    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v6, v14

    goto :goto_3

    .line 771
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 785
    .end local v14    # "j":I
    :cond_3
    move/from16 v0, v16

    new-array v12, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 786
    .local v12, "hPowers":[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v6, 0x0

    aput-object v3, v12, v6

    .line 787
    const/4 v13, 0x1

    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    .line 788
    add-int/lit8 v6, v13, -0x1

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v12, v13

    .line 787
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 794
    :cond_4
    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 795
    aget-object v6, v2, v13

    const/4 v7, 0x0

    aget-object v8, v2, v13

    const/16 v17, 0x0

    aget-object v8, v8, v17

    aget-object v17, v12, v13

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    aput-object v8, v6, v7

    .line 796
    add-int/lit8 v6, v16, -0x1

    aget-object v6, v2, v6

    add-int/lit8 v7, v16, -0x1

    aget-object v7, v2, v7

    aget-object v7, v7, v13

    sub-int v8, v16, v13

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v12, v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v13

    .line 794
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 803
    :cond_5
    sget-object v6, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 804
    add-int/lit8 v6, v16, -0x1

    aget-object v6, v2, v6

    const/4 v7, 0x0

    add-int/lit8 v8, v16, -0x1

    aget-object v8, v2, v8

    const/16 v17, 0x0

    aget-object v8, v8, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->pow(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    aput-object v8, v6, v7

    .line 815
    :cond_6
    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    .line 816
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_7
    add-int/lit8 v6, v13, 0x1

    if-ge v14, v6, :cond_8

    .line 817
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_7

    .line 818
    const/4 v11, 0x2

    .local v11, "g":I
    :goto_8
    sub-int v6, v13, v14

    add-int/lit8 v6, v6, 0x1

    if-gt v11, v6, :cond_7

    .line 819
    aget-object v6, v2, v13

    aget-object v7, v2, v13

    aget-object v7, v7, v14

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v14

    .line 818
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 816
    .end local v11    # "g":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 815
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 824
    .end local v14    # "j":I
    :cond_9
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object v6
.end method

.method private createRoundedH(DI)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 21
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 839
    move/from16 v0, p3

    int-to-double v12, v0

    mul-double v12, v12, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v9, v12

    .line 840
    .local v9, "k":I
    mul-int/lit8 v11, v9, 0x2

    add-int/lit8 v10, v11, -0x1

    .line 841
    .local v10, "m":I
    int-to-double v12, v9

    move/from16 v0, p3

    int-to-double v14, v0

    mul-double v14, v14, p1

    sub-double v4, v12, v14

    .line 842
    .local v4, "h":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v4, v12

    if-ltz v11, :cond_0

    .line 843
    new-instance v11, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v11

    .line 845
    :cond_0
    filled-new-array {v10, v10}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 850
    .local v2, "Hdata":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_3

    .line 851
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 852
    sub-int v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    if-gez v11, :cond_1

    .line 853
    aget-object v11, v2, v7

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v8

    .line 851
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 855
    :cond_1
    aget-object v11, v2, v7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v11, v8

    goto :goto_2

    .line 850
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 864
    .end local v8    # "j":I
    :cond_3
    new-array v6, v10, [D

    .line 865
    .local v6, "hPowers":[D
    const/4 v11, 0x0

    aput-wide v4, v6, v11

    .line 866
    const/4 v7, 0x1

    :goto_3
    if-ge v7, v10, :cond_4

    .line 867
    add-int/lit8 v11, v7, -0x1

    aget-wide v12, v6, v11

    mul-double/2addr v12, v4

    aput-wide v12, v6, v7

    .line 866
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 873
    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_5

    .line 874
    aget-object v11, v2, v7

    const/4 v12, 0x0

    aget-object v13, v2, v7

    const/4 v14, 0x0

    aget-wide v14, v13, v14

    aget-wide v16, v6, v7

    sub-double v14, v14, v16

    aput-wide v14, v11, v12

    .line 875
    add-int/lit8 v11, v10, -0x1

    aget-object v11, v2, v11

    aget-wide v12, v11, v7

    sub-int v14, v10, v7

    add-int/lit8 v14, v14, -0x1

    aget-wide v14, v6, v14

    sub-double/2addr v12, v14

    aput-wide v12, v11, v7

    .line 873
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 882
    :cond_5
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v11

    if-lez v11, :cond_6

    .line 883
    add-int/lit8 v11, v10, -0x1

    aget-object v11, v2, v11

    const/4 v12, 0x0

    aget-wide v14, v11, v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v16

    add-double v14, v14, v16

    aput-wide v14, v11, v12

    .line 894
    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v10, :cond_9

    .line 895
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_6
    add-int/lit8 v11, v7, 0x1

    if-ge v8, v11, :cond_8

    .line 896
    sub-int v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    if-lez v11, :cond_7

    .line 897
    const/4 v3, 0x2

    .local v3, "g":I
    :goto_7
    sub-int v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    if-gt v3, v11, :cond_7

    .line 898
    aget-object v11, v2, v7

    aget-wide v12, v11, v8

    int-to-double v14, v3

    div-double/2addr v12, v14

    aput-wide v12, v11, v8

    .line 897
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 895
    .end local v3    # "g":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 894
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 903
    .end local v8    # "j":I
    :cond_9
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    return-object v11
.end method

.method private exactK(DI)D
    .locals 9
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 555
    int-to-double v6, p3

    mul-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 557
    .local v3, "k":I
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createExactH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 558
    .local v0, "H":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    invoke-interface {v0, p3}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 560
    .local v1, "Hpower":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 562
    .local v4, "pFrac":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 563
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v5, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_0
    const/16 v5, 0x14

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    return-wide v6
.end method

.method static fillBooleanArrayRandomlyWithFixedNumberTrueValues([ZILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 3
    .param p0, "b"    # [Z
    .param p1, "numberOfTrueValues"    # I
    .param p2, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 1045
    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1046
    move v0, p1

    .local v0, "k":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1047
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p2, v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v1

    .line 1048
    .local v1, "r":I
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    .end local v1    # "r":I
    :goto_1
    const/4 v2, 0x0

    aput-boolean v2, p0, v1

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1    # "r":I
    :cond_0
    move v1, v0

    .line 1048
    goto :goto_1

    .line 1050
    .end local v1    # "r":I
    :cond_1
    return-void
.end method

.method private static fixTies([D[D)V
    .locals 14
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .prologue
    .line 1137
    const/4 v1, 0x2

    new-array v1, v1, [[D

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->concatenate([[D)[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->unique([D)[D

    move-result-object v13

    .line 1138
    .local v13, "values":[D
    array-length v1, v13

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 1173
    :cond_0
    return-void

    .line 1143
    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1144
    .local v4, "minDelta":D
    const/4 v1, 0x0

    aget-wide v10, v13, v1

    .line 1145
    .local v10, "prev":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1146
    .local v8, "delta":D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    array-length v1, v13

    if-ge v7, v1, :cond_3

    .line 1147
    aget-wide v2, v13, v7

    sub-double v8, v10, v2

    .line 1148
    cmpg-double v1, v8, v4

    if-gez v1, :cond_2

    .line 1149
    move-wide v4, v8

    .line 1151
    :cond_2
    aget-wide v10, v13, v7

    .line 1146
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1153
    :cond_3
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v2

    .line 1157
    new-instance v0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;

    new-instance v1, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>(I)V

    neg-double v2, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 1162
    .local v0, "dist":Lorg/apache/commons/math3/distribution/RealDistribution;
    const/4 v6, 0x0

    .line 1163
    .local v6, "ct":I
    const/4 v12, 0x1

    .line 1165
    .local v12, "ties":Z
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->jitter([DLorg/apache/commons/math3/distribution/RealDistribution;)V

    .line 1166
    invoke-static {p1, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->jitter([DLorg/apache/commons/math3/distribution/RealDistribution;)V

    .line 1167
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->hasTies([D[D)Z

    move-result v12

    .line 1168
    add-int/lit8 v6, v6, 0x1

    .line 1169
    if-eqz v12, :cond_5

    const/16 v1, 0x3e8

    if-lt v6, v1, :cond_4

    .line 1170
    :cond_5
    if-eqz v12, :cond_0

    .line 1171
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1
.end method

.method private static hasTies([D[D)Z
    .locals 6
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .prologue
    const/4 v2, 0x1

    .line 1184
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1185
    .local v1, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Double;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 1186
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1195
    :cond_0
    :goto_1
    return v2

    .line 1185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 1191
    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1195
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private integralKolmogorovSmirnovStatistic([D[D)J
    .locals 18
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .prologue
    .line 327
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 330
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v10

    .line 331
    .local v10, "sx":[D
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v11

    .line 332
    .local v11, "sy":[D
    invoke-static {v10}, Ljava/util/Arrays;->sort([D)V

    .line 333
    invoke-static {v11}, Ljava/util/Arrays;->sort([D)V

    .line 334
    array-length v5, v10

    .line 335
    .local v5, "n":I
    array-length v4, v11

    .line 337
    .local v4, "m":I
    const/4 v6, 0x0

    .line 338
    .local v6, "rankX":I
    const/4 v7, 0x0

    .line 339
    .local v7, "rankY":I
    const-wide/16 v2, 0x0

    .line 342
    .local v2, "curD":J
    const-wide/16 v8, 0x0

    .line 344
    .local v8, "supD":J
    :cond_0
    aget-wide v14, v10, v6

    aget-wide v16, v11, v7

    invoke-static/range {v14 .. v17}, Ljava/lang/Double;->compare(DD)I

    move-result v14

    if-gtz v14, :cond_1

    aget-wide v12, v10, v6

    .line 345
    .local v12, "z":D
    :goto_0
    if-ge v6, v5, :cond_2

    aget-wide v14, v10, v6

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v14

    if-nez v14, :cond_2

    .line 346
    add-int/lit8 v6, v6, 0x1

    .line 347
    int-to-long v14, v4

    add-long/2addr v2, v14

    goto :goto_0

    .line 344
    .end local v12    # "z":D
    :cond_1
    aget-wide v12, v11, v7

    goto :goto_0

    .line 349
    .restart local v12    # "z":D
    :cond_2
    :goto_1
    if-ge v7, v4, :cond_3

    aget-wide v14, v11, v7

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v14

    if-nez v14, :cond_3

    .line 350
    add-int/lit8 v7, v7, 0x1

    .line 351
    int-to-long v14, v5

    sub-long/2addr v2, v14

    goto :goto_1

    .line 353
    :cond_3
    cmp-long v14, v2, v8

    if-lez v14, :cond_6

    .line 354
    move-wide v8, v2

    .line 359
    :cond_4
    :goto_2
    if-ge v6, v5, :cond_5

    if-lt v7, v4, :cond_0

    .line 360
    :cond_5
    return-wide v8

    .line 356
    :cond_6
    neg-long v14, v2

    cmp-long v14, v14, v8

    if-lez v14, :cond_4

    .line 357
    neg-long v8, v2

    goto :goto_2
.end method

.method private integralMonteCarloP(JIII)D
    .locals 17
    .param p1, "d"    # J
    .param p3, "n"    # I
    .param p4, "m"    # I
    .param p5, "iterations"    # I

    .prologue
    .line 1094
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v8

    .line 1095
    .local v8, "nn":I
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1096
    .local v7, "mm":I
    add-int v9, v8, v7

    .line 1098
    .local v9, "sum":I
    const/4 v10, 0x0

    .line 1099
    .local v10, "tail":I
    new-array v2, v9, [Z

    .line 1100
    .local v2, "b":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v0, p5

    if-ge v3, v0, :cond_3

    .line 1101
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-static {v2, v8, v11}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->fillBooleanArrayRandomlyWithFixedNumberTrueValues([ZILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1102
    const-wide/16 v4, 0x0

    .line 1103
    .local v4, "curD":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v11, v2

    if-ge v6, v11, :cond_0

    .line 1104
    aget-boolean v11, v2, v6

    if-eqz v11, :cond_1

    .line 1105
    int-to-long v12, v7

    add-long/2addr v4, v12

    .line 1106
    cmp-long v11, v4, p1

    if-ltz v11, :cond_2

    .line 1107
    add-int/lit8 v10, v10, 0x1

    .line 1100
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    int-to-long v12, v8

    sub-long/2addr v4, v12

    .line 1112
    move-wide/from16 v0, p1

    neg-long v12, v0

    cmp-long v11, v4, v12

    if-gtz v11, :cond_2

    .line 1113
    add-int/lit8 v10, v10, 0x1

    .line 1114
    goto :goto_2

    .line 1103
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1119
    .end local v4    # "curD":J
    .end local v6    # "j":I
    :cond_3
    int-to-double v12, v10

    move/from16 v0, p5

    int-to-double v14, v0

    div-double/2addr v12, v14

    return-wide v12
.end method

.method private static jitter([DLorg/apache/commons/math3/distribution/RealDistribution;)V
    .locals 6
    .param p0, "data"    # [D
    .param p1, "dist"    # Lorg/apache/commons/math3/distribution/RealDistribution;

    .prologue
    .line 1209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1210
    aget-wide v2, p0, v0

    invoke-interface {p1}, Lorg/apache/commons/math3/distribution/RealDistribution;->sample()D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, p0, v0

    .line 1209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    :cond_0
    return-void
.end method

.method private static n(IIIIJZ)D
    .locals 12
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "m"    # I
    .param p3, "n"    # I
    .param p4, "cnm"    # J
    .param p6, "strict"    # Z

    .prologue
    .line 1256
    new-array v8, p3, [D

    .line 1257
    .local v8, "lag":[D
    const-wide/16 v10, 0x0

    .line 1258
    .local v10, "last":D
    const/4 v0, 0x0

    .local v0, "k":I
    move v7, v0

    .end local v0    # "k":I
    .local v7, "k":I
    :goto_0
    if-ge v7, p3, :cond_0

    .line 1259
    const/4 v0, 0x0

    add-int/lit8 v1, v7, 0x1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c(IIIIJZ)I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v8, v7

    .line 1258
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "k":I
    .restart local v0    # "k":I
    move v7, v0

    .end local v0    # "k":I
    .restart local v7    # "k":I
    goto :goto_0

    .line 1261
    :cond_0
    const/4 v0, 0x1

    .end local v7    # "k":I
    .restart local v0    # "k":I
    :goto_1
    if-gt v0, p0, :cond_2

    .line 1262
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c(IIIIJZ)I

    move-result v2

    int-to-double v10, v2

    .line 1263
    const/4 v1, 0x1

    .local v1, "l":I
    :goto_2
    if-gt v1, p1, :cond_1

    .line 1264
    add-int/lit8 v9, v1, -0x1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c(IIIIJZ)I

    move-result v2

    int-to-double v2, v2

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v8, v4

    add-double/2addr v4, v10

    mul-double/2addr v2, v4

    aput-wide v2, v8, v9

    .line 1265
    add-int/lit8 v2, v1, -0x1

    aget-wide v10, v8, v2

    .line 1263
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1268
    .end local v1    # "l":I
    :cond_2
    return-wide v10
.end method

.method private roundedK(DI)D
    .locals 11
    .param p1, "d"    # D
    .param p3, "n"    # I

    .prologue
    .line 583
    int-to-double v6, p3

    mul-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 584
    .local v3, "k":I
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createRoundedH(DI)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 585
    .local v0, "H":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0, p3}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 587
    .local v1, "Hpower":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 588
    .local v4, "pFrac":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 589
    int-to-double v6, v2

    int-to-double v8, p3

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    :cond_0
    return-wide v4
.end method


# virtual methods
.method public approximateP(DII)D
    .locals 17
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I

    .prologue
    .line 1026
    move/from16 v0, p4

    int-to-double v10, v0

    .line 1027
    .local v10, "dm":D
    move/from16 v0, p3

    int-to-double v12, v0

    .line 1028
    .local v12, "dn":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v2, v10, v12

    add-double v4, v10, v12

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v4, p1, v2

    const-wide v6, 0x3bc79ca10c924223L    # 1.0E-20

    const v8, 0x186a0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->ksSum(DDI)D

    move-result-wide v2

    sub-double v2, v14, v2

    return-wide v2
.end method

.method public bootstrap([D[DI)D
    .locals 2
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "iterations"    # I

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->bootstrap([D[DIZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public bootstrap([D[DIZ)D
    .locals 20
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "iterations"    # I
    .param p4, "strict"    # Z

    .prologue
    .line 417
    move-object/from16 v0, p1

    array-length v13, v0

    .line 418
    .local v13, "xLength":I
    move-object/from16 v0, p2

    array-length v14, v0

    .line 419
    .local v14, "yLength":I
    add-int v15, v13, v14

    new-array v2, v15, [D

    .line 420
    .local v2, "combined":[D
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v2, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15, v2, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    new-instance v7, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-direct {v7, v15, v2}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D)V

    .line 423
    .local v7, "dist":Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->integralKolmogorovSmirnovStatistic([D[D)J

    move-result-wide v8

    .line 424
    .local v8, "d":J
    const/4 v11, 0x0

    .line 425
    .local v11, "greaterCount":I
    const/4 v10, 0x0

    .line 429
    .local v10, "equalCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v12, v0, :cond_2

    .line 430
    invoke-virtual {v7, v13}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->sample(I)[D

    move-result-object v3

    .line 431
    .local v3, "curX":[D
    invoke-virtual {v7, v14}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->sample(I)[D

    move-result-object v6

    .line 432
    .local v6, "curY":[D
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->integralKolmogorovSmirnovStatistic([D[D)J

    move-result-wide v4

    .line 433
    .local v4, "curD":J
    cmp-long v15, v4, v8

    if-lez v15, :cond_1

    .line 434
    add-int/lit8 v11, v11, 0x1

    .line 429
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 435
    :cond_1
    cmp-long v15, v4, v8

    if-nez v15, :cond_0

    .line 436
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 439
    .end local v3    # "curX":[D
    .end local v4    # "curD":J
    .end local v6    # "curY":[D
    :cond_2
    if-eqz p4, :cond_3

    int-to-double v0, v11

    move-wide/from16 v16, v0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    :goto_2
    return-wide v16

    :cond_3
    add-int v15, v11, v10

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    goto :goto_2
.end method

.method public cdf(DI)D
    .locals 3
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public cdf(DIZ)D
    .locals 21
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "exact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 513
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v6, v12, v14

    .line 514
    .local v6, "ninv":D
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v8, v12, v6

    .line 516
    .local v8, "ninvhalf":D
    cmpg-double v5, p1, v8

    if-gtz v5, :cond_1

    .line 517
    const-wide/16 v10, 0x0

    .line 537
    :cond_0
    :goto_0
    return-wide v10

    .line 518
    :cond_1
    cmpg-double v5, v8, p1

    if-gez v5, :cond_2

    cmpg-double v5, p1, v6

    if-gtz v5, :cond_2

    .line 519
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 520
    .local v10, "res":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, p1

    sub-double v2, v12, v6

    .line 522
    .local v2, "f":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    move/from16 v0, p3

    if-gt v4, v0, :cond_0

    .line 523
    int-to-double v12, v4

    mul-double/2addr v12, v2

    mul-double/2addr v10, v12

    .line 522
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 526
    .end local v2    # "f":D
    .end local v4    # "i":I
    .end local v10    # "res":D
    :cond_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v6

    cmpg-double v5, v12, p1

    if-gtz v5, :cond_3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, p1, v12

    if-gez v5, :cond_3

    .line 527
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, p1

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v10, v12, v14

    goto :goto_0

    .line 528
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v12, p1

    if-gtz v5, :cond_4

    .line 529
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 531
    :cond_4
    if-eqz p4, :cond_5

    .line 532
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactK(DI)D

    move-result-wide v10

    goto :goto_0

    .line 534
    :cond_5
    const/16 v5, 0x8c

    move/from16 v0, p3

    if-gt v0, v5, :cond_6

    .line 535
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->roundedK(DI)D

    move-result-wide v10

    goto :goto_0

    .line 537
    :cond_6
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->pelzGood(DI)D

    move-result-wide v10

    goto :goto_0
.end method

.method public cdfExact(DI)D
    .locals 3
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public exactP(DIIZ)D
    .locals 17
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I
    .param p5, "strict"    # Z

    .prologue
    .line 1003
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, p1

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->calculateIntegralD(DIIZ)J

    move-result-wide v10

    move/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p3

    move/from16 v12, p5

    invoke-static/range {v6 .. v12}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->n(IIIIJZ)D

    move-result-wide v6

    add-int v8, p3, p4

    move/from16 v0, p4

    invoke-static {v8, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double v6, v14, v6

    return-wide v6
.end method

.method public kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 18
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D

    .prologue
    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 203
    move-object/from16 v0, p2

    array-length v8, v0

    .line 204
    .local v8, "n":I
    int-to-double v10, v8

    .line 205
    .local v10, "nd":D
    new-array v6, v8, [D

    .line 206
    .local v6, "dataCopy":[D
    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v9, v6, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    invoke-static {v6}, Ljava/util/Arrays;->sort([D)V

    .line 208
    const-wide/16 v4, 0x0

    .line 209
    .local v4, "d":D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v8, :cond_1

    .line 210
    add-int/lit8 v9, v7, -0x1

    aget-wide v14, v6, v9

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v12

    .line 211
    .local v12, "yi":D
    add-int/lit8 v9, v7, -0x1

    int-to-double v14, v9

    div-double/2addr v14, v10

    sub-double v14, v12, v14

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v16, v16, v10

    sub-double v16, v16, v12

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 212
    .local v2, "currD":D
    cmpl-double v9, v2, v4

    if-lez v9, :cond_0

    .line 213
    move-wide v4, v2

    .line 209
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "currD":D
    .end local v12    # "yi":D
    :cond_1
    return-wide v4
.end method

.method public kolmogorovSmirnovStatistic([D[D)D
    .locals 6
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->integralKolmogorovSmirnovStatistic([D[D)J

    move-result-wide v0

    long-to-double v0, v0

    array-length v2, p1

    int-to-long v2, v2

    array-length v4, p2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 2
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D
    .locals 5
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D
    .param p3, "exact"    # Z

    .prologue
    .line 186
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v2

    array-length v4, p2

    invoke-virtual {p0, v2, v3, v4, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public kolmogorovSmirnovTest([D[D)D
    .locals 2
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .prologue
    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest([D[DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public kolmogorovSmirnovTest([D[DZ)D
    .locals 12
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "strict"    # Z

    .prologue
    const-wide/16 v10, 0x2710

    .line 257
    array-length v1, p1

    int-to-long v2, v1

    array-length v1, p2

    int-to-long v4, v1

    mul-long v8, v2, v4

    .line 258
    .local v8, "lengthProduct":J
    const/4 v0, 0x0

    .line 259
    .local v0, "xa":[D
    const/4 v7, 0x0

    .line 260
    .local v7, "ya":[D
    cmp-long v1, v8, v10

    if-gez v1, :cond_0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->hasTies([D[D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    .line 262
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v7

    .line 263
    invoke-static {v0, v7}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->fixTies([D[D)V

    .line 268
    :goto_0
    cmp-long v1, v8, v10

    if-gez v1, :cond_1

    .line 269
    invoke-virtual {p0, v0, v7}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v2

    array-length v4, p1

    array-length v5, p2

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactP(DIIZ)D

    move-result-wide v2

    .line 271
    :goto_1
    return-wide v2

    .line 265
    :cond_0
    move-object v0, p1

    .line 266
    move-object v7, p2

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v2

    array-length v1, p1

    array-length v4, p2

    invoke-virtual {p0, v2, v3, v1, v4}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->approximateP(DII)D

    move-result-wide v2

    goto :goto_1
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DD)Z
    .locals 7
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D
    .param p3, "alpha"    # D

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 392
    const-wide/16 v2, 0x0

    cmpg-double v1, p3, v2

    if-lez v1, :cond_0

    cmpl-double v1, p3, v4

    if-lez v1, :cond_1

    .line 393
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 395
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v2

    cmpg-double v1, v2, p3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public ksSum(DDI)D
    .locals 17
    .param p1, "t"    # D
    .param p3, "tolerance"    # D
    .param p5, "maxIterations"    # I

    .prologue
    .line 936
    const-wide/16 v12, 0x0

    cmpl-double v9, p1, v12

    if-nez v9, :cond_0

    .line 937
    const-wide/16 v12, 0x0

    .line 957
    :goto_0
    return-wide v12

    .line 943
    :cond_0
    const-wide/high16 v12, -0x4000000000000000L    # -2.0

    mul-double v12, v12, p1

    mul-double v10, v12, p1

    .line 944
    .local v10, "x":D
    const/4 v8, -0x1

    .line 945
    .local v8, "sign":I
    const-wide/16 v4, 0x1

    .line 946
    .local v4, "i":J
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 947
    .local v6, "partialSum":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 948
    .local v2, "delta":D
    :goto_1
    cmpl-double v9, v2, p3

    if-lez v9, :cond_1

    move/from16 v0, p5

    int-to-long v12, v0

    cmp-long v9, v4, v12

    if-gez v9, :cond_1

    .line 949
    long-to-double v12, v4

    mul-double/2addr v12, v10

    long-to-double v14, v4

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    .line 950
    int-to-double v12, v8

    mul-double/2addr v12, v2

    add-double/2addr v6, v12

    .line 951
    mul-int/lit8 v8, v8, -0x1

    .line 952
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    goto :goto_1

    .line 954
    :cond_1
    move/from16 v0, p5

    int-to-long v12, v0

    cmp-long v9, v4, v12

    if-nez v9, :cond_2

    .line 955
    new-instance v9, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v9

    .line 957
    :cond_2
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v6

    goto :goto_0
.end method

.method public monteCarloP(DIIZI)D
    .locals 7
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I
    .param p5, "strict"    # Z
    .param p6, "iterations"    # I

    .prologue
    .line 1073
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->calculateIntegralD(DIIZ)J

    move-result-wide v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->integralMonteCarloP(JIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public pelzGood(DI)D
    .locals 55
    .param p1, "d"    # D
    .param p3, "n"    # I

    .prologue
    .line 605
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    .line 606
    .local v22, "sqrtN":D
    mul-double v30, p1, v22

    .line 607
    .local v30, "z":D
    mul-double v46, p1, p1

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v48, v0

    mul-double v32, v46, v48

    .line 608
    .local v32, "z2":D
    mul-double v36, v32, v32

    .line 609
    .local v36, "z4":D
    mul-double v40, v36, v32

    .line 610
    .local v40, "z6":D
    mul-double v44, v36, v36

    .line 613
    .local v44, "z8":D
    const-wide/16 v18, 0x0

    .line 616
    .local v18, "ret":D
    const-wide/16 v24, 0x0

    .line 617
    .local v24, "sum":D
    const-wide/16 v2, 0x0

    .line 618
    .local v2, "increment":D
    const-wide/16 v6, 0x0

    .line 619
    .local v6, "kTerm":D
    const-wide v46, 0x4023bd3cc9be45deL    # 9.869604401089358

    const-wide/high16 v48, 0x4020000000000000L    # 8.0

    mul-double v48, v48, v32

    div-double v34, v46, v48

    .line 620
    .local v34, "z2Term":D
    const/4 v4, 0x1

    .line 621
    .local v4, "k":I
    :goto_0
    const v5, 0x186a0

    if-ge v4, v5, :cond_0

    .line 622
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, -0x1

    int-to-double v6, v5

    .line 623
    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v46, v0

    mul-double v46, v46, v6

    mul-double v46, v46, v6

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    .line 624
    add-double v24, v24, v2

    .line 625
    const-wide v46, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double v46, v46, v24

    cmpg-double v5, v2, v46

    if-gtz v5, :cond_1

    .line 629
    :cond_0
    const v5, 0x186a0

    if-ne v4, v5, :cond_2

    .line 630
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 621
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 632
    :cond_2
    const-wide v46, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v46

    mul-double v46, v46, v24

    div-double v18, v46, v30

    .line 637
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    mul-double v28, v46, v32

    .line 638
    .local v28, "twoZ2":D
    const-wide/16 v24, 0x0

    .line 639
    const-wide/16 v6, 0x0

    .line 640
    const-wide/16 v8, 0x0

    .line 641
    .local v8, "kTerm2":D
    const/4 v4, 0x0

    :goto_1
    const v5, 0x186a0

    if-ge v4, v5, :cond_3

    .line 642
    int-to-double v0, v4

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    add-double v6, v46, v48

    .line 643
    mul-double v8, v6, v6

    .line 644
    const-wide v46, 0x4023bd3cc9be45deL    # 9.869604401089358

    mul-double v46, v46, v8

    sub-double v46, v46, v32

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 645
    add-double v24, v24, v2

    .line 646
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_4

    .line 650
    :cond_3
    const v5, 0x186a0

    if-ne v4, v5, :cond_5

    .line 651
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 641
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 653
    :cond_5
    const-wide v46, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    .line 655
    .local v20, "sqrtHalfPi":D
    mul-double v46, v24, v20

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, v36

    mul-double v48, v48, v22

    div-double v46, v46, v48

    add-double v18, v18, v46

    .line 659
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    mul-double v38, v46, v36

    .line 660
    .local v38, "z4Term":D
    const-wide/high16 v46, 0x4018000000000000L    # 6.0

    mul-double v42, v46, v40

    .line 661
    .local v42, "z6Term":D
    const-wide/high16 v46, 0x4014000000000000L    # 5.0

    mul-double v34, v46, v32

    .line 662
    const-wide v14, 0x40585a2e8c290825L    # 97.40909103400243

    .line 663
    .local v14, "pi4":D
    const-wide/16 v24, 0x0

    .line 664
    const-wide/16 v6, 0x0

    .line 665
    const-wide/16 v8, 0x0

    .line 666
    const/4 v4, 0x0

    :goto_2
    const v5, 0x186a0

    if-ge v4, v5, :cond_6

    .line 667
    int-to-double v0, v4

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    add-double v6, v46, v48

    .line 668
    mul-double v8, v6, v6

    .line 669
    add-double v46, v42, v38

    const-wide v48, 0x4023bd3cc9be45deL    # 9.869604401089358

    sub-double v50, v38, v34

    mul-double v48, v48, v50

    mul-double v48, v48, v8

    add-double v46, v46, v48

    const-wide v48, 0x40585a2e8c290825L    # 97.40909103400243

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v50, v28

    mul-double v48, v48, v50

    mul-double v48, v48, v8

    mul-double v48, v48, v8

    add-double v46, v46, v48

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 671
    add-double v24, v24, v2

    .line 672
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_7

    .line 676
    :cond_6
    const v5, 0x186a0

    if-ne v4, v5, :cond_8

    .line 677
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 666
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 679
    :cond_8
    const-wide/16 v26, 0x0

    .line 680
    .local v26, "sum2":D
    const-wide/16 v8, 0x0

    .line 681
    const/4 v4, 0x1

    :goto_3
    const v5, 0x186a0

    if-ge v4, v5, :cond_9

    .line 682
    mul-int v5, v4, v4

    int-to-double v8, v5

    .line 683
    const-wide v46, 0x4023bd3cc9be45deL    # 9.869604401089358

    mul-double v46, v46, v8

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 684
    add-double v26, v26, v2

    .line 685
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_a

    .line 689
    :cond_9
    const v5, 0x186a0

    if-ne v4, v5, :cond_b

    .line 690
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 681
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 693
    :cond_b
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v46, v0

    div-double v46, v20, v46

    const-wide/high16 v48, 0x4042000000000000L    # 36.0

    mul-double v48, v48, v32

    mul-double v48, v48, v32

    mul-double v48, v48, v32

    mul-double v48, v48, v30

    div-double v48, v24, v48

    const-wide/high16 v50, 0x4032000000000000L    # 18.0

    mul-double v50, v50, v32

    mul-double v50, v50, v30

    div-double v50, v26, v50

    sub-double v48, v48, v50

    mul-double v46, v46, v48

    add-double v18, v18, v46

    .line 697
    const-wide v16, 0x408e0b1d11856df6L    # 961.3891935753043

    .line 698
    .local v16, "pi6":D
    const-wide/16 v24, 0x0

    .line 699
    const-wide/16 v10, 0x0

    .line 700
    .local v10, "kTerm4":D
    const-wide/16 v12, 0x0

    .line 701
    .local v12, "kTerm6":D
    const/4 v4, 0x0

    :goto_4
    const v5, 0x186a0

    if-ge v4, v5, :cond_c

    .line 702
    int-to-double v0, v4

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    add-double v6, v46, v48

    .line 703
    mul-double v8, v6, v6

    .line 704
    mul-double v10, v8, v8

    .line 705
    mul-double v12, v10, v8

    .line 706
    const-wide v46, 0x408e0b1d11856df6L    # 961.3891935753043

    mul-double v46, v46, v12

    const-wide/high16 v48, 0x4014000000000000L    # 5.0

    const-wide/high16 v50, 0x403e000000000000L    # 30.0

    mul-double v50, v50, v32

    sub-double v48, v48, v50

    mul-double v46, v46, v48

    const-wide v48, 0x40585a2e8c290825L    # 97.40909103400243

    mul-double v48, v48, v10

    const-wide/high16 v50, -0x3fb2000000000000L    # -60.0

    mul-double v50, v50, v32

    const-wide v52, 0x406a800000000000L    # 212.0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    mul-double v48, v48, v50

    add-double v46, v46, v48

    const-wide v48, 0x4023bd3cc9be45deL    # 9.869604401089358

    mul-double v48, v48, v8

    const-wide v50, 0x4060e00000000000L    # 135.0

    mul-double v50, v50, v36

    const-wide/high16 v52, 0x4058000000000000L    # 96.0

    mul-double v52, v52, v40

    sub-double v50, v50, v52

    mul-double v48, v48, v50

    add-double v46, v46, v48

    const-wide/high16 v48, 0x403e000000000000L    # 30.0

    mul-double v48, v48, v40

    sub-double v46, v46, v48

    const-wide v48, 0x4056800000000000L    # 90.0

    mul-double v48, v48, v44

    sub-double v46, v46, v48

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 709
    add-double v24, v24, v2

    .line 710
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_d

    .line 714
    :cond_c
    const v5, 0x186a0

    if-ne v4, v5, :cond_e

    .line 715
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 701
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 717
    :cond_e
    const-wide/16 v26, 0x0

    .line 718
    const/4 v4, 0x1

    :goto_5
    const v5, 0x186a0

    if-ge v4, v5, :cond_f

    .line 719
    mul-int v5, v4, v4

    int-to-double v8, v5

    .line 720
    mul-double v10, v8, v8

    .line 721
    const-wide v46, -0x3fa7a5d173d6f7dbL    # -97.40909103400243

    mul-double v46, v46, v10

    const-wide v48, 0x403d9bdb2e9d68cdL    # 29.608813203268074

    mul-double v48, v48, v8

    mul-double v48, v48, v32

    add-double v46, v46, v48

    const-wide v48, -0x3fdc42c33641ba22L    # -9.869604401089358

    mul-double v48, v48, v8

    div-double v48, v48, v28

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v48

    mul-double v2, v46, v48

    .line 723
    add-double v26, v26, v2

    .line 724
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    const-wide v48, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    cmpg-double v5, v46, v48

    if-gez v5, :cond_10

    .line 728
    :cond_f
    const v5, 0x186a0

    if-ne v4, v5, :cond_11

    .line 729
    new-instance v5, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v46, 0x186a0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v5

    .line 718
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 731
    :cond_11
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v46, v46, v22

    div-double v46, v20, v46

    const-wide v48, 0x40a9500000000000L    # 3240.0

    mul-double v48, v48, v40

    mul-double v48, v48, v36

    div-double v48, v24, v48

    const-wide/high16 v50, 0x405b000000000000L    # 108.0

    mul-double v50, v50, v40

    div-double v50, v26, v50

    add-double v48, v48, v50

    mul-double v46, v46, v48

    add-double v46, v46, v18

    return-wide v46
.end method
