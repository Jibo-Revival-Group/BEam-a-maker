.class final Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;
.super Ljava/lang/Object;
.source "BetaDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/distribution/BetaDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChengBetaSampler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static algorithmBB(Lorg/apache/commons/math3/random/RandomGenerator;DDD)D
    .locals 31
    .param p0, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p1, "a0"    # D
    .param p3, "a"    # D
    .param p5, "b"    # D

    .prologue
    .line 325
    add-double v4, p3, p5

    .line 326
    .local v4, "alpha":D
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v26, v4, v26

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v28, v28, p3

    mul-double v28, v28, p5

    sub-double v28, v28, v4

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 327
    .local v6, "beta":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v26, v26, v6

    add-double v8, p3, v26

    .line 333
    .local v8, "gamma":D
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v16

    .line 334
    .local v16, "u1":D
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v18

    .line 335
    .local v18, "u2":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v26

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    mul-double v20, v6, v26

    .line 336
    .local v20, "v":D
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v26

    mul-double v22, p3, v26

    .line 337
    .local v22, "w":D
    mul-double v26, v16, v16

    mul-double v24, v26, v18

    .line 338
    .local v24, "z":D
    mul-double v26, v8, v20

    const-wide v28, 0x3ff62e43096a0c0dL    # 1.3862944

    sub-double v10, v26, v28

    .line 339
    .local v10, "r":D
    add-double v26, p3, v10

    sub-double v12, v26, v22

    .line 340
    .local v12, "s":D
    const-wide v26, 0x4004e02107b78466L    # 2.609438

    add-double v26, v26, v12

    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    mul-double v28, v28, v24

    cmpl-double v26, v26, v28

    if-ltz v26, :cond_2

    .line 350
    :cond_1
    :goto_0
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v0, v22

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v22

    .line 351
    move-wide/from16 v0, p3

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v26

    if-eqz v26, :cond_3

    add-double v26, p5, v22

    div-double v26, v22, v26

    :goto_1
    return-wide v26

    .line 344
    :cond_2
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v14

    .line 345
    .local v14, "t":D
    cmpl-double v26, v12, v14

    if-gez v26, :cond_1

    .line 348
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v26

    add-double v28, p5, v22

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    mul-double v26, v26, v4

    add-double v26, v26, v10

    cmpg-double v26, v26, v14

    if-ltz v26, :cond_0

    goto :goto_0

    .line 351
    .end local v14    # "t":D
    :cond_3
    add-double v26, p5, v22

    div-double v26, p5, v26

    goto :goto_1
.end method

.method private static algorithmBC(Lorg/apache/commons/math3/random/RandomGenerator;DDD)D
    .locals 33
    .param p0, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p1, "a0"    # D
    .param p3, "a"    # D
    .param p5, "b"    # D

    .prologue
    .line 366
    add-double v4, p3, p5

    .line 367
    .local v4, "alpha":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v6, v26, p5

    .line 368
    .local v6, "beta":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v26, v26, p3

    sub-double v8, v26, p5

    .line 369
    .local v8, "delta":D
    const-wide v26, 0x3f8c71c89a38250aL    # 0.0138889

    const-wide v28, 0x3fa5555673aa1bc8L    # 0.0416667

    mul-double v28, v28, p5

    add-double v26, v26, v28

    mul-double v26, v26, v8

    mul-double v28, p3, v6

    const-wide v30, 0x3fe8e38eb0318b93L    # 0.777778

    sub-double v28, v28, v30

    div-double v10, v26, v28

    .line 370
    .local v10, "k1":D
    const-wide/high16 v26, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v30, 0x3fd0000000000000L    # 0.25

    div-double v30, v30, v8

    add-double v28, v28, v30

    mul-double v28, v28, p5

    add-double v12, v26, v28

    .line 374
    .local v12, "k2":D
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v14

    .line 375
    .local v14, "u1":D
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v16

    .line 376
    .local v16, "u2":D
    mul-double v22, v14, v16

    .line 377
    .local v22, "y":D
    mul-double v24, v14, v22

    .line 378
    .local v24, "z":D
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v26, v14, v26

    if-gez v26, :cond_2

    .line 379
    const-wide/high16 v26, 0x3fd0000000000000L    # 0.25

    mul-double v26, v26, v16

    add-double v26, v26, v24

    sub-double v26, v26, v22

    cmpl-double v26, v26, v10

    if-gez v26, :cond_0

    .line 394
    :cond_1
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v26

    neg-double v0, v14

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    mul-double v18, v6, v26

    .line 395
    .local v18, "v":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v26

    mul-double v20, p3, v26

    .line 396
    .local v20, "w":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v26

    add-double v28, p5, v20

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    add-double v26, v26, v18

    mul-double v26, v26, v4

    const-wide v28, 0x3ff62e43096a0c0dL    # 1.3862944

    sub-double v26, v26, v28

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    cmpl-double v26, v26, v28

    if-ltz v26, :cond_0

    .line 401
    :goto_1
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v0, v20

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v20

    .line 402
    move-wide/from16 v0, p3

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v26

    if-eqz v26, :cond_4

    add-double v26, p5, v20

    div-double v26, v20, v26

    :goto_2
    return-wide v26

    .line 383
    .end local v18    # "v":D
    .end local v20    # "w":D
    :cond_2
    const-wide/high16 v26, 0x3fd0000000000000L    # 0.25

    cmpg-double v26, v24, v26

    if-gtz v26, :cond_3

    .line 384
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v26

    neg-double v0, v14

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    mul-double v18, v6, v26

    .line 385
    .restart local v18    # "v":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v26

    mul-double v20, p3, v26

    .line 386
    .restart local v20    # "w":D
    goto :goto_1

    .line 389
    .end local v18    # "v":D
    .end local v20    # "w":D
    :cond_3
    cmpl-double v26, v24, v12

    if-ltz v26, :cond_1

    goto/16 :goto_0

    .line 402
    .restart local v18    # "v":D
    .restart local v20    # "w":D
    :cond_4
    add-double v26, p5, v20

    div-double v26, p5, v26

    goto :goto_2
.end method

.method static sample(Lorg/apache/commons/math3/random/RandomGenerator;DD)D
    .locals 17
    .param p0, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p1, "alpha"    # D
    .param p3, "beta"    # D

    .prologue
    .line 303
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    .line 304
    .local v4, "a":D
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 306
    .local v6, "b":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 307
    invoke-static/range {v1 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;->algorithmBB(Lorg/apache/commons/math3/random/RandomGenerator;DDD)D

    move-result-wide v0

    .line 309
    :goto_0
    return-wide v0

    :cond_0
    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide v12, v6

    move-wide v14, v4

    invoke-static/range {v9 .. v15}, Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;->algorithmBC(Lorg/apache/commons/math3/random/RandomGenerator;DDD)D

    move-result-wide v0

    goto :goto_0
.end method
