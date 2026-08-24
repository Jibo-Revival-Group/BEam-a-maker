.class public Lorg/apache/commons/math3/random/EmpiricalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/random/EmpiricalDistribution$1;,
        Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;,
        Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;,
        Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_BIN_COUNT:I = 0x3e8

.field private static final FILE_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final serialVersionUID:J = 0x4f81c2041f1ef85eL


# instance fields
.field private final binCount:I

.field private final binStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private delta:D

.field private loaded:Z

.field private max:D

.field private min:D

.field protected final randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

.field private sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

.field private upperBounds:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(I)V

    .line 146
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "binCount"    # I

    .prologue
    .line 155
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    .line 156
    return-void
.end method

.method private constructor <init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V
    .locals 3
    .param p1, "binCount"    # I
    .param p2, "randomData"    # Lorg/apache/commons/math3/random/RandomDataGenerator;

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 121
    iput-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 124
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    .line 127
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    .line 139
    iput-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    .line 220
    if-gtz p1, :cond_0

    .line 221
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 223
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    .line 224
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    .line 226
    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomDataImpl;)V
    .locals 1
    .param p1, "binCount"    # I
    .param p2, "randomData"    # Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->getDelegate()Lorg/apache/commons/math3/random/RandomDataGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    .line 194
    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "binCount"    # I
    .param p2, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 168
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomDataImpl;)V
    .locals 1
    .param p1, "randomData"    # Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    const/16 v0, 0x3e8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataImpl;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 179
    const/16 v0, 0x3e8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 180
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/random/EmpiricalDistribution;
    .param p1, "x1"    # D

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/random/EmpiricalDistribution;
    .param p1, "x1"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object p1
.end method

.method private cumBinP(I)D
    .locals 2
    .param p1, "binIndex"    # I

    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method private fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;)V
    .locals 10
    .param p1, "da"    # Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 436
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    .line 437
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    .line 438
    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    iget-wide v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    sub-double/2addr v2, v4

    iget v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    .line 441
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 444
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    if-ge v0, v2, :cond_1

    .line 445
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 446
    .local v1, "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->computeBinStats()V

    .line 453
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    .line 454
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    aput-wide v4, v3, v8

    .line 456
    const/4 v0, 0x1

    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 457
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v2, v4

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v6

    long-to-double v6, v6

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v3, v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    iget v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v3, v3, -0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 461
    return-void
.end method

.method private findBin(D)I
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 470
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    return v0
.end method

.method private k(D)Lorg/apache/commons/math3/distribution/RealDistribution;
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 822
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result v0

    .line 823
    .local v0, "binIndex":I
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v1

    return-object v1
.end method

