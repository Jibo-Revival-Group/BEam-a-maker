.class public Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BracketingNthOrderBrentSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver",
        "<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6

.field private static final DEFAULT_MAXIMAL_ORDER:I = 0x5

.field private static final MAXIMAL_AGING:I = 0x2

.field private static final REDUCTION_FACTOR:D = 0.0625


# instance fields
.field private allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field private final maximalOrder:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    .line 70
    return-void
.end method

.method public constructor <init>(DDDI)V
    .locals 5
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D
    .param p7, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 124
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    .line 125
    if-ge p7, v2, :cond_0

    .line 126
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 128
    :cond_0
    iput p7, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 129
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 130
    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 5
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 103
    if-ge p5, v2, :cond_0

    .line 104
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 106
    :cond_0
    iput p5, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 107
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 108
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 5
    .param p1, "absoluteAccuracy"    # D
    .param p3, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 83
    if-ge p3, v2, :cond_0

    .line 84
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 86
    :cond_0
    iput p3, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 87
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 88
    return-void
.end method

.method private guessX(D[D[DII)D
    .locals 15
    .param p1, "targetY"    # D
    .param p3, "x"    # [D
    .param p4, "y"    # [D
    .param p5, "start"    # I
    .param p6, "end"    # I

    .prologue
    .line 373
    move/from16 v3, p5

    .local v3, "i":I
    :goto_0
    add-int/lit8 v5, p6, -0x1

    if-ge v3, v5, :cond_1

    .line 374
    add-int/lit8 v5, v3, 0x1

    sub-int v2, v5, p5

    .line 375
    .local v2, "delta":I
    add-int/lit8 v4, p6, -0x1

    .local v4, "j":I
    :goto_1
    if-le v4, v3, :cond_0

    .line 376
    aget-wide v8, p3, v4

    add-int/lit8 v5, v4, -0x1

    aget-wide v10, p3, v5

    sub-double/2addr v8, v10

    aget-wide v10, p4, v4

    sub-int v5, v4, v2

    aget-wide v12, p4, v5

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    aput-wide v8, p3, v4

    .line 375
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 373
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "delta":I
    .end local v4    # "j":I
    :cond_1
    const-wide/16 v6, 0x0

    .line 382
    .local v6, "x0":D
    add-int/lit8 v4, p6, -0x1

    .restart local v4    # "j":I
    :goto_2
    move/from16 v0, p5

    if-lt v4, v0, :cond_2

    .line 383
    aget-wide v8, p3, v4

    aget-wide v10, p4, v4

    sub-double v10, p1, v10

    mul-double/2addr v10, v6

    add-double v6, v8, v10

    .line 382
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 386
    :cond_2
    return-wide v6
.end method


# virtual methods
.method protected doSolve()D
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [D

    move-object/from16 v30, v0

    .line 149
    .local v30, "x":[D
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [D

    move-object/from16 v31, v0

    .line 150
    .local v31, "y":[D
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getMin()D

    move-result-wide v12

    aput-wide v12, v30, v5

    .line 151
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getStartValue()D

    move-result-wide v12

    aput-wide v12, v30, v5

    .line 152
    const/4 v5, 0x2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getMax()D

    move-result-wide v12

    aput-wide v12, v30, v5

    .line 153
    const/4 v5, 0x0

    aget-wide v6, v30, v5

    const/4 v5, 0x1

    aget-wide v8, v30, v5

    const/4 v5, 0x2

    aget-wide v10, v30, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->verifySequence(DDD)V

    .line 156
    const/4 v5, 0x1

    const/4 v9, 0x1

    aget-wide v12, v30, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v12

    aput-wide v12, v31, v5

    .line 157
    const/4 v5, 0x1

    aget-wide v12, v31, v5

    const-wide/16 v42, 0x0

    const/4 v5, 0x1

    move-wide/from16 v0, v42

    invoke-static {v12, v13, v0, v1, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    const/4 v5, 0x1

    aget-wide v32, v30, v5

    .line 295
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v32

    .line 163
    :cond_1
    const/4 v5, 0x0

    const/4 v9, 0x0

    aget-wide v12, v30, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v12

    aput-wide v12, v31, v5

    .line 164
    const/4 v5, 0x0

    aget-wide v12, v31, v5

    const-wide/16 v42, 0x0

    const/4 v5, 0x1

    move-wide/from16 v0, v42

    invoke-static {v12, v13, v0, v1, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    const/4 v5, 0x0

    aget-wide v32, v30, v5

    goto :goto_0

    .line 171
    :cond_2
    const/4 v5, 0x0

    aget-wide v12, v31, v5

    const/4 v5, 0x1

    aget-wide v42, v31, v5

    mul-double v12, v12, v42

    const-wide/16 v42, 0x0

    cmpg-double v5, v12, v42

    if-gez v5, :cond_4

    .line 174
    const/16 v19, 0x2

    .line 175
    .local v19, "nbPoints":I
    const/16 v25, 0x1

    .line 197
    .local v25, "signChangeIndex":I
    :goto_1
    move-object/from16 v0, v30

    array-length v5, v0

    new-array v8, v5, [D

    .line 200
    .local v8, "tmpX":[D
    add-int/lit8 v5, v25, -0x1

    aget-wide v32, v30, v5

    .line 201
    .local v32, "xA":D
    add-int/lit8 v5, v25, -0x1

    aget-wide v38, v31, v5

    .line 202
    .local v38, "yA":D
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    .line 203
    .local v14, "absYA":D
    const/4 v4, 0x0

    .line 204
    .local v4, "agingA":I
    aget-wide v34, v30, v25

    .line 205
    .local v34, "xB":D
    aget-wide v40, v31, v25

    .line 206
    .local v40, "yB":D
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    .line 207
    .local v16, "absYB":D
    const/16 v18, 0x0

    .line 213
    .local v18, "agingB":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getAbsoluteAccuracy()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getRelativeAccuracy()D

    move-result-wide v42

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v44

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    invoke-static/range {v44 .. v47}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v44

    mul-double v42, v42, v44

    add-double v36, v12, v42

    .line 215
    .local v36, "xTol":D
    sub-double v12, v34, v32

    cmpg-double v5, v12, v36

    if-lez v5, :cond_3

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getFunctionValueAccuracy()D

    move-result-wide v42

    cmpg-double v5, v12, v42

    if-gez v5, :cond_8

    .line 216
    :cond_3
    sget-object v5, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v9}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v9

    aget v5, v5, v9

    packed-switch v5, :pswitch_data_0

    .line 229
    new-instance v5, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v5

    .line 180
    .end local v4    # "agingA":I
    .end local v8    # "tmpX":[D
    .end local v14    # "absYA":D
    .end local v16    # "absYB":D
    .end local v18    # "agingB":I
    .end local v19    # "nbPoints":I
    .end local v25    # "signChangeIndex":I
    .end local v32    # "xA":D
    .end local v34    # "xB":D
    .end local v36    # "xTol":D
    .end local v38    # "yA":D
    .end local v40    # "yB":D
    :cond_4
    const/4 v5, 0x2

    const/4 v9, 0x2

    aget-wide v12, v30, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v12

    aput-wide v12, v31, v5

    .line 181
    const/4 v5, 0x2

    aget-wide v12, v31, v5

    const-wide/16 v42, 0x0

    const/4 v5, 0x1

    move-wide/from16 v0, v42

    invoke-static {v12, v13, v0, v1, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    const/4 v5, 0x2

    aget-wide v32, v30, v5

    goto/16 :goto_0

    .line 186
    :cond_5
    const/4 v5, 0x1

    aget-wide v12, v31, v5

    const/4 v5, 0x2

    aget-wide v42, v31, v5

    mul-double v12, v12, v42

    const-wide/16 v42, 0x0

    cmpg-double v5, v12, v42

    if-gez v5, :cond_6

    .line 188
    const/16 v19, 0x3

    .line 189
    .restart local v19    # "nbPoints":I
    const/16 v25, 0x2

    .restart local v25    # "signChangeIndex":I
    goto/16 :goto_1

    .line 191
    .end local v19    # "nbPoints":I
    .end local v25    # "signChangeIndex":I
    :cond_6
    new-instance v5, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/4 v9, 0x0

    aget-wide v6, v30, v9

    const/4 v9, 0x2

    aget-wide v8, v30, v9

    const/4 v12, 0x0

    aget-wide v10, v31, v12

    const/4 v12, 0x2

    aget-wide v12, v31, v12

    invoke-direct/range {v5 .. v13}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v5

    .line 218
    .restart local v4    # "agingA":I
    .restart local v8    # "tmpX":[D
    .restart local v14    # "absYA":D
    .restart local v16    # "absYB":D
    .restart local v18    # "agingB":I
    .restart local v19    # "nbPoints":I
    .restart local v25    # "signChangeIndex":I
    .restart local v32    # "xA":D
    .restart local v34    # "xB":D
    .restart local v36    # "xTol":D
    .restart local v38    # "yA":D
    .restart local v40    # "yB":D
    :pswitch_1
    cmpg-double v5, v14, v16

    if-ltz v5, :cond_0

    move-wide/from16 v32, v34

    goto/16 :goto_0

    :pswitch_2
    move-wide/from16 v32, v34

    .line 222
    goto/16 :goto_0

    .line 224
    :pswitch_3
    const-wide/16 v12, 0x0

    cmpg-double v5, v38, v12

    if-lez v5, :cond_0

    move-wide/from16 v32, v34

    goto/16 :goto_0

    .line 226
    :pswitch_4
    const-wide/16 v12, 0x0

    cmpg-double v5, v38, v12

    if-gez v5, :cond_7

    .end local v34    # "xB":D
    :goto_3
    move-wide/from16 v32, v34

    goto/16 :goto_0

    .restart local v34    # "xB":D
    :cond_7
    move-wide/from16 v34, v32

    goto :goto_3

    .line 235
    :cond_8
    const/4 v5, 0x2

    if-lt v4, v5, :cond_e

    .line 237
    add-int/lit8 v24, v4, -0x2

    .line 238
    .local v24, "p":I
    const/4 v5, 0x1

    shl-int v5, v5, v24

    add-int/lit8 v5, v5, -0x1

    int-to-double v0, v5

    move-wide/from16 v26, v0

    .line 239
    .local v26, "weightA":D
    add-int/lit8 v5, v24, 0x1

    int-to-double v0, v5

    move-wide/from16 v28, v0

    .line 240
    .local v28, "weightB":D
    mul-double v12, v26, v38

    const-wide/high16 v42, 0x3fb0000000000000L    # 0.0625

    mul-double v42, v42, v28

    mul-double v42, v42, v40

    sub-double v12, v12, v42

    add-double v42, v26, v28

    div-double v6, v12, v42

    .line 254
    .end local v24    # "p":I
    .end local v26    # "weightA":D
    .end local v28    # "weightB":D
    .local v6, "targetY":D
    :goto_4
    const/4 v10, 0x0

    .line 255
    .local v10, "start":I
    move/from16 v11, v19

    .line 259
    .local v11, "end":I
    :cond_9
    sub-int v5, v11, v10

    move-object/from16 v0, v30

    invoke-static {v0, v10, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v5, p0

    move-object/from16 v9, v31

    .line 260
    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->guessX(D[D[DII)D

    move-result-wide v20

    .line 262
    .local v20, "nextX":D
    cmpl-double v5, v20, v32

    if-lez v5, :cond_a

    cmpg-double v5, v20, v34

    if-ltz v5, :cond_b

    .line 268
    :cond_a
    sub-int v5, v25, v10

    sub-int v9, v11, v25

    if-lt v5, v9, :cond_10

    .line 270
    add-int/lit8 v10, v10, 0x1

    .line 277
    :goto_5
    const-wide/high16 v20, 0x7ff8000000000000L    # Double.NaN

    .line 281
    :cond_b
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_c

    sub-int v5, v11, v10

    const/4 v9, 0x1

    if-gt v5, v9, :cond_9

    .line 283
    :cond_c
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 285
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double v42, v34, v32

    mul-double v12, v12, v42

    add-double v20, v32, v12

    .line 286
    add-int/lit8 v10, v25, -0x1

    .line 287
    move/from16 v11, v25

    .line 291
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v22

    .line 292
    .local v22, "nextY":D
    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v12, v13, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v5

    if-eqz v5, :cond_11

    move-wide/from16 v32, v20

    .line 295
    goto/16 :goto_0

    .line 241
    .end local v6    # "targetY":D
    .end local v10    # "start":I
    .end local v11    # "end":I
    .end local v20    # "nextX":D
    .end local v22    # "nextY":D
    :cond_e
    const/4 v5, 0x2

    move/from16 v0, v18

    if-lt v0, v5, :cond_f

    .line 243
    add-int/lit8 v24, v18, -0x2

    .line 244
    .restart local v24    # "p":I
    add-int/lit8 v5, v24, 0x1

    int-to-double v0, v5

    move-wide/from16 v26, v0

    .line 245
    .restart local v26    # "weightA":D
    const/4 v5, 0x1

    shl-int v5, v5, v24

    add-int/lit8 v5, v5, -0x1

    int-to-double v0, v5

    move-wide/from16 v28, v0

    .line 246
    .restart local v28    # "weightB":D
    mul-double v12, v28, v40

    const-wide/high16 v42, 0x3fb0000000000000L    # 0.0625

    mul-double v42, v42, v26

    mul-double v42, v42, v38

    sub-double v12, v12, v42

    add-double v42, v26, v28

    div-double v6, v12, v42

    .line 247
    .restart local v6    # "targetY":D
    goto :goto_4

    .line 249
    .end local v6    # "targetY":D
    .end local v24    # "p":I
    .end local v26    # "weightA":D
    .end local v28    # "weightB":D
    :cond_f
    const-wide/16 v6, 0x0

    .restart local v6    # "targetY":D
    goto :goto_4

    .line 273
    .restart local v10    # "start":I
    .restart local v11    # "end":I
    .restart local v20    # "nextX":D
    :cond_10
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 298
    .restart local v22    # "nextY":D
    :cond_11
    const/4 v5, 0x2

    move/from16 v0, v19

    if-le v0, v5, :cond_13

    sub-int v5, v11, v10

    move/from16 v0, v19

    if-eq v5, v0, :cond_13

    .line 302
    sub-int v19, v11, v10

    .line 303
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    const/4 v5, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    sub-int v25, v25, v10

    .line 324
    :cond_12
    :goto_6
    add-int/lit8 v5, v25, 0x1

    sub-int v9, v19, v25

    move-object/from16 v0, v30

    move/from16 v1, v25

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    aput-wide v20, v30, v25

    .line 326
    add-int/lit8 v5, v25, 0x1

    sub-int v9, v19, v25

    move-object/from16 v0, v31

    move/from16 v1, v25

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    aput-wide v22, v31, v25

    .line 328
    add-int/lit8 v19, v19, 0x1

    .line 331
    mul-double v12, v22, v38

    const-wide/16 v42, 0x0

    cmpg-double v5, v12, v42

    if-gtz v5, :cond_14

    .line 333
    move-wide/from16 v34, v20

    .line 334
    move-wide/from16 v40, v22

    .line 335
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 337
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 307
    :cond_13
    move-object/from16 v0, v30

    array-length v5, v0

    move/from16 v0, v19

    if-ne v0, v5, :cond_12

    .line 310
    add-int/lit8 v19, v19, -0x1

    .line 313
    move-object/from16 v0, v30

    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    move/from16 v0, v25

    if-lt v0, v5, :cond_12

    .line 315
    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-static {v0, v5, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move/from16 v2, v19

    invoke-static {v0, v5, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    add-int/lit8 v25, v25, -0x1

    goto :goto_6

    .line 340
    :cond_14
    move-wide/from16 v32, v20

    .line 341
    move-wide/from16 v38, v22

    .line 342
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    .line 343
    const/4 v4, 0x0

    .line 344
    add-int/lit8 v18, v18, 0x1

    .line 347
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMaximalOrder()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    return v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D
    .param p9, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 407
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 408
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 396
    iput-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 397
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v0

    return-wide v0
.end method
