.class public Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;
.super Ljava/lang/Object;
.source "KendallsCorrelation.java"


# instance fields
.field private final correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 102
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1
    .param p1, "data"    # [[D

    .prologue
    .line 91
    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 92
    return-void
.end method

.method private static sum(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 270
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 121
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    .line 122
    .local v4, "nVars":I
    new-instance v5, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v5, v4, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 123
    .local v5, "outMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 124
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 125
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v6

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlation([D[D)D

    move-result-wide v0

    .line 126
    .local v0, "corr":D
    invoke-interface {v5, v2, v3, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 127
    invoke-interface {v5, v3, v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "corr":D
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v5, v2, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "j":I
    :cond_1
    return-object v5
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "matrix"    # [[D

    .prologue
    .line 143
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public correlation([D[D)D
    .locals 42
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 157
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v29

    move/from16 v1, v38

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v29

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 161
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    .line 162
    .local v18, "n":I
    add-int/lit8 v29, v18, -0x1

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v22

    .line 165
    .local v22, "numPairs":J
    move/from16 v0, v18

    new-array v0, v0, [Lorg/apache/commons/math3/util/Pair;

    move-object/from16 v24, v0

    .line 166
    .local v24, "pairs":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 167
    new-instance v29, Lorg/apache/commons/math3/util/Pair;

    aget-wide v38, p1, v14

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v38

    aget-wide v40, p2, v14

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v29, v24, v14

    .line 166
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v29, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;-><init>(Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 178
    const-wide/16 v32, 0x0

    .line 179
    .local v32, "tiedXPairs":J
    const-wide/16 v34, 0x0

    .line 180
    .local v34, "tiedXYPairs":J
    const-wide/16 v6, 0x1

    .line 181
    .local v6, "consecutiveXTies":J
    const-wide/16 v8, 0x1

    .line 182
    .local v8, "consecutiveXYTies":J
    const/16 v29, 0x0

    aget-object v27, v24, v29

    .line 183
    .local v27, "prev":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/4 v14, 0x1

    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    .line 184
    aget-object v13, v24, v14

    .line 185
    .local v13, "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Double;

    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 186
    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    .line 187
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Double;

    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 188
    const-wide/16 v38, 0x1

    add-long v8, v8, v38

    .line 199
    :goto_2
    move-object/from16 v27, v13

    .line 183
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 190
    :cond_2
    const-wide/16 v38, 0x1

    sub-long v38, v8, v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v38

    add-long v34, v34, v38

    .line 191
    const-wide/16 v8, 0x1

    goto :goto_2

    .line 194
    :cond_3
    const-wide/16 v38, 0x1

    sub-long v38, v6, v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v38

    add-long v32, v32, v38

    .line 195
    const-wide/16 v6, 0x1

    .line 196
    const-wide/16 v38, 0x1

    sub-long v38, v8, v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v38

    add-long v34, v34, v38

    .line 197
    const-wide/16 v8, 0x1

    goto :goto_2

    .line 201
    .end local v13    # "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_4
    const-wide/16 v38, 0x1

    sub-long v38, v6, v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v38

    add-long v32, v32, v38

    .line 202
    const-wide/16 v38, 0x1

    sub-long v38, v8, v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v38

    add-long v34, v34, v38

    .line 204
    const-wide/16 v30, 0x0

    .line 206
    .local v30, "swaps":J
    move/from16 v0, v18

    new-array v0, v0, [Lorg/apache/commons/math3/util/Pair;

    move-object/from16 v25, v0

    .line 207
    .local v25, "pairsDestination":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v28, 0x1

    .local v28, "segmentSize":I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 208
    const/16 v19, 0x0

    .local v19, "offset":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 209
    move/from16 v14, v19

    .line 210
    add-int v29, v14, v28

    move/from16 v0, v29

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    .line 211
    .local v15, "iEnd":I
    move/from16 v16, v15

    .line 212
    .local v16, "j":I
    add-int v29, v16, v28

    move/from16 v0, v29

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v17

    .line 214
    .local v17, "jEnd":I
    move/from16 v12, v19

    .line 215
    .local v12, "copyLocation":I
    :goto_5
    if-lt v14, v15, :cond_5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 216
    :cond_5
    if-ge v14, v15, :cond_8

    .line 217
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 218
    aget-object v29, v24, v14

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Double;

    aget-object v38, v24, v16

    invoke-virtual/range {v38 .. v38}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v29

    if-gtz v29, :cond_6

    .line 219
    aget-object v29, v24, v14

    aput-object v29, v25, v12

    .line 220
    add-int/lit8 v14, v14, 0x1

    .line 234
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 222
    :cond_6
    aget-object v29, v24, v16

    aput-object v29, v25, v12

    .line 223
    add-int/lit8 v16, v16, 0x1

    .line 224
    sub-int v29, v15, v14

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v30, v30, v38

    goto :goto_6

    .line 227
    :cond_7
    aget-object v29, v24, v14

    aput-object v29, v25, v12

    .line 228
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 231
    :cond_8
    aget-object v29, v24, v16

    aput-object v29, v25, v12

    .line 232
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 208
    :cond_9
    mul-int/lit8 v29, v28, 0x2

    add-int v19, v19, v29

    goto :goto_4

    .line 237
    .end local v12    # "copyLocation":I
    .end local v15    # "iEnd":I
    .end local v16    # "j":I
    .end local v17    # "jEnd":I
    :cond_a
    move-object/from16 v26, v24

    .line 238
    .local v26, "pairsTemp":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v24, v25

    .line 239
    move-object/from16 v25, v26

    .line 207
    shl-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 242
    .end local v19    # "offset":I
    .end local v26    # "pairsTemp":[Lorg/apache/commons/math3/util/Pair;, "[Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_b
    const-wide/16 v36, 0x0

    .line 243
    .local v36, "tiedYPairs":J
    const-wide/16 v10, 0x1

    .line 244
    .local v10, "consecutiveYTies":J
    const/16 v29, 0x0

    aget-object v27, v24, v29

    .line 245
    const/4 v14, 0x1

    :goto_7
    move/from16 v0, v18

    if-ge v14, v0, :cond_d

    .line 246
    aget-object v13, v24, v14

    .line 247
    .restart local v13    # "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v13}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Double;

    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 248
    const-wide/16 v38, 0x1

    add-long v10, v10, v38

    .line 253
    :goto_8
    move-object/from16 v27, v13

    .line 245
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 250
    :cond_c
    const-wide/16 v38, 0x1

    sub-long v38, v10, v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v38

    add-long v36, v36, v38

    .line 251
    const-wide/16 v10, 0x1

    goto :goto_8

    .line 255
    .end local v13    # "curr":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_d
    const-wide/16 v38, 0x1

    sub-long v38, v10, v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v38

    add-long v36, v36, v38

    .line 257
    sub-long v38, v22, v32

    sub-long v38, v38, v36

    add-long v38, v38, v34

    const-wide/16 v40, 0x2

    mul-long v40, v40, v30

    sub-long v4, v38, v40

    .line 258
    .local v4, "concordantMinusDiscordant":J
    sub-long v38, v22, v32

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    sub-long v40, v22, v36

    move-wide/from16 v0, v40

    long-to-double v0, v0

    move-wide/from16 v40, v0

    mul-double v20, v38, v40

    .line 259
    .local v20, "nonTiedPairsMultiplied":D
    long-to-double v0, v4

    move-wide/from16 v38, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v40

    div-double v38, v38, v40

    return-wide v38
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