.method private kB(I)D
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 809
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v0

    .line 810
    .local v0, "binBounds":[D
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v1

    .line 811
    .local v1, "kernel":Lorg/apache/commons/math3/distribution/RealDistribution;
    if-nez p1, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(DD)D

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget-wide v2, v0, v2

    aget-wide v4, v0, p1

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(DD)D

    move-result-wide v2

    goto :goto_0
.end method

.method private pB(I)D
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 786
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    add-int/lit8 v3, p1, -0x1

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method private pBminus(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 797
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    add-int/lit8 v1, p1, -0x1

    aget-wide v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 21
    .param p1, "x"    # D

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    move-wide/from16 v16, v0

    cmpg-double v7, p1, v16

    if-gez v7, :cond_1

    .line 638
    const-wide/16 v12, 0x0

    .line 658
    :cond_0
    :goto_0
    return-wide v12

    .line 639
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    move-wide/from16 v16, v0

    cmpl-double v7, p1, v16

    if-ltz v7, :cond_2

    .line 640
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 642
    :cond_2
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result v3

    .line 643
    .local v3, "binIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pBminus(I)D

    move-result-wide v12

    .line 644
    .local v12, "pBminus":D
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v10

    .line 645
    .local v10, "pB":D
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->k(D)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v6

    .line 646
    .local v6, "kernel":Lorg/apache/commons/math3/distribution/RealDistribution;
    instance-of v7, v6, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;

    if-eqz v7, :cond_3

    .line 647
    invoke-interface {v6}, Lorg/apache/commons/math3/distribution/RealDistribution;->getNumericalMean()D

    move-result-wide v16

    cmpg-double v7, p1, v16

    if-ltz v7, :cond_0

    .line 650
    add-double/2addr v12, v10

    goto :goto_0

    .line 653
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v2

    .line 654
    .local v2, "binBounds":[D
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v4

    .line 655
    .local v4, "kB":D
    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    .line 656
    .local v8, "lower":D
    :goto_1
    move-wide/from16 v0, p1

    invoke-interface {v6, v0, v1}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v16

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v18

    sub-double v16, v16, v18

    div-double v14, v16, v4

    .line 658
    .local v14, "withinBinCum":D
    mul-double v16, v10, v14

    add-double v12, v12, v16

    goto :goto_0

    .line 655
    .end local v8    # "lower":D
    .end local v14    # "withinBinCum":D
    :cond_4
    add-int/lit8 v7, v3, -0x1

    aget-wide v8, v2, v7

    goto :goto_1
.end method

.method public density(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 613
    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    .line 614
    :cond_0
    const-wide/16 v2, 0x0

    .line 618
    :goto_0
    return-wide v2

    .line 616
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result v0

    .line 617
    .local v0, "binIndex":I
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v1

    .line 618
    .local v1, "kernel":Lorg/apache/commons/math3/distribution/RealDistribution;
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/distribution/RealDistribution;->density(D)D

    move-result-wide v2

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v4

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public getBinCount()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    return v0
.end method

.method public getBinStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    return-object v0
.end method

.method public getGeneratorUpperBounds()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    array-length v0, v2

    .line 563
    .local v0, "len":I
    new-array v1, v0, [D

    .line 564
    .local v1, "out":[D
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    return-object v1
.end method

.method protected getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;
    .locals 8
    .param p1, "bStats"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .prologue
    .line 845
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 846
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;-><init>(D)V

    .line 848
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/distribution/NormalDistribution;

    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    goto :goto_0
.end method

.method public getNextValue()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 484
    iget-boolean v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DISTRIBUTION_NOT_LOADED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 488
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sample()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleStats()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .prologue
    .line 735
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .prologue
    .line 743
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    return-wide v0
.end method

.method public getUpperBounds()[D
    .locals 8

    .prologue
    .line 537
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    new-array v0, v2, [D

    .line 538
    .local v0, "binUpperBounds":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 539
    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    iget-wide v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    add-int/lit8 v6, v1, 0x1

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v2, v2, -0x1

    iget-wide v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    aput-wide v4, v0, v2

    .line 542
    return-object v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 23
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 683
    const-wide/16 v20, 0x0

    cmpg-double v11, p1, v20

    if-ltz v11, :cond_0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, p1, v20

    if-lez v11, :cond_1

    .line 684
    :cond_0
    new-instance v11, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v11, v0, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v11

    .line 687
    :cond_1
    const-wide/16 v20, 0x0

    cmpl-double v11, p1, v20

    if-nez v11, :cond_3

    .line 688
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSupportLowerBound()D

    move-result-wide v12

    .line 711
    :cond_2
    :goto_0
    return-wide v12

    .line 691
    :cond_3
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, p1, v20

    if-nez v11, :cond_4

    .line 692
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSupportUpperBound()D

    move-result-wide v12

    goto :goto_0

    .line 695
    :cond_4
    const/4 v5, 0x0

    .line 696
    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->cumBinP(I)D

    move-result-wide v20

    cmpg-double v11, v20, p1

    if-gez v11, :cond_5

    .line 697
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 700
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v10

    .line 701
    .local v10, "kernel":Lorg/apache/commons/math3/distribution/RealDistribution;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v6

    .line 702
    .local v6, "kB":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v4

    .line 703
    .local v4, "binBounds":[D
    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    .line 704
    .local v12, "lower":D
    :goto_2
    invoke-interface {v10, v12, v13}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v8

    .line 705
    .local v8, "kBminus":D
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v14

    .line 706
    .local v14, "pB":D
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pBminus(I)D

    move-result-wide v16

    .line 707
    .local v16, "pBminus":D
    sub-double v18, p1, v16

    .line 708
    .local v18, "pCrit":D
    const-wide/16 v20, 0x0

    cmpg-double v11, v18, v20

    if-lez v11, :cond_2

    .line 711
    mul-double v20, v18, v6

    div-double v20, v20, v14

    add-double v20, v20, v8

    move-wide/from16 v0, v20

    invoke-interface {v10, v0, v1}, Lorg/apache/commons/math3/distribution/RealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v12

    goto :goto_0

    .line 703
    .end local v8    # "kBminus":D
    .end local v12    # "lower":D
    .end local v14    # "pB":D
    .end local v16    # "pBminus":D
    .end local v18    # "pCrit":D
    :cond_6
    add-int/lit8 v11, v5, -0x1

    aget-wide v12, v4, v11

    goto :goto_2
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method public load(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 297
    const-string v6, "US-ASCII"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 298
    .local v0, "charset":Ljava/nio/charset/Charset;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 299
    .local v4, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 301
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    .line 302
    .local v1, "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    invoke-virtual {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->computeStats()V

    .line 304
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v6, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;

    invoke-direct {v6, p0, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    invoke-direct {p0, v6}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;)V

    .line 307
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 310
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 315
    :goto_0
    return-void

    .line 309
    .end local v1    # "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    .line 310
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 313
    :goto_2
    throw v6

    .line 311
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v1    # "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v1    # "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 309
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v1    # "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public load(Ljava/net/URL;)V
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 263
    const-string v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 264
    .local v0, "charset":Ljava/nio/charset/Charset;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 267
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    .line 268
    .local v1, "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    invoke-virtual {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->computeStats()V

    .line 269
    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 270
    new-instance v4, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->URL_CONTAINS_NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .end local v1    # "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    :catchall_0
    move-exception v4

    .line 278
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    :goto_1
    throw v4

    .line 273
    .restart local v1    # "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v4, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;

    invoke-direct {v4, p0, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;)V

    .line 275
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 278
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 283
    :goto_2
    return-void

    .line 279
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v1    # "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 277
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public load([D)V
    .locals 3
    .param p1, "in"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;[D)V

    .line 238
    .local v0, "da":Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->computeStats()V

    .line 240
    new-instance v2, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;[D)V

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    .line 247
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2
.end method

.method public probability(D)D
    .locals 2
    .param p1, "x"    # D

    .prologue
    .line 595
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public reSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 584
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    .line 585
    return-void
.end method

.method public reseedRandomGenerator(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 776
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    .line 777
    return-void
.end method
