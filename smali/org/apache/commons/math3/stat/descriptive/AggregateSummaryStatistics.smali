.class public Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;
.super Ljava/lang/Object;
.source "AggregateSummaryStatistics.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71e58548e148e35aL


# instance fields
.field private final statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

.field private final statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 1
    .param p1, "prototypeStatistics"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 0
    .param p1, "prototypeStatistics"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .param p2, "initialStatistics"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .end local p1    # "prototypeStatistics":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-direct {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 127
    if-nez p2, :cond_1

    new-instance p2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .end local p2    # "initialStatistics":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-direct {p2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    :cond_1
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 129
    return-void
.end method

.method public static aggregate(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;",
            ">;)",
            "Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "statistics":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    if-nez p0, :cond_0

    .line 307
    const/4 v3, 0x0

    .line 346
    :goto_0
    return-object v3

    .line 309
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 310
    .local v20, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    const/4 v3, 0x0

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    .line 314
    .local v2, "current":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v8

    .line 315
    .local v8, "n":J
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v12

    .line 316
    .local v12, "min":D
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getSum()D

    move-result-wide v14

    .line 317
    .local v14, "sum":D
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v10

    .line 318
    .local v10, "max":D
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v28

    .line 319
    .local v28, "var":D
    long-to-double v0, v8

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v30, v30, v32

    mul-double v22, v28, v30

    .line 320
    .local v22, "m2":D
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v4

    .line 321
    .local v4, "mean":D
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 322
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "current":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    .line 323
    .restart local v2    # "current":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v30

    cmpg-double v3, v30, v12

    if-ltz v3, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    :cond_2
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v12

    .line 326
    :cond_3
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v30

    cmpl-double v3, v30, v10

    if-gtz v3, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    :cond_4
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v10

    .line 329
    :cond_5
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getSum()D

    move-result-wide v30

    add-double v14, v14, v30

    .line 330
    long-to-double v0, v8

    move-wide/from16 v26, v0

    .line 331
    .local v26, "oldN":D
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v18, v0

    .line 332
    .local v18, "curN":D
    long-to-double v0, v8

    move-wide/from16 v30, v0

    add-double v30, v30, v18

    move-wide/from16 v0, v30

    double-to-long v8, v0

    .line 333
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v30

    sub-double v24, v30, v4

    .line 334
    .local v24, "meanDiff":D
    long-to-double v0, v8

    move-wide/from16 v30, v0

    div-double v4, v14, v30

    .line 335
    invoke-interface {v2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v30

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v32, v18, v32

    mul-double v16, v30, v32

    .line 336
    .local v16, "curM2":D
    add-double v30, v22, v16

    mul-double v32, v24, v24

    mul-double v32, v32, v26

    mul-double v32, v32, v18

    long-to-double v0, v8

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    add-double v22, v30, v32

    .line 337
    goto :goto_1

    .line 339
    .end local v16    # "curM2":D
    .end local v18    # "curN":D
    .end local v24    # "meanDiff":D
    .end local v26    # "oldN":D
    :cond_6
    const-wide/16 v30, 0x0

    cmp-long v3, v8, v30

    if-nez v3, :cond_7

    .line 340
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 346
    .local v6, "variance":D
    :goto_2
    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    invoke-direct/range {v3 .. v15}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    goto/16 :goto_0

    .line 341
    .end local v6    # "variance":D
    :cond_7
    const-wide/16 v30, 0x1

    cmp-long v3, v8, v30

    if-nez v3, :cond_8

    .line 342
    const-wide/16 v6, 0x0

    .restart local v6    # "variance":D
    goto :goto_2

    .line 344
    .end local v6    # "variance":D
    :cond_8
    const-wide/16 v30, 0x1

    sub-long v30, v8, v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v6, v22, v30

    .restart local v6    # "variance":D
    goto :goto_2
.end method


# virtual methods
.method public createContributingStatistics()Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 288
    .local v0, "contributingStatistics":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 290
    return-object v0
.end method

.method public getGeometricMean()D
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMax()D
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMean()D
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMin()D
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getN()J
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSecondMoment()D
    .locals 4

    .prologue
    .line 257
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSecondMoment()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStandardDeviation()D
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSum()D
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSumOfLogs()D
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumOfLogs()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSummary()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 15

    .prologue
    .line 269
    iget-object v14, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v14

    .line 270
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMean()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getVariance()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getN()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMax()D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMin()D

    move-result-wide v10

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getSum()D

    move-result-wide v12

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    monitor-exit v14

    return-object v1

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSumsq()D
    .locals 4

    .prologue
    .line 243
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVariance()D
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
