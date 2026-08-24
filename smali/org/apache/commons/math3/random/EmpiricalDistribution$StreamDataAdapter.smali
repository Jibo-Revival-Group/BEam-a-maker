.class Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;
.super Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamDataAdapter"
.end annotation


# instance fields
.field private inputStream:Ljava/io/BufferedReader;

.field final synthetic this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V
    .locals 1
    .param p2, "in"    # Ljava/io/BufferedReader;

    .prologue
    .line 352
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$1;)V

    .line 354
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 355
    return-void
.end method


# virtual methods
.method public computeBinStats()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "str":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 362
    .local v2, "val":D
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 364
    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v5, v2, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 365
    .local v0, "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    .line 368
    .end local v0    # "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 369
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 370
    return-void
.end method

.method public computeStats()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "str":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 377
    .local v2, "val":D
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    new-instance v4, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-static {v1, v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 378
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 380
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 383
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 384
    return-void
.end method
