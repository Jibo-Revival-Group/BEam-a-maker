.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;,
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
    }
.end annotation


# static fields
.field private static final CHEBYSHEV_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final HERMITE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final JACOBI_COEFFICIENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LAGUERRE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGENDRE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    .line 55
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    .line 62
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    .line 69
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    .line 76
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 6
    .param p0, "degree"    # I
    .param p2, "generator"    # Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;",
            ")",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "coefficients":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    monitor-enter p1

    .line 361
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 362
    .local v2, "maxDegree":I
    if-le p0, v2, :cond_0

    .line 363
    invoke-static {p0, v2, p2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->computeUpToDegree(IILorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;Ljava/util/List;)V

    .line 365
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    add-int/lit8 v4, p0, 0x1

    mul-int/2addr v4, p0

    div-int/lit8 v3, v4, 0x2

    .line 377
    .local v3, "start":I
    add-int/lit8 v4, p0, 0x1

    new-array v0, v4, [D

    .line 378
    .local v0, "a":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, p0, :cond_1

    .line 379
    add-int v4, v3, v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v4}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "a":[D
    .end local v1    # "i":I
    .end local v2    # "maxDegree":I
    .end local v3    # "start":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 383
    .restart local v0    # "a":[D
    .restart local v1    # "i":I
    .restart local v2    # "maxDegree":I
    .restart local v3    # "start":I
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v4
.end method

.method private static computeUpToDegree(IILorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;Ljava/util/List;)V
    .locals 10
    .param p0, "degree"    # I
    .param p1, "maxDegree"    # I
    .param p2, "generator"    # Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p3, "coefficients":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    add-int/lit8 v8, p1, -0x1

    mul-int/2addr v8, p1

    div-int/lit8 v6, v8, 0x2

    .line 398
    .local v6, "startK":I
    move v5, p1

    .local v5, "k":I
    :goto_0
    if-ge v5, p0, :cond_1

    .line 401
    move v7, v6

    .line 402
    .local v7, "startKm1":I
    add-int/2addr v6, v5

    .line 405
    invoke-interface {p2, v5}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;->generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    .line 407
    .local v0, "ai":[Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 408
    .local v1, "ck":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 411
    .local v3, "ckm1":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v3, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 415
    move-object v2, v1

    .line 416
    .local v2, "ckPrev":Lorg/apache/commons/math3/fraction/BigFraction;
    add-int v8, v6, v4

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ck":Lorg/apache/commons/math3/fraction/BigFraction;
    check-cast v1, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 417
    .restart local v1    # "ck":Lorg/apache/commons/math3/fraction/BigFraction;
    add-int v8, v7, v4

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ckm1":Lorg/apache/commons/math3/fraction/BigFraction;
    check-cast v3, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 418
    .restart local v3    # "ckm1":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v3, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 422
    .end local v2    # "ckPrev":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_0
    move-object v2, v1

    .line 423
    .restart local v2    # "ckPrev":Lorg/apache/commons/math3/fraction/BigFraction;
    add-int v8, v6, v5

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ck":Lorg/apache/commons/math3/fraction/BigFraction;
    check-cast v1, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 424
    .restart local v1    # "ck":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 431
    .end local v0    # "ai":[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v1    # "ck":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v2    # "ckPrev":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v3    # "ckm1":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v4    # "i":I
    .end local v7    # "startKm1":I
    :cond_1
    return-void
.end method

.method public static createChebyshevPolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2
    .param p0, "degree"    # I

    .prologue
    .line 106
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public static createHermitePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2
    .param p0, "degree"    # I

    .prologue
    .line 133
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$2;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$2;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public static createJacobiPolynomial(III)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 5
    .param p0, "degree"    # I
    .param p1, "v"    # I
    .param p2, "w"    # I

    .prologue
    const/4 v4, 0x2

    .line 222
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;-><init>(II)V

    .line 224
    .local v0, "key":Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
    sget-object v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    sget-object v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    sub-int v3, p1, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int/lit8 v3, p1, 0x2

    add-int/2addr v3, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    :cond_0
    sget-object v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;

    invoke-direct {v3, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;-><init>(II)V

    invoke-static {p0, v2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v2

    return-object v2
.end method

.method public static createLaguerrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2
    .param p0, "degree"    # I

    .prologue
    .line 160
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$3;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$3;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public static createLegendrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2
    .param p0, "degree"    # I

    .prologue
    .line 188
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$4;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$4;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public static shift([DD)[D
    .locals 17
    .param p0, "coefficients"    # [D
    .param p1, "shift"    # D

    .prologue
    .line 322
    move-object/from16 v0, p0

    array-length v4, v0

    .line 323
    .local v4, "dp1":I
    new-array v7, v4, [D

    .line 326
    .local v7, "newCoefficients":[D
    filled-new-array {v4, v4}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 327
    .local v2, "coeff":[[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 328
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-gt v6, v5, :cond_0

    .line 329
    aget-object v8, v2, v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v10

    long-to-int v9, v10

    aput v9, v8, v6

    .line 328
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 327
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 334
    .end local v6    # "j":I
    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    .line 335
    const/4 v8, 0x0

    aget-wide v10, v7, v8

    aget-wide v12, p0, v5

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v7, v8

    .line 334
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 339
    :cond_2
    add-int/lit8 v3, v4, -0x1

    .line 340
    .local v3, "d":I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_4

    .line 341
    move v6, v5

    .restart local v6    # "j":I
    :goto_4
    if-ge v6, v3, :cond_3

    .line 342
    add-int/lit8 v8, v5, 0x1

    aget-wide v10, v7, v8

    add-int/lit8 v9, v6, 0x1

    aget-object v9, v2, v9

    sub-int v12, v6, v5

    aget v9, v9, v12

    int-to-double v12, v9

    add-int/lit8 v9, v6, 0x1

    aget-wide v14, p0, v9

    mul-double/2addr v12, v14

    sub-int v9, v6, v5

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v9}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v7, v8

    .line 341
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 340
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 347
    .end local v6    # "j":I
    :cond_4
    return-object v7
.end method
