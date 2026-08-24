.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
.super Ljava/lang/Object;
.source "AdamsNordsieckFieldTransformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/math3/Field",
            "<+",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<*>;>;",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer",
            "<+",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<*>;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c1:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final update:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 9
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/4 v8, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    .line 160
    add-int/lit8 v3, p2, -0x1

    .line 163
    .local v3, "rows":I
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 164
    .local v0, "bigP":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    new-instance v6, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    invoke-direct {v6, v0}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v2

    .line 167
    .local v2, "pSolver":Lorg/apache/commons/math3/linear/FieldDecompositionSolver;, "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<TT;>;"
    invoke-static {p1, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/math3/RealFieldElement;

    .line 168
    .local v5, "u":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v6, v5, v8}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v2, v6}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    .line 174
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 175
    .local v4, "shiftedP":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    array-length v6, v4

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 177
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v4, v6

    aput-object v6, v4, v1

    .line 175
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v4, v8

    .line 180
    aget-object v6, v4, v8

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    new-instance v7, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v7, v4, v8}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    iput-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 183
    return-void
.end method

.method private buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 10
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v6, p1, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 232
    .local v4, "pData":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-gt v2, v6, :cond_1

    .line 234
    add-int/lit8 v6, v2, -0x1

    aget-object v5, v4, v6

    .line 235
    .local v5, "pI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    neg-int v1, v2

    .line 236
    .local v1, "factor":I
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v8, v1

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 237
    .local v0, "aj":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    array-length v6, v5

    if-gt v3, v6, :cond_0

    .line 238
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v7

    .line 239
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aj":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 237
    .restart local v0    # "aj":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 232
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "aj":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v1    # "factor":I
    .end local v3    # "j":I
    .end local v5    # "pI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_1
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v6
.end method

.method public static getInstance(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    .locals 5
    .param p1, "nSteps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;I)",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->CACHE:Ljava/util/Map;

    monitor-enter v3

    .line 197
    :try_start_0
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 198
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/Field<+Lorg/apache/commons/math3/RealFieldElement<*>;>;Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<+Lorg/apache/commons/math3/RealFieldElement<*>;>;>;"
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/Field<+Lorg/apache/commons/math3/RealFieldElement<*>;>;Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<+Lorg/apache/commons/math3/RealFieldElement<*>;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/Field<+Lorg/apache/commons/math3/RealFieldElement<*>;>;Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<+Lorg/apache/commons/math3/RealFieldElement<*>;>;>;"
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    .line 205
    .local v1, "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    if-nez v1, :cond_1

    .line 206
    new-instance v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    .end local v1    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 207
    .restart local v1    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    monitor-exit v3

    return-object v1

    .line 211
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/Field<+Lorg/apache/commons/math3/RealFieldElement<*>;>;Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<+Lorg/apache/commons/math3/RealFieldElement<*>;>;>;"
    .end local v1    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;[[TT;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    .local p1, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "t":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "yDot":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    invoke-static/range {v21 .. v23}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 270
    .local v3, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x0

    aget-object v23, p3, v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 271
    .local v6, "b":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/16 v21, 0x0

    aget-object v17, p3, v21

    .line 272
    .local v17, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v21, 0x0

    aget-object v18, p4, v21

    .line 273
    .local v18, "yDot0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_6

    .line 275
    aget-object v21, p2, v12

    const/16 v22, 0x0

    aget-object v22, p2, v22

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 276
    .local v10, "di":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    .local v14, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 281
    .local v11, "dikM1Ohk":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    mul-int/lit8 v21, v12, 0x2

    add-int/lit8 v21, v21, -0x2

    aget-object v5, v3, v21

    .line 282
    .local v5, "aI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    mul-int/lit8 v21, v12, 0x2

    add-int/lit8 v21, v21, -0x1

    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    mul-int/lit8 v21, v12, 0x2

    add-int/lit8 v21, v21, -0x1

    aget-object v4, v3, v21

    .line 283
    .local v4, "aDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_1
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_2

    .line 284
    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "dikM1Ohk":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 285
    .restart local v11    # "dikM1Ohk":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v21, v5, v13

    .line 286
    if-eqz v4, :cond_0

    .line 287
    add-int/lit8 v21, v13, 0x2

    move/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v21, v4, v13

    .line 283
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 282
    .end local v4    # "aDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v13    # "j":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 292
    .restart local v4    # "aDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v13    # "j":I
    :cond_2
    aget-object v20, p3, v12

    .line 293
    .local v20, "yI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aget-object v19, p4, v12

    .line 294
    .local v19, "yDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    mul-int/lit8 v21, v12, 0x2

    add-int/lit8 v21, v21, -0x2

    aget-object v8, v6, v21

    .line 295
    .local v8, "bI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    mul-int/lit8 v21, v12, 0x2

    add-int/lit8 v21, v21, -0x1

    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    mul-int/lit8 v21, v12, 0x2

    add-int/lit8 v21, v21, -0x1

    aget-object v7, v6, v21

    .line 296
    .local v7, "bDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_3
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    .line 297
    aget-object v21, v20, v13

    aget-object v22, v17, v13

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v22, v18, v13

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v21, v8, v13

    .line 298
    if-eqz v7, :cond_3

    .line 299
    aget-object v21, v19, v13

    aget-object v22, v18, v13

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v21, v7, v13

    .line 296
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 295
    .end local v7    # "bDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 273
    .restart local v7    # "bDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 307
    .end local v4    # "aDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v5    # "aI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v7    # "bDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v8    # "bI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v10    # "di":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "dikM1Ohk":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "j":I
    .end local v14    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v19    # "yDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v20    # "yI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_6
    new-instance v9, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    new-instance v21, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 308
    .local v9, "decomposition":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v21

    new-instance v22, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v16

    .line 311
    .local v16, "x":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    new-instance v15, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    move-object/from16 v21, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v15, v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 313
    .local v15, "truncatedX":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v15}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_8

    .line 314
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_6
    invoke-virtual {v15}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    .line 315
    move-object/from16 v0, v16

    invoke-interface {v0, v12, v13}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v12, v13, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 314
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 313
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 318
    .end local v13    # "j":I
    :cond_8
    return-object v15
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    .local p1, "highOrder":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->multiply(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v0

    return-object v0
.end method

.method public updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    .local p1, "start":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "end":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "highOrder":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getDataRef()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 354
    .local v1, "data":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 355
    aget-object v2, v1, v3

    .line 356
    .local v2, "dataI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v0, v5, v3

    .line 357
    .local v0, "c1I":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 358
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    aget-object v7, p2, v4

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v2, v4

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 354
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "c1I":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v2    # "dataI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v4    # "j":I
    :cond_1
    return-void
.end method
