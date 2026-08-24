.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
.super Ljava/lang/Object;
.source "AdamsNordsieckTransformer.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c1:[D

.field private final update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 12
    .param p1, "n"    # I

    .prologue
    const/4 v10, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    add-int/lit8 v5, p1, -0x1

    .line 156
    .local v5, "rows":I
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 157
    .local v2, "bigP":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    new-instance v8, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    invoke-direct {v8, v2}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v4

    .line 160
    .local v4, "pSolver":Lorg/apache/commons/math3/linear/FieldDecompositionSolver;, "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    new-array v7, v5, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 161
    .local v7, "u":[Lorg/apache/commons/math3/fraction/BigFraction;
    sget-object v8, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v8, v7, v10}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 167
    .local v0, "bigC1":[Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 168
    .local v6, "shiftedP":[[Lorg/apache/commons/math3/fraction/BigFraction;
    array-length v8, v6

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 170
    add-int/lit8 v8, v3, -0x1

    aget-object v8, v6, v8

    aput-object v8, v6, v3

    .line 168
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 172
    :cond_0
    new-array v8, v5, [Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v8, v6, v10

    .line 173
    aget-object v8, v6, v10

    sget-object v9, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v8, v6, v10}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 178
    .local v1, "bigMSupdate":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->bigFractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 179
    new-array v8, v5, [D

    iput-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    .line 180
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 181
    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    aget-object v9, v0, v3

    invoke-virtual {v9}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v8, v3

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    :cond_1
    return-void
.end method

.method private buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 9
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    filled-new-array {p1, p1}, [I

    move-result-object v6

    const-class v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 231
    .local v4, "pData":[[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-gt v2, v6, :cond_1

    .line 233
    add-int/lit8 v6, v2, -0x1

    aget-object v5, v4, v6

    .line 234
    .local v5, "pI":[Lorg/apache/commons/math3/fraction/BigFraction;
    neg-int v1, v2

    .line 235
    .local v1, "factor":I
    move v0, v1

    .line 236
    .local v0, "aj":I
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    array-length v6, v5

    if-gt v3, v6, :cond_0

    .line 237
    add-int/lit8 v6, v3, -0x1

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int/lit8 v8, v3, 0x1

    mul-int/2addr v8, v0

    invoke-direct {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    aput-object v7, v5, v6

    .line 238
    mul-int/2addr v0, v1

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "aj":I
    .end local v1    # "factor":I
    .end local v3    # "j":I
    .end local v5    # "pI":[Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_1
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v6
.end method

.method public static getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    .locals 4
    .param p0, "nSteps"    # I

    .prologue
    .line 192
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    monitor-enter v2

    .line 193
    :try_start_0
    sget-object v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    .line 194
    .local v0, "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    .end local v0    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;-><init>(I)V

    .line 196
    .restart local v0    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    sget-object v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    monitor-exit v2

    return-object v0

    .line 199
    .end local v0    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getNSteps()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    array-length v0, v0

    return v0
.end method

.method public initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 29
    .param p1, "h"    # D
    .param p3, "t"    # [D
    .param p4, "y"    # [[D
    .param p5, "yDot"    # [[D

    .prologue
    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    filled-new-array/range {v23 .. v24}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 269
    .local v2, "a":[[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x0

    aget-object v24, p4, v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    filled-new-array/range {v23 .. v24}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 270
    .local v5, "b":[[D
    const/16 v23, 0x0

    aget-object v19, p4, v23

    .line 271
    .local v19, "y0":[D
    const/16 v23, 0x0

    aget-object v20, p5, v23

    .line 272
    .local v20, "yDot0":[D
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_6

    .line 274
    aget-wide v24, p3, v9

    const/16 v23, 0x0

    aget-wide v26, p3, v23

    sub-double v10, v24, v26

    .line 275
    .local v10, "di":D
    div-double v16, v10, p1

    .line 276
    .local v16, "ratio":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v12, v24, p1

    .line 280
    .local v12, "dikM1Ohk":D
    mul-int/lit8 v23, v9, 0x2

    add-int/lit8 v23, v23, -0x2

    aget-object v4, v2, v23

    .line 281
    .local v4, "aI":[D
    mul-int/lit8 v23, v9, 0x2

    add-int/lit8 v23, v23, -0x1

    array-length v0, v2

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    mul-int/lit8 v23, v9, 0x2

    add-int/lit8 v23, v23, -0x1

    aget-object v3, v2, v23

    .line 282
    .local v3, "aDotI":[D
    :goto_1
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_2

    .line 283
    mul-double v12, v12, v16

    .line 284
    mul-double v24, v10, v12

    aput-wide v24, v4, v14

    .line 285
    if-eqz v3, :cond_0

    .line 286
    add-int/lit8 v23, v14, 0x2

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v12

    aput-wide v24, v3, v14

    .line 282
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 281
    .end local v3    # "aDotI":[D
    .end local v14    # "j":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 291
    .restart local v3    # "aDotI":[D
    .restart local v14    # "j":I
    :cond_2
    aget-object v22, p4, v9

    .line 292
    .local v22, "yI":[D
    aget-object v21, p5, v9

    .line 293
    .local v21, "yDotI":[D
    mul-int/lit8 v23, v9, 0x2

    add-int/lit8 v23, v23, -0x2

    aget-object v7, v5, v23

    .line 294
    .local v7, "bI":[D
    mul-int/lit8 v23, v9, 0x2

    add-int/lit8 v23, v23, -0x1

    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    mul-int/lit8 v23, v9, 0x2

    add-int/lit8 v23, v23, -0x1

    aget-object v6, v5, v23

    .line 295
    .local v6, "bDotI":[D
    :goto_3
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_5

    .line 296
    aget-wide v24, v22, v14

    aget-wide v26, v19, v14

    sub-double v24, v24, v26

    aget-wide v26, v20, v14

    mul-double v26, v26, v10

    sub-double v24, v24, v26

    aput-wide v24, v7, v14

    .line 297
    if-eqz v6, :cond_3

    .line 298
    aget-wide v24, v21, v14

    aget-wide v26, v20, v14

    sub-double v24, v24, v26

    aput-wide v24, v6, v14

    .line 295
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 294
    .end local v6    # "bDotI":[D
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 272
    .restart local v6    # "bDotI":[D
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 306
    .end local v3    # "aDotI":[D
    .end local v4    # "aI":[D
    .end local v6    # "bDotI":[D
    .end local v7    # "bI":[D
    .end local v10    # "di":D
    .end local v12    # "dikM1Ohk":D
    .end local v14    # "j":I
    .end local v16    # "ratio":D
    .end local v21    # "yDotI":[D
    .end local v22    # "yI":[D
    :cond_6
    new-instance v8, Lorg/apache/commons/math3/linear/QRDecomposition;

    new-instance v23, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 307
    .local v8, "decomposition":Lorg/apache/commons/math3/linear/QRDecomposition;
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v23

    new-instance v24, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v5, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v18

    .line 310
    .local v18, "x":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v15, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 311
    .local v15, "truncatedX":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_8

    .line 312
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    invoke-virtual {v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v23

    move/from16 v0, v23

    if-ge v14, v0, :cond_7

    .line 313
    move-object/from16 v0, v18

    invoke-interface {v0, v9, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v9, v14, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 312
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 311
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 316
    .end local v14    # "j":I
    :cond_8
    return-object v15
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 1
    .param p1, "highOrder"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->multiply(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 12
    .param p1, "start"    # [D
    .param p2, "end"    # [D
    .param p3, "highOrder"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .prologue
    .line 351
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v2

    .line 352
    .local v2, "data":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 353
    aget-object v3, v2, v4

    .line 354
    .local v3, "dataI":[D
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    aget-wide v0, v6, v4

    .line 355
    .local v0, "c1I":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 356
    aget-wide v6, v3, v5

    aget-wide v8, p1, v5

    aget-wide v10, p2, v5

    sub-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    aput-wide v6, v3, v5

    .line 355
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 352
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "c1I":D
    .end local v3    # "dataI":[D
    .end local v5    # "j":I
    :cond_1
    return-void
.end method
