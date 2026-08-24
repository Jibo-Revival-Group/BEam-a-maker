.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "BOBYQAOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer$PathIsExploredException;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_RADIUS:D = 10.0

.field public static final DEFAULT_STOPPING_RADIUS:D = 1.0E-8

.field private static final HALF:D = 0.5

.field public static final MINIMUM_PROBLEM_DIMENSION:I = 0x2

.field private static final MINUS_ONE:D = -1.0

.field private static final ONE:D = 1.0

.field private static final ONE_OVER_A_THOUSAND:D = 0.001

.field private static final ONE_OVER_EIGHT:D = 0.125

.field private static final ONE_OVER_FOUR:D = 0.25

.field private static final ONE_OVER_TEN:D = 0.1

.field private static final SIXTEEN:D = 16.0

.field private static final TEN:D = 10.0

.field private static final TWO:D = 2.0

.field private static final TWO_HUNDRED_FIFTY:D = 250.0

.field private static final ZERO:D


# instance fields
.field private alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private boundDifference:[D

.field private currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private initialTrustRegionRadius:D

.field private interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private isMinimize:Z

.field private lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final numberOfInterpolationPoints:I

.field private originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final stoppingTrustRegionRadius:D

.field private trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private trustRegionCenterInterpolationPointIndex:I

.field private trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfInterpolationPoints"    # I

    .prologue
    .line 218
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;-><init>(IDD)V

    .line 221
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 2
    .param p1, "numberOfInterpolationPoints"    # I
    .param p2, "initialTrustRegionRadius"    # D
    .param p4, "stoppingTrustRegionRadius"    # D

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 235
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 236
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 237
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    .line 238
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 49
    invoke-static {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->caller(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private altmov(ID)[D
    .locals 88
    .param p1, "knew"    # I
    .param p2, "adelt"    # D

    .prologue
    .line 1270
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    invoke-virtual/range {v82 .. v82}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v52

    .line 1273
    .local v52, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v53, v0

    .line 1275
    .local v53, "npt":I
    new-instance v32, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1276
    .local v32, "glag":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v33, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1278
    .local v33, "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v80, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v80

    move/from16 v1, v52

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1279
    .local v80, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v81, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v81

    move/from16 v1, v52

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1281
    .local v81, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const/16 v47, 0x0

    .local v47, "k":I
    :goto_0
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_0

    .line 1282
    const-wide/16 v82, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v47

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1281
    add-int/lit8 v47, v47, 0x1

    goto :goto_0

    .line 1284
    :cond_0
    const/16 v46, 0x0

    .local v46, "j":I
    sub-int v82, v53, v52

    add-int/lit8 v49, v82, -0x1

    .local v49, "max":I
    :goto_1
    move/from16 v0, v46

    move/from16 v1, v49

    if-ge v0, v1, :cond_2

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, p1

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v70

    .line 1286
    .local v70, "tmp":D
    const/16 v47, 0x0

    :goto_2
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_1

    .line 1287
    move-object/from16 v0, v33

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v84

    mul-double v84, v84, v70

    add-double v82, v82, v84

    move-object/from16 v0, v33

    move/from16 v1, v47

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1286
    add-int/lit8 v47, v47, 0x1

    goto :goto_2

    .line 1284
    :cond_1
    add-int/lit8 v46, v46, 0x1

    goto :goto_1

    .line 1290
    .end local v70    # "tmp":D
    :cond_2
    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    .line 1291
    .local v4, "alpha":D
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v38, v82, v4

    .line 1295
    .local v38, "ha":D
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_3
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_3

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, v32

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1295
    add-int/lit8 v40, v40, 0x1

    goto :goto_3

    .line 1298
    :cond_3
    const/16 v47, 0x0

    :goto_4
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_6

    .line 1299
    const-wide/16 v70, 0x0

    .line 1300
    .restart local v70    # "tmp":D
    const/16 v46, 0x0

    :goto_5
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_4

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v82, v82, v84

    add-double v70, v70, v82

    .line 1300
    add-int/lit8 v46, v46, 0x1

    goto :goto_5

    .line 1303
    :cond_4
    move-object/from16 v0, v33

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v70, v70, v82

    .line 1304
    const/16 v40, 0x0

    :goto_6
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_5

    .line 1305
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v47

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v84

    mul-double v84, v84, v70

    add-double v82, v82, v84

    move-object/from16 v0, v32

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1304
    add-int/lit8 v40, v40, 0x1

    goto :goto_6

    .line 1298
    :cond_5
    add-int/lit8 v47, v47, 0x1

    goto :goto_4

    .line 1315
    .end local v70    # "tmp":D
    :cond_6
    const-wide/16 v56, 0x0

    .line 1316
    .local v56, "presav":D
    const-wide/high16 v62, 0x7ff8000000000000L    # Double.NaN

    .line 1317
    .local v62, "step":D
    const/16 v48, 0x0

    .line 1318
    .local v48, "ksav":I
    const/16 v41, 0x0

    .line 1319
    .local v41, "ibdsav":I
    const-wide/16 v64, 0x0

    .line 1320
    .local v64, "stpsav":D
    const/16 v47, 0x0

    :goto_7
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_14

    .line 1321
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v82, v0

    move/from16 v0, v47

    move/from16 v1, v82

    if-ne v0, v1, :cond_8

    .line 1320
    :cond_7
    :goto_8
    add-int/lit8 v47, v47, 0x1

    goto :goto_7

    .line 1324
    :cond_8
    const-wide/16 v24, 0x0

    .line 1325
    .local v24, "dderiv":D
    const-wide/16 v28, 0x0

    .line 1326
    .local v28, "distsq":D
    const/16 v40, 0x0

    :goto_9
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_9

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v47

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v70, v82, v84

    .line 1328
    .restart local v70    # "tmp":D
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v70

    add-double v24, v24, v82

    .line 1329
    mul-double v82, v70, v70

    add-double v28, v28, v82

    .line 1326
    add-int/lit8 v40, v40, 0x1

    goto :goto_9

    .line 1331
    .end local v70    # "tmp":D
    :cond_9
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v82

    div-double v66, p2, v82

    .line 1332
    .local v66, "subd":D
    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v60, v0

    .line 1333
    .local v60, "slbd":D
    const/16 v43, 0x0

    .line 1334
    .local v43, "ilbd":I
    const/16 v45, 0x0

    .line 1335
    .local v45, "iubd":I
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v82

    move-wide/from16 v2, v66

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v68

    .line 1339
    .local v68, "sumin":D
    const/16 v40, 0x0

    :goto_a
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_e

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v47

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v70, v82, v84

    .line 1341
    .restart local v70    # "tmp":D
    const-wide/16 v82, 0x0

    cmpl-double v82, v70, v82

    if-lez v82, :cond_c

    .line 1342
    mul-double v82, v60, v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    cmpg-double v82, v82, v84

    if-gez v82, :cond_a

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    div-double v60, v82, v70

    .line 1344
    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v82, v0

    add-int/lit8 v43, v82, -0x1

    .line 1346
    :cond_a
    mul-double v82, v66, v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    cmpl-double v82, v82, v84

    if-lez v82, :cond_b

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    div-double v82, v82, v70

    move-wide/from16 v0, v68

    move-wide/from16 v2, v82

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v66

    .line 1350
    add-int/lit8 v45, v40, 0x1

    .line 1339
    :cond_b
    :goto_b
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_a

    .line 1352
    :cond_c
    const-wide/16 v82, 0x0

    cmpg-double v82, v70, v82

    if-gez v82, :cond_b

    .line 1353
    mul-double v82, v60, v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    cmpl-double v82, v82, v84

    if-lez v82, :cond_d

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    div-double v60, v82, v70

    .line 1355
    add-int/lit8 v43, v40, 0x1

    .line 1357
    :cond_d
    mul-double v82, v66, v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    cmpg-double v82, v82, v84

    if-gez v82, :cond_b

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    div-double v82, v82, v70

    move-wide/from16 v0, v68

    move-wide/from16 v2, v82

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v66

    .line 1361
    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v82, v0

    add-int/lit8 v45, v82, -0x1

    goto/16 :goto_b

    .line 1369
    .end local v70    # "tmp":D
    :cond_e
    move-wide/from16 v62, v60

    .line 1370
    move/from16 v44, v43

    .line 1371
    .local v44, "isbd":I
    const-wide/high16 v76, 0x7ff8000000000000L    # Double.NaN

    .line 1372
    .local v76, "vlag":D
    move/from16 v0, v47

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 1373
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v26, v24, v82

    .line 1374
    .local v26, "diff":D
    mul-double v82, v60, v26

    sub-double v82, v24, v82

    mul-double v76, v60, v82

    .line 1375
    mul-double v82, v66, v26

    sub-double v82, v24, v82

    mul-double v14, v66, v82

    .line 1376
    .local v14, "d1":D
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v84

    cmpl-double v82, v82, v84

    if-lez v82, :cond_f

    .line 1377
    move-wide/from16 v62, v66

    .line 1378
    move-wide/from16 v76, v14

    .line 1379
    move/from16 v44, v45

    .line 1381
    :cond_f
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v16, v82, v24

    .line 1382
    .local v16, "d2":D
    mul-double v82, v26, v60

    sub-double v18, v16, v82

    .line 1383
    .local v18, "d3":D
    mul-double v82, v26, v66

    sub-double v20, v16, v82

    .line 1384
    .local v20, "d4":D
    mul-double v82, v18, v20

    const-wide/16 v84, 0x0

    cmpg-double v82, v82, v84

    if-gez v82, :cond_10

    .line 1385
    mul-double v82, v16, v16

    div-double v22, v82, v26

    .line 1386
    .local v22, "d5":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v84

    cmpl-double v82, v82, v84

    if-lez v82, :cond_10

    .line 1387
    div-double v62, v16, v26

    .line 1388
    move-wide/from16 v76, v22

    .line 1389
    const/16 v44, 0x0

    .line 1413
    .end local v14    # "d1":D
    .end local v16    # "d2":D
    .end local v18    # "d3":D
    .end local v20    # "d4":D
    .end local v22    # "d5":D
    .end local v26    # "diff":D
    :cond_10
    :goto_c
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v82, v82, v62

    mul-double v82, v82, v62

    mul-double v70, v82, v28

    .line 1414
    .restart local v70    # "tmp":D
    mul-double v82, v76, v76

    mul-double v84, v76, v76

    mul-double v86, v38, v70

    mul-double v86, v86, v70

    add-double v84, v84, v86

    mul-double v54, v82, v84

    .line 1415
    .local v54, "predsq":D
    cmpl-double v82, v54, v56

    if-lez v82, :cond_7

    .line 1416
    move-wide/from16 v56, v54

    .line 1417
    move/from16 v48, v47

    .line 1418
    move-wide/from16 v64, v62

    .line 1419
    move/from16 v41, v44

    goto/16 :goto_8

    .line 1396
    .end local v54    # "predsq":D
    .end local v70    # "tmp":D
    :cond_11
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v82, v82, v60

    mul-double v76, v60, v82

    .line 1397
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v82, v82, v66

    mul-double v70, v66, v82

    .line 1398
    .restart local v70    # "tmp":D
    invoke-static/range {v70 .. v71}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v84

    cmpl-double v82, v82, v84

    if-lez v82, :cond_12

    .line 1399
    move-wide/from16 v62, v66

    .line 1400
    move-wide/from16 v76, v70

    .line 1401
    move/from16 v44, v45

    .line 1403
    :cond_12
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    cmpl-double v82, v66, v82

    if-lez v82, :cond_13

    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    const-wide/high16 v84, 0x3fd0000000000000L    # 0.25

    cmpg-double v82, v82, v84

    if-gez v82, :cond_13

    .line 1404
    const-wide/high16 v62, 0x3fe0000000000000L    # 0.5

    .line 1405
    const-wide/high16 v76, 0x3fd0000000000000L    # 0.25

    .line 1406
    const/16 v44, 0x0

    .line 1408
    :cond_13
    mul-double v76, v76, v24

    goto :goto_c

    .line 1425
    .end local v24    # "dderiv":D
    .end local v28    # "distsq":D
    .end local v43    # "ilbd":I
    .end local v44    # "isbd":I
    .end local v45    # "iubd":I
    .end local v60    # "slbd":D
    .end local v66    # "subd":D
    .end local v68    # "sumin":D
    .end local v70    # "tmp":D
    .end local v76    # "vlag":D
    :cond_14
    const/16 v40, 0x0

    :goto_d
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v48

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    mul-double v84, v84, v64

    add-double v70, v82, v84

    .line 1427
    .restart local v70    # "tmp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    move-wide/from16 v0, v86

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v86

    invoke-static/range {v84 .. v87}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1425
    add-int/lit8 v40, v40, 0x1

    goto :goto_d

    .line 1430
    .end local v70    # "tmp":D
    :cond_15
    if-gez v41, :cond_16

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v83, v0

    add-int/lit8 v83, v83, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v85, v0

    add-int/lit8 v85, v85, -0x1

    invoke-virtual/range {v84 .. v85}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    invoke-virtual/range {v82 .. v85}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1433
    :cond_16
    if-lez v41, :cond_17

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    add-int/lit8 v83, v41, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    add-int/lit8 v85, v41, -0x1

    invoke-virtual/range {v84 .. v85}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    invoke-virtual/range {v82 .. v85}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1441
    :cond_17
    add-double v6, p2, p2

    .line 1442
    .local v6, "bigstp":D
    const/16 v42, 0x0

    .line 1443
    .local v42, "iflag":I
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 1444
    .local v8, "cauchy":D
    const-wide/16 v10, 0x0

    .line 1446
    .local v10, "csave":D
    :goto_e
    const-wide/16 v78, 0x0

    .line 1447
    .local v78, "wfixsq":D
    const-wide/16 v30, 0x0

    .line 1448
    .local v30, "ggfree":D
    const/16 v40, 0x0

    :goto_f
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_1a

    .line 1449
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    .line 1450
    .local v34, "glagValue":D
    const-wide/16 v82, 0x0

    move-object/from16 v0, v80

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    move-wide/from16 v0, v82

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v82

    const-wide/16 v84, 0x0

    cmpl-double v82, v82, v84

    if-gtz v82, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    move-wide/from16 v0, v82

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v82

    const-wide/16 v84, 0x0

    cmpg-double v82, v82, v84

    if-gez v82, :cond_19

    .line 1453
    :cond_18
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1455
    mul-double v82, v34, v34

    add-double v30, v30, v82

    .line 1448
    :cond_19
    add-int/lit8 v40, v40, 0x1

    goto :goto_f

    .line 1458
    .end local v34    # "glagValue":D
    :cond_1a
    const-wide/16 v82, 0x0

    cmpl-double v82, v30, v82

    if-nez v82, :cond_1b

    .line 1459
    const/16 v82, 0x2

    move/from16 v0, v82

    new-array v0, v0, [D

    move-object/from16 v82, v0

    const/16 v83, 0x0

    aput-wide v4, v82, v83

    const/16 v83, 0x1

    const-wide/16 v84, 0x0

    aput-wide v84, v82, v83

    .line 1565
    :goto_10
    return-object v82

    .line 1463
    :cond_1b
    mul-double v82, p2, p2

    sub-double v72, v82, v78

    .line 1464
    .local v72, "tmp1":D
    const-wide/16 v82, 0x0

    cmpl-double v82, v72, v82

    if-lez v82, :cond_1f

    .line 1465
    div-double v82, v72, v30

    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v62

    .line 1466
    const-wide/16 v30, 0x0

    .line 1467
    const/16 v40, 0x0

    :goto_11
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_1f

    .line 1468
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v82, v82, v6

    if-nez v82, :cond_1c

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v84, v84, v62

    sub-double v74, v82, v84

    .line 1470
    .local v74, "tmp2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpg-double v82, v74, v82

    if-gtz v82, :cond_1d

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    move-object/from16 v0, v80

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1473
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    .line 1474
    .restart local v14    # "d1":D
    mul-double v82, v14, v14

    add-double v78, v78, v82

    .line 1467
    .end local v14    # "d1":D
    .end local v74    # "tmp2":D
    :cond_1c
    :goto_12
    add-int/lit8 v40, v40, 0x1

    goto :goto_11

    .line 1475
    .restart local v74    # "tmp2":D
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v82, v74, v82

    if-ltz v82, :cond_1e

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    move-object/from16 v0, v80

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1478
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    .line 1479
    .restart local v14    # "d1":D
    mul-double v82, v14, v14

    add-double v78, v78, v82

    .line 1480
    goto :goto_12

    .line 1482
    .end local v14    # "d1":D
    :cond_1e
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    .line 1483
    .restart local v14    # "d1":D
    mul-double v82, v14, v14

    add-double v30, v30, v82

    goto :goto_12

    .line 1492
    .end local v14    # "d1":D
    .end local v74    # "tmp2":D
    :cond_1f
    const-wide/16 v36, 0x0

    .line 1493
    .local v36, "gw":D
    const/16 v40, 0x0

    :goto_13
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_23

    .line 1494
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    .line 1495
    .restart local v34    # "glagValue":D
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v82, v82, v6

    if-nez v82, :cond_20

    .line 1496
    move-wide/from16 v0, v62

    neg-double v0, v0

    move-wide/from16 v82, v0

    mul-double v82, v82, v34

    move-object/from16 v0, v80

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    add-double v84, v84, v86

    invoke-static/range {v82 .. v85}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v50

    .line 1499
    .local v50, "min":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-wide/from16 v0, v84

    move-wide/from16 v2, v50

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1507
    .end local v50    # "min":D
    :goto_14
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v34

    add-double v36, v36, v82

    .line 1493
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_13

    .line 1500
    :cond_20
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    const-wide/16 v84, 0x0

    cmpl-double v82, v82, v84

    if-nez v82, :cond_21

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_14

    .line 1502
    :cond_21
    const-wide/16 v82, 0x0

    cmpl-double v82, v34, v82

    if-lez v82, :cond_22

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_14

    .line 1505
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_14

    .line 1515
    .end local v34    # "glagValue":D
    :cond_23
    const-wide/16 v12, 0x0

    .line 1516
    .local v12, "curv":D
    const/16 v47, 0x0

    :goto_15
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_25

    .line 1517
    const-wide/16 v70, 0x0

    .line 1518
    .restart local v70    # "tmp":D
    const/16 v46, 0x0

    :goto_16
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_24

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, v80

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v82, v82, v84

    add-double v70, v70, v82

    .line 1518
    add-int/lit8 v46, v46, 0x1

    goto :goto_16

    .line 1521
    :cond_24
    move-object/from16 v0, v33

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v70

    mul-double v82, v82, v70

    add-double v12, v12, v82

    .line 1516
    add-int/lit8 v47, v47, 0x1

    goto :goto_15

    .line 1523
    .end local v70    # "tmp":D
    :cond_25
    const/16 v82, 0x1

    move/from16 v0, v42

    move/from16 v1, v82

    if-ne v0, v1, :cond_26

    .line 1524
    neg-double v12, v12

    .line 1526
    :cond_26
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v82, v0

    cmpl-double v82, v12, v82

    if-lez v82, :cond_28

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v82, v0

    const-wide/high16 v84, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v86, 0x4000000000000000L    # 2.0

    invoke-static/range {v86 .. v87}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v86

    add-double v84, v84, v86

    mul-double v82, v82, v84

    cmpg-double v82, v12, v82

    if-gez v82, :cond_28

    .line 1528
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v82, v0

    div-double v58, v82, v12

    .line 1529
    .local v58, "scale":D
    const/16 v40, 0x0

    :goto_17
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_27

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v84, v84, v58

    add-double v70, v82, v84

    .line 1531
    .restart local v70    # "tmp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    move-wide/from16 v0, v86

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v86

    invoke-static/range {v84 .. v87}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1529
    add-int/lit8 v40, v40, 0x1

    goto :goto_17

    .line 1535
    .end local v70    # "tmp":D
    :cond_27
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v82, v82, v36

    mul-double v14, v82, v58

    .line 1536
    .restart local v14    # "d1":D
    mul-double v8, v14, v14

    .line 1547
    .end local v58    # "scale":D
    :goto_18
    if-nez v42, :cond_2a

    .line 1548
    const/16 v40, 0x0

    :goto_19
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_29

    .line 1549
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-wide/from16 v0, v82

    neg-double v0, v0

    move-wide/from16 v82, v0

    move-object/from16 v0, v32

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, v81

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1548
    add-int/lit8 v40, v40, 0x1

    goto :goto_19

    .line 1539
    .end local v14    # "d1":D
    :cond_28
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v82, v82, v12

    add-double v14, v36, v82

    .line 1540
    .restart local v14    # "d1":D
    mul-double v8, v14, v14

    goto :goto_18

    .line 1552
    :cond_29
    move-wide v10, v8

    .line 1553
    const/16 v42, 0x1

    .line 1557
    goto/16 :goto_e

    .line 1558
    :cond_2a
    cmpl-double v82, v10, v8

    if-lez v82, :cond_2c

    .line 1559
    const/16 v40, 0x0

    :goto_1a
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_2b

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v81

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1559
    add-int/lit8 v40, v40, 0x1

    goto :goto_1a

    .line 1562
    :cond_2b
    move-wide v8, v10

    .line 1565
    :cond_2c
    const/16 v82, 0x2

    move/from16 v0, v82

    new-array v0, v0, [D

    move-object/from16 v82, v0

    const/16 v83, 0x0

    aput-wide v4, v82, v83

    const/16 v83, 0x1

    aput-wide v8, v82, v83

    goto/16 :goto_10
.end method

.method private bobyqa([D[D)D
    .locals 14
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .prologue
    .line 295
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 297
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v7

    .line 306
    .local v7, "n":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 307
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v0, v8, v6

    .line 308
    .local v0, "boundDiff":D
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 309
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p2, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 310
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 311
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    .line 312
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p1, v6

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 313
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 314
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 316
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p1, v6

    iget-wide v12, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    add-double/2addr v10, v12

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 317
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v10, v10

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 319
    aget-wide v8, p2, v6

    iget-object v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    sub-double v2, v8, v10

    .line 320
    .local v2, "deltaOne":D
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-static {v2, v3, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 322
    .end local v2    # "deltaOne":D
    :cond_2
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 323
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_3

    .line 324
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p2, v6

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 325
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-double v10, v0

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 326
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 328
    :cond_3
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p2, v6

    iget-wide v12, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    sub-double/2addr v10, v12

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 330
    aget-wide v8, p1, v6

    iget-object v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    sub-double v2, v8, v10

    .line 331
    .restart local v2    # "deltaOne":D
    iget-wide v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v4, v8

    .line 332
    .local v4, "deltaTwo":D
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v10

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 333
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 340
    .end local v0    # "boundDiff":D
    .end local v2    # "deltaOne":D
    .end local v4    # "deltaTwo":D
    :cond_4
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqb([D[D)D

    move-result-wide v8

    return-wide v8
.end method

.method private bobyqb([D[D)D
    .locals 150
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .prologue
    .line 384
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 386
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v107

    .line 387
    .local v107, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v111, v0

    .line 388
    .local v111, "npt":I
    add-int/lit8 v110, v107, 0x1

    .line 389
    .local v110, "np":I
    sub-int v112, v111, v110

    .line 390
    .local v112, "nptm":I
    mul-int v5, v107, v110

    div-int/lit8 v109, v5, 0x2

    .line 392
    .local v109, "nh":I
    new-instance v123, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v123

    move/from16 v1, v107

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 393
    .local v123, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v140, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v140

    move/from16 v1, v111

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 394
    .local v140, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v141, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v141

    move/from16 v1, v111

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 396
    .local v141, "work3":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const-wide/high16 v32, 0x7ff8000000000000L    # Double.NaN

    .line 397
    .local v32, "cauchy":D
    const-wide/high16 v22, 0x7ff8000000000000L    # Double.NaN

    .line 398
    .local v22, "alpha":D
    const-wide/high16 v72, 0x7ff8000000000000L    # Double.NaN

    .line 399
    .local v72, "dsq":D
    const-wide/high16 v34, 0x7ff8000000000000L    # Double.NaN

    .line 413
    .local v34, "crvmin":D
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 415
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->prelim([D[D)V

    .line 416
    const-wide/16 v142, 0x0

    .line 417
    .local v142, "xoptsq":D
    const/16 v96, 0x0

    .local v96, "i":I
    :goto_0
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v144, v0

    move/from16 v0, v144

    move/from16 v1, v96

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    .line 421
    .local v50, "deltaOne":D
    mul-double v144, v50, v50

    add-double v142, v142, v144

    .line 417
    add-int/lit8 v96, v96, 0x1

    goto :goto_0

    .line 423
    .end local v50    # "deltaOne":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    .line 424
    .local v86, "fsave":D
    const/16 v103, 0x0

    .line 428
    .local v103, "kbase":I
    const/16 v113, 0x0

    .line 429
    .local v113, "ntrits":I
    const/16 v99, 0x0

    .line 430
    .local v99, "itest":I
    const/16 v18, 0x0

    .line 431
    .local v18, "knew":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v108

    .line 432
    .local v108, "nfsav":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v118, v0

    .line 433
    .local v118, "rho":D
    move-wide/from16 v6, v118

    .line 434
    .local v6, "delta":D
    const-wide/16 v60, 0x0

    .line 435
    .local v60, "diffa":D
    const-wide/16 v62, 0x0

    .line 436
    .local v62, "diffb":D
    const-wide/16 v64, 0x0

    .line 437
    .local v64, "diffc":D
    const-wide/16 v78, 0x0

    .line 438
    .local v78, "f":D
    const-wide/16 v14, 0x0

    .line 439
    .local v14, "beta":D
    const-wide/16 v20, 0x0

    .line 440
    .local v20, "adelt":D
    const-wide/16 v16, 0x0

    .line 441
    .local v16, "denom":D
    const-wide/16 v116, 0x0

    .line 442
    .local v116, "ratio":D
    const-wide/16 v70, 0x0

    .line 443
    .local v70, "dnorm":D
    const-wide/16 v120, 0x0

    .line 444
    .local v120, "scaden":D
    const-wide/16 v28, 0x0

    .line 445
    .local v28, "biglsq":D
    const-wide/16 v68, 0x0

    .line 450
    .local v68, "distsq":D
    const/16 v122, 0x14

    .line 452
    .local v122, "state":I
    :goto_1
    sparse-switch v122, :sswitch_data_0

    .line 1227
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v144, 0x1

    move/from16 v0, v144

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v144, v0

    const/16 v145, 0x0

    const-string v146, "bobyqb"

    aput-object v146, v144, v145

    move-object/from16 v0, v144

    invoke-direct {v5, v13, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 454
    :sswitch_0
    const/16 v5, 0x14

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 455
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-eqz v5, :cond_6

    .line 456
    const/16 v97, 0x0

    .line 457
    .local v97, "ih":I
    const/16 v100, 0x0

    .local v100, "j":I
    :goto_2
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_3

    .line 458
    const/16 v96, 0x0

    :goto_3
    move/from16 v0, v96

    move/from16 v1, v100

    if-gt v0, v1, :cond_2

    .line 459
    move/from16 v0, v96

    move/from16 v1, v100

    if-ge v0, v1, :cond_1

    .line 460
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v100

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 462
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 463
    add-int/lit8 v97, v97, 0x1

    .line 458
    add-int/lit8 v96, v96, 0x1

    goto :goto_3

    .line 457
    :cond_2
    add-int/lit8 v100, v100, 0x1

    goto :goto_2

    .line 466
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v5

    move/from16 v0, v111

    if-le v5, v0, :cond_6

    .line 467
    const/16 v102, 0x0

    .local v102, "k":I
    :goto_4
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_6

    .line 468
    const-wide/16 v136, 0x0

    .line 469
    .local v136, "temp":D
    const/16 v100, 0x0

    :goto_5
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_4

    .line 470
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v136, v136, v144

    .line 469
    add-int/lit8 v100, v100, 0x1

    goto :goto_5

    .line 472
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v136, v136, v144

    .line 473
    const/16 v96, 0x0

    :goto_6
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_5

    .line 474
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 473
    add-int/lit8 v96, v96, 0x1

    goto :goto_6

    .line 467
    :cond_5
    add-int/lit8 v102, v102, 0x1

    goto :goto_4

    .line 490
    .end local v97    # "ih":I
    .end local v100    # "j":I
    .end local v102    # "k":I
    .end local v136    # "temp":D
    :cond_6
    :sswitch_1
    const/16 v5, 0x3c

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 491
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 492
    .local v8, "gnew":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v9, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v9, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 493
    .local v9, "xbdi":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v10, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v10, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 494
    .local v10, "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v11, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v11, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 495
    .local v11, "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v12, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v12, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .local v12, "hred":Lorg/apache/commons/math3/linear/ArrayRealVector;
    move-object/from16 v5, p0

    .line 497
    invoke-direct/range {v5 .. v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D

    move-result-object v19

    .line 499
    .local v19, "dsqCrvmin":[D
    const/4 v5, 0x0

    aget-wide v72, v19, v5

    .line 500
    const/4 v5, 0x1

    aget-wide v34, v19, v5

    .line 503
    move-wide/from16 v50, v6

    .line 504
    .restart local v50    # "deltaOne":D
    invoke-static/range {v72 .. v73}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v52

    .line 505
    .local v52, "deltaTwo":D
    invoke-static/range {v50 .. v53}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v70

    .line 506
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v118

    cmpg-double v5, v70, v144

    if-gez v5, :cond_e

    .line 507
    const/16 v113, -0x1

    .line 509
    const-wide/high16 v144, 0x4024000000000000L    # 10.0

    mul-double v50, v144, v118

    .line 510
    mul-double v68, v50, v50

    .line 511
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v5

    add-int/lit8 v13, v108, 0x2

    if-gt v5, v13, :cond_7

    .line 512
    const/16 v122, 0x28a

    goto/16 :goto_1

    .line 522
    :cond_7
    invoke-static/range {v60 .. v63}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v50

    .line 523
    move-wide/from16 v0, v50

    move-wide/from16 v2, v64

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v76

    .line 524
    .local v76, "errbig":D
    const-wide/high16 v144, 0x3fc0000000000000L    # 0.125

    mul-double v144, v144, v118

    mul-double v84, v144, v118

    .line 525
    .local v84, "frhosq":D
    const-wide/16 v144, 0x0

    cmpl-double v5, v34, v144

    if-lez v5, :cond_8

    mul-double v144, v84, v34

    cmpl-double v5, v76, v144

    if-lez v5, :cond_8

    .line 527
    const/16 v122, 0x28a

    goto/16 :goto_1

    .line 529
    :cond_8
    div-double v26, v76, v118

    .line 530
    .local v26, "bdtol":D
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_7
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_c

    .line 531
    move-wide/from16 v24, v26

    .line 532
    .local v24, "bdtest":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_9

    .line 533
    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    .line 535
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_a

    .line 536
    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-wide/from16 v0, v144

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 538
    :cond_a
    cmpg-double v5, v24, v26

    if-gez v5, :cond_d

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v13, v100, v100

    add-int v13, v13, v100

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    .line 540
    .local v36, "curv":D
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_8
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_b

    .line 542
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    .line 543
    .local v38, "d1":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v146, v38, v38

    mul-double v144, v144, v146

    add-double v36, v36, v144

    .line 540
    add-int/lit8 v102, v102, 0x1

    goto :goto_8

    .line 545
    .end local v38    # "d1":D
    :cond_b
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v36

    mul-double v144, v144, v118

    add-double v24, v24, v144

    .line 546
    cmpg-double v5, v24, v26

    if-gez v5, :cond_d

    .line 547
    const/16 v122, 0x28a

    .line 552
    .end local v24    # "bdtest":D
    .end local v36    # "curv":D
    .end local v102    # "k":I
    :cond_c
    const/16 v122, 0x2a8

    goto/16 :goto_1

    .line 530
    .restart local v24    # "bdtest":D
    :cond_d
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_7

    .line 554
    .end local v24    # "bdtest":D
    .end local v26    # "bdtol":D
    .end local v76    # "errbig":D
    .end local v84    # "frhosq":D
    .end local v100    # "j":I
    :cond_e
    add-int/lit8 v113, v113, 0x1

    .line 564
    .end local v8    # "gnew":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v9    # "xbdi":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v10    # "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v11    # "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v12    # "hred":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v19    # "dsqCrvmin":[D
    .end local v50    # "deltaOne":D
    .end local v52    # "deltaTwo":D
    :sswitch_2
    const/16 v5, 0x5a

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 565
    const-wide v144, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v144, v144, v142

    cmpg-double v5, v72, v144

    if-gtz v5, :cond_1e

    .line 566
    const-wide/high16 v144, 0x3fd0000000000000L    # 0.25

    mul-double v82, v142, v144

    .line 567
    .local v82, "fracsq":D
    const-wide/16 v130, 0x0

    .line 570
    .local v130, "sumpq":D
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_9
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_12

    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    add-double v130, v130, v144

    .line 572
    const-wide/high16 v144, -0x4020000000000000L    # -0.5

    mul-double v124, v144, v142

    .line 573
    .local v124, "sum":D
    const/16 v96, 0x0

    :goto_a
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_f

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 573
    add-int/lit8 v96, v96, 0x1

    goto :goto_a

    .line 577
    :cond_f
    move-object/from16 v0, v140

    move/from16 v1, v102

    move-wide/from16 v2, v124

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 578
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v124

    sub-double v136, v82, v144

    .line 579
    .restart local v136    # "temp":D
    const/16 v96, 0x0

    :goto_b
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_11

    .line 580
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 581
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    mul-double v144, v144, v124

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 582
    add-int v98, v111, v96

    .line 583
    .local v98, "ip":I
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_c
    move/from16 v0, v100

    move/from16 v1, v96

    if-gt v0, v1, :cond_10

    .line 584
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v98

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v98

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 583
    add-int/lit8 v100, v100, 0x1

    goto :goto_c

    .line 579
    :cond_10
    add-int/lit8 v96, v96, 0x1

    goto/16 :goto_b

    .line 570
    .end local v98    # "ip":I
    .end local v100    # "j":I
    :cond_11
    add-int/lit8 v102, v102, 0x1

    goto/16 :goto_9

    .line 594
    .end local v124    # "sum":D
    .end local v136    # "temp":D
    :cond_12
    const/16 v105, 0x0

    .local v105, "m":I
    :goto_d
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_19

    .line 595
    const-wide/16 v134, 0x0

    .line 596
    .local v134, "sumz":D
    const-wide/16 v132, 0x0

    .line 597
    .local v132, "sumw":D
    const/16 v102, 0x0

    :goto_e
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_13

    .line 598
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    add-double v134, v134, v144

    .line 599
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v140

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v144, v144, v146

    move/from16 v0, v102

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 600
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    add-double v132, v132, v144

    .line 597
    add-int/lit8 v102, v102, 0x1

    goto :goto_e

    .line 602
    :cond_13
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_f
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_16

    .line 603
    mul-double v144, v82, v134

    const-wide/high16 v146, 0x3fe0000000000000L    # 0.5

    mul-double v146, v146, v132

    sub-double v144, v144, v146

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v124, v144, v146

    .line 604
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_10
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_14

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 604
    add-int/lit8 v102, v102, 0x1

    goto :goto_10

    .line 607
    :cond_14
    move-object/from16 v0, v123

    move/from16 v1, v100

    move-wide/from16 v2, v124

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 608
    const/16 v102, 0x0

    :goto_11
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_15

    .line 609
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v124

    add-double v144, v144, v146

    move/from16 v0, v102

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 608
    add-int/lit8 v102, v102, 0x1

    goto :goto_11

    .line 602
    :cond_15
    add-int/lit8 v100, v100, 0x1

    goto :goto_f

    .line 614
    .end local v124    # "sum":D
    :cond_16
    const/16 v96, 0x0

    :goto_12
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_18

    .line 615
    add-int v98, v96, v111

    .line 616
    .restart local v98    # "ip":I
    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v136

    .line 617
    .restart local v136    # "temp":D
    const/16 v100, 0x0

    :goto_13
    move/from16 v0, v100

    move/from16 v1, v96

    if-gt v0, v1, :cond_17

    .line 618
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v98

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v98

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 617
    add-int/lit8 v100, v100, 0x1

    goto :goto_13

    .line 614
    :cond_17
    add-int/lit8 v96, v96, 0x1

    goto :goto_12

    .line 594
    .end local v98    # "ip":I
    .end local v136    # "temp":D
    :cond_18
    add-int/lit8 v105, v105, 0x1

    goto/16 :goto_d

    .line 628
    .end local v100    # "j":I
    .end local v132    # "sumw":D
    .end local v134    # "sumz":D
    :cond_19
    const/16 v97, 0x0

    .line 629
    .restart local v97    # "ih":I
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_14
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_1c

    .line 630
    const-wide/high16 v144, -0x4020000000000000L    # -0.5

    mul-double v144, v144, v130

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    move-object/from16 v0, v123

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 631
    const/16 v102, 0x0

    :goto_15
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_1a

    .line 632
    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move-object/from16 v0, v123

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 633
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v102

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 631
    add-int/lit8 v102, v102, 0x1

    goto :goto_15

    .line 635
    :cond_1a
    const/16 v96, 0x0

    :goto_16
    move/from16 v0, v96

    move/from16 v1, v100

    if-gt v0, v1, :cond_1b

    .line 636
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v97

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 640
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v13, v111, v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v144, v0

    add-int v145, v111, v100

    move-object/from16 v0, v144

    move/from16 v1, v145

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move/from16 v0, v100

    move-wide/from16 v1, v144

    invoke-virtual {v5, v13, v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 641
    add-int/lit8 v97, v97, 0x1

    .line 635
    add-int/lit8 v96, v96, 0x1

    goto :goto_16

    .line 629
    :cond_1b
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_14

    .line 644
    :cond_1c
    const/16 v96, 0x0

    :goto_17
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_1d

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 646
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 647
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 648
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 649
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v144, 0x0

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 644
    add-int/lit8 v96, v96, 0x1

    goto/16 :goto_17

    .line 651
    :cond_1d
    const-wide/16 v142, 0x0

    .line 653
    .end local v82    # "fracsq":D
    .end local v97    # "ih":I
    .end local v100    # "j":I
    .end local v102    # "k":I
    .end local v105    # "m":I
    .end local v130    # "sumpq":D
    :cond_1e
    if-nez v113, :cond_1f

    .line 654
    const/16 v122, 0xd2

    goto/16 :goto_1

    .line 656
    :cond_1f
    const/16 v122, 0xe6

    goto/16 :goto_1

    .line 669
    :sswitch_3
    const/16 v5, 0xd2

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 681
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->altmov(ID)[D

    move-result-object v4

    .line 682
    .local v4, "alphaCauchy":[D
    const/4 v5, 0x0

    aget-wide v22, v4, v5

    .line 683
    const/4 v5, 0x1

    aget-wide v32, v4, v5

    .line 685
    const/16 v96, 0x0

    :goto_18
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_20

    .line 686
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 685
    add-int/lit8 v96, v96, 0x1

    goto :goto_18

    .line 695
    .end local v4    # "alphaCauchy":[D
    :cond_20
    :sswitch_4
    const/16 v5, 0xe6

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 696
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_19
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_22

    .line 697
    const-wide/16 v126, 0x0

    .line 698
    .local v126, "suma":D
    const-wide/16 v128, 0x0

    .line 699
    .local v128, "sumb":D
    const-wide/16 v124, 0x0

    .line 700
    .restart local v124    # "sum":D
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_1a
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_21

    .line 701
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v126, v126, v144

    .line 702
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v128, v128, v144

    .line 703
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 700
    add-int/lit8 v100, v100, 0x1

    goto :goto_1a

    .line 705
    :cond_21
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v126

    add-double v144, v144, v128

    mul-double v144, v144, v126

    move-object/from16 v0, v141

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 706
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    move-wide/from16 v1, v124

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 707
    move-object/from16 v0, v140

    move/from16 v1, v102

    move-wide/from16 v2, v126

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 696
    add-int/lit8 v102, v102, 0x1

    goto/16 :goto_19

    .line 709
    .end local v100    # "j":I
    .end local v124    # "sum":D
    .end local v126    # "suma":D
    .end local v128    # "sumb":D
    :cond_22
    const-wide/16 v14, 0x0

    .line 710
    const/16 v105, 0x0

    .restart local v105    # "m":I
    :goto_1b
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_25

    .line 711
    const-wide/16 v124, 0x0

    .line 712
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_1c
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_23

    .line 713
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 712
    add-int/lit8 v102, v102, 0x1

    goto :goto_1c

    .line 715
    :cond_23
    mul-double v144, v124, v124

    sub-double v14, v14, v144

    .line 716
    const/16 v102, 0x0

    :goto_1d
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_24

    .line 717
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v124

    add-double v144, v144, v146

    move/from16 v0, v102

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 716
    add-int/lit8 v102, v102, 0x1

    goto :goto_1d

    .line 710
    :cond_24
    add-int/lit8 v105, v105, 0x1

    goto :goto_1b

    .line 720
    .end local v124    # "sum":D
    :cond_25
    const-wide/16 v72, 0x0

    .line 721
    const-wide/16 v30, 0x0

    .line 722
    .local v30, "bsum":D
    const-wide/16 v74, 0x0

    .line 723
    .local v74, "dx":D
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_1e
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_28

    .line 725
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 726
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v72, v72, v144

    .line 727
    const-wide/16 v124, 0x0

    .line 728
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_1f
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_26

    .line 729
    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 728
    add-int/lit8 v102, v102, 0x1

    goto :goto_1f

    .line 731
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v144, v144, v124

    add-double v30, v30, v144

    .line 732
    add-int v101, v111, v100

    .line 733
    .local v101, "jp":I
    const/16 v96, 0x0

    :goto_20
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_27

    .line 734
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v101

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 733
    add-int/lit8 v96, v96, 0x1

    goto :goto_20

    .line 736
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v101

    move-wide/from16 v1, v124

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v144, v144, v124

    add-double v30, v30, v144

    .line 738
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v74, v74, v144

    .line 723
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_1e

    .line 741
    .end local v38    # "d1":D
    .end local v101    # "jp":I
    .end local v124    # "sum":D
    :cond_28
    mul-double v144, v74, v74

    add-double v146, v142, v74

    add-double v146, v146, v74

    const-wide/high16 v148, 0x3fe0000000000000L    # 0.5

    mul-double v148, v148, v72

    add-double v146, v146, v148

    mul-double v146, v146, v72

    add-double v144, v144, v146

    add-double v144, v144, v14

    sub-double v14, v144, v30

    .line 745
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v144, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v145, v0

    invoke-virtual/range {v144 .. v145}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    const-wide/high16 v146, 0x3ff0000000000000L    # 1.0

    add-double v144, v144, v146

    move-wide/from16 v0, v144

    invoke-virtual {v5, v13, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 752
    if-nez v113, :cond_2a

    .line 754
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 755
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    mul-double v146, v22, v14

    add-double v16, v144, v146

    .line 756
    cmpg-double v5, v16, v32

    if-gez v5, :cond_2f

    const-wide/16 v144, 0x0

    cmpl-double v5, v32, v144

    if-lez v5, :cond_2f

    .line 757
    const/16 v96, 0x0

    :goto_21
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_29

    .line 758
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 759
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 757
    add-int/lit8 v96, v96, 0x1

    goto :goto_21

    .line 761
    :cond_29
    const-wide/16 v32, 0x0

    .line 762
    const/16 v122, 0xe6

    goto/16 :goto_1

    .line 771
    .end local v38    # "d1":D
    :cond_2a
    mul-double v48, v6, v6

    .line 772
    .local v48, "delsq":D
    const-wide/16 v120, 0x0

    .line 773
    const-wide/16 v28, 0x0

    .line 774
    const/16 v18, 0x0

    .line 775
    const/16 v102, 0x0

    :goto_22
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_2f

    .line 776
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v0, v102

    if-ne v0, v5, :cond_2b

    .line 775
    :goto_23
    add-int/lit8 v102, v102, 0x1

    goto :goto_22

    .line 779
    :cond_2b
    const-wide/16 v94, 0x0

    .line 780
    .local v94, "hdiag":D
    const/16 v105, 0x0

    :goto_24
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_2c

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    .line 783
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v94, v94, v144

    .line 780
    add-int/lit8 v105, v105, 0x1

    goto :goto_24

    .line 786
    .end local v38    # "d1":D
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    .line 787
    .local v40, "d2":D
    mul-double v144, v14, v94

    mul-double v146, v40, v40

    add-double v54, v144, v146

    .line 788
    .local v54, "den":D
    const-wide/16 v68, 0x0

    .line 789
    const/16 v100, 0x0

    :goto_25
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_2d

    .line 791
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v42, v144, v146

    .line 792
    .local v42, "d3":D
    mul-double v144, v42, v42

    add-double v68, v68, v144

    .line 789
    add-int/lit8 v100, v100, 0x1

    goto :goto_25

    .line 796
    .end local v42    # "d3":D
    :cond_2d
    div-double v44, v68, v48

    .line 797
    .local v44, "d4":D
    const-wide/high16 v144, 0x3ff0000000000000L    # 1.0

    mul-double v146, v44, v44

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v136

    .line 798
    .restart local v136    # "temp":D
    mul-double v144, v136, v54

    cmpl-double v5, v144, v120

    if-lez v5, :cond_2e

    .line 799
    mul-double v120, v136, v54

    .line 800
    move/from16 v18, v102

    .line 801
    move-wide/from16 v16, v54

    .line 805
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    .line 806
    .local v46, "d5":D
    mul-double v144, v46, v46

    mul-double v144, v144, v136

    move-wide/from16 v0, v28

    move-wide/from16 v2, v144

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v28

    goto/16 :goto_23

    .line 818
    .end local v30    # "bsum":D
    .end local v40    # "d2":D
    .end local v44    # "d4":D
    .end local v46    # "d5":D
    .end local v48    # "delsq":D
    .end local v54    # "den":D
    .end local v74    # "dx":D
    .end local v94    # "hdiag":D
    .end local v100    # "j":I
    .end local v102    # "k":I
    .end local v105    # "m":I
    .end local v136    # "temp":D
    :cond_2f
    :sswitch_5
    const/16 v5, 0x168

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 819
    const/16 v96, 0x0

    :goto_26
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_32

    .line 822
    aget-wide v42, p1, v96

    .line 823
    .restart local v42    # "d3":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    add-double v44, v144, v146

    .line 824
    .restart local v44    # "d4":D
    invoke-static/range {v42 .. v45}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    .line 825
    .restart local v38    # "d1":D
    aget-wide v40, p2, v96

    .line 826
    .restart local v40    # "d2":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static/range {v38 .. v41}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 827
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_30

    .line 828
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v144, p1, v96

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 830
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_31

    .line 831
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v144, p2, v96

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 819
    :cond_31
    add-int/lit8 v96, v96, 0x1

    goto :goto_26

    .line 835
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    .end local v42    # "d3":D
    .end local v44    # "d4":D
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v78

    .line 837
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-nez v5, :cond_33

    .line 838
    move-wide/from16 v0, v78

    neg-double v0, v0

    move-wide/from16 v78, v0

    .line 840
    :cond_33
    const/4 v5, -0x1

    move/from16 v0, v113

    if-ne v0, v5, :cond_34

    .line 841
    move-wide/from16 v86, v78

    .line 842
    const/16 v122, 0x2d0

    goto/16 :goto_1

    .line 848
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v80

    .line 849
    .local v80, "fopt":D
    const-wide/16 v138, 0x0

    .line 850
    .local v138, "vquad":D
    const/16 v97, 0x0

    .line 851
    .restart local v97    # "ih":I
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_27
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_37

    .line 852
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v138, v138, v144

    .line 853
    const/16 v96, 0x0

    :goto_28
    move/from16 v0, v96

    move/from16 v1, v100

    if-gt v0, v1, :cond_36

    .line 854
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v136, v144, v146

    .line 855
    .restart local v136    # "temp":D
    move/from16 v0, v96

    move/from16 v1, v100

    if-ne v0, v1, :cond_35

    .line 856
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v136, v136, v144

    .line 858
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v144, v144, v136

    add-double v138, v138, v144

    .line 859
    add-int/lit8 v97, v97, 0x1

    .line 853
    add-int/lit8 v96, v96, 0x1

    goto :goto_28

    .line 851
    .end local v136    # "temp":D
    :cond_36
    add-int/lit8 v100, v100, 0x1

    goto :goto_27

    .line 862
    :cond_37
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_29
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_38

    .line 864
    move-object/from16 v0, v140

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 865
    .restart local v38    # "d1":D
    mul-double v40, v38, v38

    .line 866
    .restart local v40    # "d2":D
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    mul-double v144, v144, v40

    add-double v138, v138, v144

    .line 862
    add-int/lit8 v102, v102, 0x1

    goto :goto_29

    .line 868
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    :cond_38
    sub-double v144, v78, v80

    sub-double v58, v144, v138

    .line 869
    .local v58, "diff":D
    move-wide/from16 v64, v62

    .line 870
    move-wide/from16 v62, v60

    .line 871
    invoke-static/range {v58 .. v59}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v60

    .line 872
    cmpl-double v5, v70, v118

    if-lez v5, :cond_39

    .line 873
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v108

    .line 878
    :cond_39
    if-lez v113, :cond_42

    .line 879
    const-wide/16 v144, 0x0

    cmpl-double v5, v138, v144

    if-ltz v5, :cond_3a

    .line 880
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TRUST_REGION_STEP_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v144, 0x1

    move/from16 v0, v144

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v144, v0

    const/16 v145, 0x0

    invoke-static/range {v138 .. v139}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v146

    aput-object v146, v144, v145

    move-object/from16 v0, v144

    invoke-direct {v5, v13, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 882
    :cond_3a
    sub-double v144, v78, v80

    div-double v116, v144, v138

    .line 883
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v92, v144, v6

    .line 884
    .local v92, "hDelta":D
    const-wide v144, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v116, v144

    if-gtz v5, :cond_3c

    .line 886
    move-wide/from16 v0, v92

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 894
    :goto_2a
    const-wide/high16 v144, 0x3ff8000000000000L    # 1.5

    mul-double v144, v144, v118

    cmpg-double v5, v6, v144

    if-gtz v5, :cond_3b

    .line 895
    move-wide/from16 v6, v118

    .line 900
    :cond_3b
    cmpg-double v5, v78, v80

    if-gez v5, :cond_42

    .line 901
    move/from16 v104, v18

    .line 902
    .local v104, "ksav":I
    move-wide/from16 v56, v16

    .line 903
    .local v56, "densav":D
    mul-double v48, v6, v6

    .line 904
    .restart local v48    # "delsq":D
    const-wide/16 v120, 0x0

    .line 905
    const-wide/16 v28, 0x0

    .line 906
    const/16 v18, 0x0

    .line 907
    const/16 v102, 0x0

    :goto_2b
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_41

    .line 908
    const-wide/16 v94, 0x0

    .line 909
    .restart local v94    # "hdiag":D
    const/16 v105, 0x0

    .restart local v105    # "m":I
    :goto_2c
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_3e

    .line 911
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    .line 912
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v94, v94, v144

    .line 909
    add-int/lit8 v105, v105, 0x1

    goto :goto_2c

    .line 887
    .end local v38    # "d1":D
    .end local v48    # "delsq":D
    .end local v56    # "densav":D
    .end local v94    # "hdiag":D
    .end local v104    # "ksav":I
    .end local v105    # "m":I
    :cond_3c
    const-wide v144, 0x3fe6666666666666L    # 0.7

    cmpg-double v5, v116, v144

    if-gtz v5, :cond_3d

    .line 889
    move-wide/from16 v0, v92

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    goto :goto_2a

    .line 892
    :cond_3d
    const-wide/high16 v144, 0x4000000000000000L    # 2.0

    mul-double v144, v144, v70

    move-wide/from16 v0, v92

    move-wide/from16 v2, v144

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    goto :goto_2a

    .line 915
    .restart local v48    # "delsq":D
    .restart local v56    # "densav":D
    .restart local v94    # "hdiag":D
    .restart local v104    # "ksav":I
    .restart local v105    # "m":I
    :cond_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 916
    .restart local v38    # "d1":D
    mul-double v144, v14, v94

    mul-double v146, v38, v38

    add-double v54, v144, v146

    .line 917
    .restart local v54    # "den":D
    const-wide/16 v68, 0x0

    .line 918
    const/16 v100, 0x0

    :goto_2d
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_3f

    .line 920
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v40, v144, v146

    .line 921
    .restart local v40    # "d2":D
    mul-double v144, v40, v40

    add-double v68, v68, v144

    .line 918
    add-int/lit8 v100, v100, 0x1

    goto :goto_2d

    .line 925
    .end local v40    # "d2":D
    :cond_3f
    div-double v42, v68, v48

    .line 926
    .restart local v42    # "d3":D
    const-wide/high16 v144, 0x3ff0000000000000L    # 1.0

    mul-double v146, v42, v42

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v136

    .line 927
    .restart local v136    # "temp":D
    mul-double v144, v136, v54

    cmpl-double v5, v144, v120

    if-lez v5, :cond_40

    .line 928
    mul-double v120, v136, v54

    .line 929
    move/from16 v18, v102

    .line 930
    move-wide/from16 v16, v54

    .line 934
    :cond_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    .line 935
    .restart local v44    # "d4":D
    mul-double v144, v44, v44

    mul-double v46, v136, v144

    .line 936
    .restart local v46    # "d5":D
    move-wide/from16 v0, v28

    move-wide/from16 v2, v46

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v28

    .line 907
    add-int/lit8 v102, v102, 0x1

    goto/16 :goto_2b

    .line 938
    .end local v38    # "d1":D
    .end local v42    # "d3":D
    .end local v44    # "d4":D
    .end local v46    # "d5":D
    .end local v54    # "den":D
    .end local v94    # "hdiag":D
    .end local v105    # "m":I
    .end local v136    # "temp":D
    :cond_41
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v28

    cmpg-double v5, v120, v144

    if-gtz v5, :cond_42

    .line 939
    move/from16 v18, v104

    .line 940
    move-wide/from16 v16, v56

    .end local v48    # "delsq":D
    .end local v56    # "densav":D
    .end local v92    # "hDelta":D
    .end local v104    # "ksav":I
    :cond_42
    move-object/from16 v13, p0

    .line 948
    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->update(DDI)V

    .line 950
    const/16 v97, 0x0

    .line 951
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v114

    .line 952
    .local v114, "pqold":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v144, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 953
    const/16 v96, 0x0

    :goto_2e
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_44

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    mul-double v136, v114, v144

    .line 955
    .restart local v136    # "temp":D
    const/16 v100, 0x0

    :goto_2f
    move/from16 v0, v100

    move/from16 v1, v96

    if-gt v0, v1, :cond_43

    .line 956
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v97

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 957
    add-int/lit8 v97, v97, 0x1

    .line 955
    add-int/lit8 v100, v100, 0x1

    goto :goto_2f

    .line 953
    :cond_43
    add-int/lit8 v96, v96, 0x1

    goto :goto_2e

    .line 960
    .end local v136    # "temp":D
    :cond_44
    const/16 v105, 0x0

    .restart local v105    # "m":I
    :goto_30
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_46

    .line 961
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    mul-double v136, v58, v144

    .line 962
    .restart local v136    # "temp":D
    const/16 v102, 0x0

    :goto_31
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_45

    .line 963
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v102

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 962
    add-int/lit8 v102, v102, 0x1

    goto :goto_31

    .line 960
    :cond_45
    add-int/lit8 v105, v105, 0x1

    goto :goto_30

    .line 970
    .end local v136    # "temp":D
    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v18

    move-wide/from16 v1, v78

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 971
    const/16 v96, 0x0

    :goto_32
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_47

    .line 972
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v18

    move/from16 v1, v96

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 973
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 971
    add-int/lit8 v96, v96, 0x1

    goto :goto_32

    .line 975
    :cond_47
    const/16 v102, 0x0

    :goto_33
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_4b

    .line 976
    const-wide/16 v126, 0x0

    .line 977
    .restart local v126    # "suma":D
    const/16 v105, 0x0

    :goto_34
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_48

    .line 978
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v126, v126, v144

    .line 977
    add-int/lit8 v105, v105, 0x1

    goto :goto_34

    .line 980
    :cond_48
    const-wide/16 v128, 0x0

    .line 981
    .restart local v128    # "sumb":D
    const/16 v100, 0x0

    :goto_35
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_49

    .line 982
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v128, v128, v144

    .line 981
    add-int/lit8 v100, v100, 0x1

    goto :goto_35

    .line 984
    :cond_49
    mul-double v136, v126, v128

    .line 985
    .restart local v136    # "temp":D
    const/16 v96, 0x0

    :goto_36
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_4a

    .line 986
    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move-object/from16 v0, v123

    move/from16 v1, v96

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 985
    add-int/lit8 v96, v96, 0x1

    goto :goto_36

    .line 975
    :cond_4a
    add-int/lit8 v102, v102, 0x1

    goto/16 :goto_33

    .line 989
    .end local v126    # "suma":D
    .end local v128    # "sumb":D
    .end local v136    # "temp":D
    :cond_4b
    const/16 v96, 0x0

    :goto_37
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_4c

    .line 990
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v146, v146, v58

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 989
    add-int/lit8 v96, v96, 0x1

    goto :goto_37

    .line 995
    :cond_4c
    cmpg-double v5, v78, v80

    if-gez v5, :cond_52

    .line 996
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 997
    const-wide/16 v142, 0x0

    .line 998
    const/16 v97, 0x0

    .line 999
    const/16 v100, 0x0

    :goto_38
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_4f

    .line 1000
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v100

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 1003
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v142, v142, v144

    .line 1004
    const/16 v96, 0x0

    :goto_39
    move/from16 v0, v96

    move/from16 v1, v100

    if-gt v0, v1, :cond_4e

    .line 1005
    move/from16 v0, v96

    move/from16 v1, v100

    if-ge v0, v1, :cond_4d

    .line 1006
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v100

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1008
    :cond_4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1009
    add-int/lit8 v97, v97, 0x1

    .line 1004
    add-int/lit8 v96, v96, 0x1

    goto :goto_39

    .line 999
    :cond_4e
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_38

    .line 1012
    .end local v38    # "d1":D
    :cond_4f
    const/16 v102, 0x0

    :goto_3a
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_52

    .line 1013
    const-wide/16 v136, 0x0

    .line 1014
    .restart local v136    # "temp":D
    const/16 v100, 0x0

    :goto_3b
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_50

    .line 1015
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v136, v136, v144

    .line 1014
    add-int/lit8 v100, v100, 0x1

    goto :goto_3b

    .line 1017
    :cond_50
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v136, v136, v144

    .line 1018
    const/16 v96, 0x0

    :goto_3c
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_51

    .line 1019
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1018
    add-int/lit8 v96, v96, 0x1

    goto :goto_3c

    .line 1012
    :cond_51
    add-int/lit8 v102, v102, 0x1

    goto :goto_3a

    .line 1028
    .end local v136    # "temp":D
    :cond_52
    if-lez v113, :cond_61

    .line 1029
    const/16 v102, 0x0

    :goto_3d
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_53

    .line 1030
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v146, v0

    move/from16 v0, v146

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v102

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1031
    const-wide/16 v144, 0x0

    move-object/from16 v0, v141

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1029
    add-int/lit8 v102, v102, 0x1

    goto :goto_3d

    .line 1033
    :cond_53
    const/16 v100, 0x0

    :goto_3e
    move/from16 v0, v100

    move/from16 v1, v112

    if-ge v0, v1, :cond_56

    .line 1034
    const-wide/16 v124, 0x0

    .line 1035
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_3f
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_54

    .line 1036
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 1035
    add-int/lit8 v102, v102, 0x1

    goto :goto_3f

    .line 1038
    :cond_54
    const/16 v102, 0x0

    :goto_40
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_55

    .line 1039
    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v124

    add-double v144, v144, v146

    move-object/from16 v0, v141

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1038
    add-int/lit8 v102, v102, 0x1

    goto :goto_40

    .line 1033
    :cond_55
    add-int/lit8 v100, v100, 0x1

    goto :goto_3e

    .line 1042
    .end local v124    # "sum":D
    :cond_56
    const/16 v102, 0x0

    :goto_41
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_58

    .line 1043
    const-wide/16 v124, 0x0

    .line 1044
    .restart local v124    # "sum":D
    const/16 v100, 0x0

    :goto_42
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_57

    .line 1045
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 1044
    add-int/lit8 v100, v100, 0x1

    goto :goto_42

    .line 1047
    :cond_57
    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, v140

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1048
    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v144, v144, v124

    move-object/from16 v0, v141

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1042
    add-int/lit8 v102, v102, 0x1

    goto :goto_41

    .line 1050
    .end local v124    # "sum":D
    :cond_58
    const-wide/16 v90, 0x0

    .line 1051
    .local v90, "gqsq":D
    const-wide/16 v88, 0x0

    .line 1052
    .local v88, "gisq":D
    const/16 v96, 0x0

    :goto_43
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_5c

    .line 1053
    const-wide/16 v124, 0x0

    .line 1054
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_44
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_59

    .line 1055
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    add-double v124, v124, v144

    .line 1054
    add-int/lit8 v102, v102, 0x1

    goto :goto_44

    .line 1058
    :cond_59
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_5a

    .line 1061
    const-wide/16 v144, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v38

    .line 1062
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v90, v90, v144

    .line 1064
    const-wide/16 v144, 0x0

    move-wide/from16 v0, v144

    move-wide/from16 v2, v124

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v40

    .line 1065
    .restart local v40    # "d2":D
    mul-double v144, v40, v40

    add-double v88, v88, v144

    .line 1080
    .end local v40    # "d2":D
    :goto_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v13, v111, v96

    move-wide/from16 v0, v124

    invoke-virtual {v5, v13, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1052
    add-int/lit8 v96, v96, 0x1

    goto/16 :goto_43

    .line 1066
    .end local v38    # "d1":D
    :cond_5a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_5b

    .line 1069
    const-wide/16 v144, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    .line 1070
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v90, v90, v144

    .line 1072
    const-wide/16 v144, 0x0

    move-wide/from16 v0, v144

    move-wide/from16 v2, v124

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    .line 1073
    .restart local v40    # "d2":D
    mul-double v144, v40, v40

    add-double v88, v88, v144

    .line 1074
    goto :goto_45

    .line 1076
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    :cond_5b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 1077
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v90, v90, v144

    .line 1078
    mul-double v144, v124, v124

    add-double v88, v88, v144

    goto :goto_45

    .line 1086
    .end local v38    # "d1":D
    .end local v124    # "sum":D
    :cond_5c
    add-int/lit8 v99, v99, 0x1

    .line 1087
    const-wide/high16 v144, 0x4024000000000000L    # 10.0

    mul-double v144, v144, v88

    cmpg-double v5, v90, v144

    if-gez v5, :cond_5d

    .line 1088
    const/16 v99, 0x0

    .line 1090
    :cond_5d
    const/4 v5, 0x3

    move/from16 v0, v99

    if-lt v0, v5, :cond_61

    .line 1091
    const/16 v96, 0x0

    move/from16 v0, v111

    move/from16 v1, v109

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v106

    .local v106, "max":I
    :goto_46
    move/from16 v0, v96

    move/from16 v1, v106

    if-ge v0, v1, :cond_61

    .line 1092
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_5e

    .line 1093
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v144, v111, v96

    move/from16 v0, v144

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1095
    :cond_5e
    move/from16 v0, v96

    move/from16 v1, v111

    if-ge v0, v1, :cond_5f

    .line 1096
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v140

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1098
    :cond_5f
    move/from16 v0, v96

    move/from16 v1, v109

    if-ge v0, v1, :cond_60

    .line 1099
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v144, 0x0

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1101
    :cond_60
    const/16 v99, 0x0

    .line 1091
    add-int/lit8 v96, v96, 0x1

    goto :goto_46

    .line 1110
    .end local v88    # "gisq":D
    .end local v90    # "gqsq":D
    .end local v106    # "max":I
    :cond_61
    if-nez v113, :cond_62

    .line 1111
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1113
    :cond_62
    const-wide v144, 0x3fb999999999999aL    # 0.1

    mul-double v144, v144, v138

    add-double v144, v144, v80

    cmpg-double v5, v78, v144

    if-gtz v5, :cond_63

    .line 1114
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1122
    :cond_63
    const-wide/high16 v144, 0x4000000000000000L    # 2.0

    mul-double v38, v144, v6

    .line 1124
    .restart local v38    # "d1":D
    const-wide/high16 v144, 0x4024000000000000L    # 10.0

    mul-double v40, v144, v118

    .line 1125
    .restart local v40    # "d2":D
    mul-double v144, v38, v38

    mul-double v146, v40, v40

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v68

    .line 1128
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    .end local v58    # "diff":D
    .end local v80    # "fopt":D
    .end local v97    # "ih":I
    .end local v100    # "j":I
    .end local v102    # "k":I
    .end local v105    # "m":I
    .end local v114    # "pqold":D
    .end local v138    # "vquad":D
    :sswitch_6
    const/16 v5, 0x28a

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 1129
    const/16 v18, -0x1

    .line 1130
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_47
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_66

    .line 1131
    const-wide/16 v124, 0x0

    .line 1132
    .restart local v124    # "sum":D
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_48
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_64

    .line 1134
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v38, v144, v146

    .line 1135
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v124, v124, v144

    .line 1132
    add-int/lit8 v100, v100, 0x1

    goto :goto_48

    .line 1137
    .end local v38    # "d1":D
    :cond_64
    cmpl-double v5, v124, v68

    if-lez v5, :cond_65

    .line 1138
    move/from16 v18, v102

    .line 1139
    move-wide/from16 v68, v124

    .line 1130
    :cond_65
    add-int/lit8 v102, v102, 0x1

    goto :goto_47

    .line 1149
    .end local v100    # "j":I
    .end local v124    # "sum":D
    :cond_66
    if-ltz v18, :cond_68

    .line 1150
    invoke-static/range {v68 .. v69}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v66

    .line 1151
    .local v66, "dist":D
    const/4 v5, -0x1

    move/from16 v0, v113

    if-ne v0, v5, :cond_67

    .line 1153
    const-wide v144, 0x3fb999999999999aL    # 0.1

    mul-double v144, v144, v6

    const-wide/high16 v146, 0x3fe0000000000000L    # 0.5

    mul-double v146, v146, v66

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 1154
    const-wide/high16 v144, 0x3ff8000000000000L    # 1.5

    mul-double v144, v144, v118

    cmpg-double v5, v6, v144

    if-gtz v5, :cond_67

    .line 1155
    move-wide/from16 v6, v118

    .line 1158
    :cond_67
    const/16 v113, 0x0

    .line 1161
    const-wide v144, 0x3fb999999999999aL    # 0.1

    mul-double v144, v144, v66

    move-wide/from16 v0, v144

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v38

    .line 1162
    .restart local v38    # "d1":D
    move-wide/from16 v0, v38

    move-wide/from16 v2, v118

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v20

    .line 1163
    mul-double v72, v20, v20

    .line 1164
    const/16 v122, 0x5a

    goto/16 :goto_1

    .line 1166
    .end local v38    # "d1":D
    .end local v66    # "dist":D
    :cond_68
    const/4 v5, -0x1

    move/from16 v0, v113

    if-ne v0, v5, :cond_69

    .line 1167
    const/16 v122, 0x2a8

    goto/16 :goto_1

    .line 1169
    :cond_69
    const-wide/16 v144, 0x0

    cmpl-double v5, v116, v144

    if-lez v5, :cond_6a

    .line 1170
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1172
    :cond_6a
    move-wide/from16 v0, v70

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v144

    cmpl-double v5, v144, v118

    if-lez v5, :cond_6b

    .line 1173
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1180
    .end local v102    # "k":I
    :cond_6b
    :sswitch_7
    const/16 v5, 0x2a8

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 1181
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    move-wide/from16 v144, v0

    cmpl-double v5, v118, v144

    if-lez v5, :cond_6e

    .line 1182
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v6, v144, v118

    .line 1183
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    move-wide/from16 v144, v0

    div-double v116, v118, v144

    .line 1184
    const-wide/high16 v144, 0x4030000000000000L    # 16.0

    cmpg-double v5, v116, v144

    if-gtz v5, :cond_6c

    .line 1185
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    move-wide/from16 v118, v0

    .line 1191
    :goto_49
    move-wide/from16 v0, v118

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 1192
    const/16 v113, 0x0

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v108

    .line 1194
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1186
    :cond_6c
    const-wide v144, 0x406f400000000000L    # 250.0

    cmpg-double v5, v116, v144

    if-gtz v5, :cond_6d

    .line 1187
    invoke-static/range {v116 .. v117}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    move-wide/from16 v146, v0

    mul-double v118, v144, v146

    goto :goto_49

    .line 1189
    :cond_6d
    const-wide v144, 0x3fb999999999999aL    # 0.1

    mul-double v118, v118, v144

    goto :goto_49

    .line 1200
    :cond_6e
    const/4 v5, -0x1

    move/from16 v0, v113

    if-ne v0, v5, :cond_6f

    .line 1201
    const/16 v122, 0x168

    goto/16 :goto_1

    .line 1205
    :cond_6f
    :sswitch_8
    const/16 v5, 0x2d0

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    cmpg-double v5, v144, v86

    if-gtz v5, :cond_73

    .line 1207
    const/16 v96, 0x0

    :goto_4a
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_72

    .line 1210
    aget-wide v42, p1, v96

    .line 1211
    .restart local v42    # "d3":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    add-double v44, v144, v146

    .line 1212
    .restart local v44    # "d4":D
    invoke-static/range {v42 .. v45}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    .line 1213
    .restart local v38    # "d1":D
    aget-wide v40, p2, v96

    .line 1214
    .restart local v40    # "d2":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static/range {v38 .. v41}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_70

    .line 1216
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v144, p1, v96

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1218
    :cond_70
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_71

    .line 1219
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v144, p2, v96

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1207
    :cond_71
    add-int/lit8 v96, v96, 0x1

    goto :goto_4a

    .line 1222
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    .end local v42    # "d3":D
    .end local v44    # "d4":D
    :cond_72
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v78

    .line 1224
    :cond_73
    return-wide v78

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x3c -> :sswitch_1
        0x5a -> :sswitch_2
        0xd2 -> :sswitch_3
        0xe6 -> :sswitch_4
        0x168 -> :sswitch_5
        0x28a -> :sswitch_6
        0x2a8 -> :sswitch_7
        0x2d0 -> :sswitch_8
    .end sparse-switch
.end method

.method private static caller(I)Ljava/lang/String;
    .locals 5
    .param p0, "n"    # I

    .prologue
    .line 2444
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2445
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 2446
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    aget-object v0, v1, p0

    .line 2447
    .local v0, "e":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private prelim([D[D)V
    .locals 54
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .prologue
    .line 1592
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v21

    .line 1595
    .local v21, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v28, v0

    .line 1596
    .local v28, "npt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v22

    .line 1598
    .local v22, "ndim":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v48, v0

    mul-double v36, v46, v48

    .line 1599
    .local v36, "rhosq":D
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    div-double v34, v46, v36

    .line 1600
    .local v34, "recip":D
    add-int/lit8 v27, v21, 0x1

    .line 1605
    .local v27, "np":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1607
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v19

    move/from16 v2, v16

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1607
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1610
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_1

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v12, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1610
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1605
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1614
    .end local v12    # "i":I
    .end local v19    # "k":I
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "i":I
    mul-int v46, v21, v27

    div-int/lit8 v20, v46, 0x2

    .local v20, "max":I
    :goto_3
    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    invoke-virtual {v0, v12, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1614
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1617
    :cond_3
    const/16 v19, 0x0

    .restart local v19    # "k":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v19

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1619
    const/16 v16, 0x0

    sub-int v20, v28, v27

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v19

    move/from16 v2, v16

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1619
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1617
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1628
    :cond_5
    const/4 v14, 0x0

    .line 1629
    .local v14, "ipt":I
    const/16 v17, 0x0

    .line 1630
    .local v17, "jpt":I
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 1632
    .local v10, "fbeg":D
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v23

    .line 1633
    .local v23, "nfm":I
    sub-int v25, v23, v21

    .line 1634
    .local v25, "nfx":I
    add-int/lit8 v24, v23, -0x1

    .line 1635
    .local v24, "nfmm":I
    add-int/lit8 v26, v25, -0x1

    .line 1636
    .local v26, "nfxm":I
    const-wide/16 v38, 0x0

    .line 1637
    .local v38, "stepa":D
    const-wide/16 v40, 0x0

    .line 1638
    .local v40, "stepb":D
    mul-int/lit8 v46, v21, 0x2

    move/from16 v0, v23

    move/from16 v1, v46

    if-gt v0, v1, :cond_e

    .line 1639
    const/16 v46, 0x1

    move/from16 v0, v23

    move/from16 v1, v46

    if-lt v0, v1, :cond_b

    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 1641
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v38, v0

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-nez v46, :cond_7

    .line 1643
    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    .line 1646
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1679
    :cond_8
    :goto_6
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    aget-wide v48, p1, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v52

    add-double v50, v50, v52

    invoke-static/range {v48 .. v51}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v48

    aget-wide v50, p2, v16

    invoke-static/range {v48 .. v51}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    cmpl-double v46, v46, v48

    if-nez v46, :cond_9

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    aget-wide v48, p1, v16

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1686
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    cmpl-double v46, v46, v48

    if-nez v46, :cond_a

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    aget-wide v48, p2, v16

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1679
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 1647
    :cond_b
    move/from16 v0, v23

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    .line 1649
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v40, v0

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-nez v46, :cond_c

    .line 1651
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v48, v0

    mul-double v46, v46, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    invoke-static/range {v46 .. v49}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v40

    .line 1654
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-nez v46, :cond_d

    .line 1655
    const-wide/high16 v46, -0x4000000000000000L    # -2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v48, v0

    mul-double v46, v46, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    invoke-static/range {v46 .. v49}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    .line 1658
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto/16 :goto_6

    .line 1661
    :cond_e
    sub-int v46, v23, v27

    div-int v44, v46, v21

    .line 1662
    .local v44, "tmp1":I
    mul-int v46, v44, v21

    sub-int v46, v23, v46

    sub-int v17, v46, v21

    .line 1663
    add-int v14, v17, v44

    .line 1664
    move/from16 v0, v21

    if-le v14, v0, :cond_f

    .line 1665
    move/from16 v45, v17

    .line 1666
    .local v45, "tmp2":I
    sub-int v17, v14, v21

    .line 1667
    move/from16 v14, v45

    .line 1670
    .end local v45    # "tmp2":I
    :cond_f
    add-int/lit8 v15, v14, -0x1

    .line 1671
    .local v15, "iptMinus1":I
    add-int/lit8 v18, v17, -0x1

    .line 1672
    .local v18, "jptMinus1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v23

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v18

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto/16 :goto_6

    .line 1691
    .end local v15    # "iptMinus1":I
    .end local v18    # "jptMinus1":I
    .end local v44    # "tmp1":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v30

    .line 1692
    .local v30, "objectiveValue":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    move/from16 v46, v0

    if-eqz v46, :cond_13

    move-wide/from16 v8, v30

    .line 1693
    .local v8, "f":D
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v29

    .line 1694
    .local v29, "numEval":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1696
    const/16 v46, 0x1

    move/from16 v0, v29

    move/from16 v1, v46

    if-ne v0, v1, :cond_14

    .line 1697
    move-wide v10, v8

    .line 1698
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1709
    :cond_11
    :goto_9
    mul-int/lit8 v46, v21, 0x2

    add-int/lit8 v46, v46, 0x1

    move/from16 v0, v29

    move/from16 v1, v46

    if-gt v0, v1, :cond_18

    .line 1710
    const/16 v46, 0x2

    move/from16 v0, v29

    move/from16 v1, v46

    if-lt v0, v1, :cond_15

    add-int/lit8 v46, v21, 0x1

    move/from16 v0, v29

    move/from16 v1, v46

    if-gt v0, v1, :cond_15

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    sub-double v48, v8, v10

    div-double v48, v48, v38

    move-object/from16 v0, v46

    move/from16 v1, v24

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1713
    add-int v46, v29, v21

    move/from16 v0, v28

    move/from16 v1, v46

    if-ge v0, v1, :cond_12

    .line 1714
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    div-double v32, v46, v38

    .line 1715
    .local v32, "oneOverStepA":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v24

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    add-int v47, v28, v24

    const-wide/high16 v48, -0x4020000000000000L    # -0.5

    mul-double v48, v48, v36

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v24

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1760
    .end local v32    # "oneOverStepA":D
    :cond_12
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, v28

    if-lt v0, v1, :cond_6

    .line 1761
    return-void

    .line 1692
    .end local v8    # "f":D
    .end local v29    # "numEval":I
    :cond_13
    move-wide/from16 v0, v30

    neg-double v8, v0

    goto/16 :goto_8

    .line 1699
    .restart local v8    # "f":D
    .restart local v29    # "numEval":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    cmpg-double v46, v8, v46

    if-gez v46, :cond_11

    .line 1700
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    goto/16 :goto_9

    .line 1720
    :cond_15
    add-int/lit8 v46, v21, 0x2

    move/from16 v0, v29

    move/from16 v1, v46

    if-lt v0, v1, :cond_12

    .line 1721
    add-int/lit8 v46, v25, 0x1

    mul-int v46, v46, v25

    div-int/lit8 v46, v46, 0x2

    add-int/lit8 v13, v46, -0x1

    .line 1722
    .local v13, "ih":I
    sub-double v46, v8, v10

    div-double v42, v46, v40

    .line 1723
    .local v42, "tmp":D
    sub-double v6, v40, v38

    .line 1724
    .local v6, "diff":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    sub-double v50, v42, v50

    mul-double v48, v48, v50

    div-double v48, v48, v6

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    invoke-virtual {v0, v13, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    mul-double v48, v48, v40

    mul-double v50, v42, v38

    sub-double v48, v48, v50

    div-double v48, v48, v6

    move-object/from16 v0, v46

    move/from16 v1, v26

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1726
    mul-double v46, v38, v40

    const-wide/16 v48, 0x0

    cmpg-double v46, v46, v48

    if-gez v46, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    invoke-virtual/range {v46 .. v47}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    cmpg-double v46, v8, v46

    if-gez v46, :cond_17

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    sub-int v48, v23, v21

    invoke-virtual/range {v47 .. v48}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v23

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v0, v1, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1729
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v46, v0

    move/from16 v0, v46

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 1730
    sub-int v46, v23, v21

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1732
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1735
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    add-double v48, v38, v40

    move-wide/from16 v0, v48

    neg-double v0, v0

    move-wide/from16 v48, v0

    mul-double v50, v38, v40

    div-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/high16 v48, -0x4020000000000000L    # -0.5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v47, v0

    sub-int v50, v23, v21

    move-object/from16 v0, v47

    move/from16 v1, v50

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v50

    div-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    move-wide/from16 v0, v48

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v50

    sub-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v48

    mul-double v50, v38, v40

    div-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v48

    div-double v48, v48, v36

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    move-wide/from16 v0, v48

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v50

    sub-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto/16 :goto_a

    .line 1750
    .end local v6    # "diff":D
    .end local v13    # "ih":I
    .end local v42    # "tmp":D
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move/from16 v1, v26

    move-wide/from16 v2, v48

    invoke-virtual {v0, v14, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move/from16 v1, v17

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1755
    add-int/lit8 v46, v14, -0x1

    mul-int v46, v46, v14

    div-int/lit8 v46, v46, 0x2

    add-int v46, v46, v17

    add-int/lit8 v13, v46, -0x1

    .line 1756
    .restart local v13    # "ih":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v48, v0

    add-int/lit8 v49, v17, -0x1

    move-object/from16 v0, v48

    move/from16 v1, v23

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    mul-double v42, v46, v48

    .line 1757
    .restart local v42    # "tmp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    sub-double v48, v10, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    sub-double v48, v48, v50

    add-double v48, v48, v8

    div-double v48, v48, v42

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    invoke-virtual {v0, v13, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_a
.end method

.method private static printMethod()V
    .locals 0

    .prologue
    .line 2456
    return-void
.end method

.method private static printState(I)V
    .locals 0
    .param p0, "s"    # I

    .prologue
    .line 2452
    return-void
.end method

.method private setup([D[D)V
    .locals 14
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .prologue
    .line 2389
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2391
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 2392
    .local v2, "init":[D
    array-length v0, v2

    .line 2395
    .local v0, "dimension":I
    const/4 v8, 0x2

    if-ge v0, v8, :cond_0

    .line 2396
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 2399
    :cond_0
    const/4 v8, 0x2

    new-array v3, v8, [I

    const/4 v8, 0x0

    add-int/lit8 v9, v0, 0x2

    aput v9, v3, v8

    const/4 v8, 0x1

    add-int/lit8 v9, v0, 0x2

    add-int/lit8 v10, v0, 0x1

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    aput v9, v3, v8

    .line 2400
    .local v3, "nPointsInterval":[I
    iget v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v9, 0x0

    aget v9, v3, v9

    if-lt v8, v9, :cond_1

    iget v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v9, 0x1

    aget v9, v3, v9

    if-le v8, v9, :cond_2

    .line 2402
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_INTERPOLATION_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v8

    .line 2409
    :cond_2
    new-array v8, v0, [D

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    .line 2411
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget-wide v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v6, v8, v10

    .line 2412
    .local v6, "requiredMinDiff":D
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2413
    .local v4, "minDiff":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2414
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v10, p2, v1

    aget-wide v12, p1, v1

    sub-double/2addr v10, v12

    aput-wide v10, v8, v1

    .line 2415
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v8, v8, v1

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    .line 2413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2417
    :cond_3
    cmpg-double v8, v4, v6

    if-gez v8, :cond_4

    .line 2418
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double v8, v4, v8

    iput-wide v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 2422
    :cond_4
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v9, v0

    invoke-direct {v8, v9, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2424
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    iget v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int/2addr v10, v0

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2426
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v8, v9, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2428
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2429
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2430
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2431
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2432
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2433
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2434
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2435
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2436
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2437
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2438
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v9, v0

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2439
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2440
    return-void
.end method

.method private trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D
    .locals 101
    .param p1, "delta"    # D
    .param p3, "gnew"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p4, "xbdi"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p5, "s"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p6, "hs"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p7, "hred"    # Lorg/apache/commons/math3/linear/ArrayRealVector;

    .prologue
    .line 1818
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v50

    .line 1821
    .local v50, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v52, v0

    .line 1823
    .local v52, "npt":I
    const-wide/high16 v32, 0x7ff8000000000000L    # Double.NaN

    .line 1824
    .local v32, "dsq":D
    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    .line 1829
    .local v12, "crvmin":D
    const-wide/16 v8, 0x0

    .line 1830
    .local v8, "beta":D
    const/16 v39, -0x1

    .line 1831
    .local v39, "iact":I
    const/16 v51, 0x0

    .line 1832
    .local v51, "nact":I
    const-wide/16 v6, 0x0

    .line 1834
    .local v6, "angt":D
    const-wide/16 v82, 0x0

    .local v82, "temp":D
    const-wide/16 v90, 0x0

    .local v90, "xsav":D
    const-wide/16 v92, 0x0

    .local v92, "xsum":D
    const-wide/16 v4, 0x0

    .local v4, "angbd":D
    const-wide/16 v26, 0x0

    .local v26, "dredg":D
    const-wide/16 v72, 0x0

    .line 1836
    .local v72, "sredg":D
    const-wide/16 v66, 0x0

    .local v66, "resid":D
    const-wide/16 v20, 0x0

    .local v20, "delsq":D
    const-wide/16 v34, 0x0

    .local v34, "ggsav":D
    const-wide/16 v84, 0x0

    .local v84, "tempa":D
    const-wide/16 v86, 0x0

    .line 1837
    .local v86, "tempb":D
    const-wide/16 v60, 0x0

    .local v60, "redmax":D
    const-wide/16 v28, 0x0

    .local v28, "dredsq":D
    const-wide/16 v64, 0x0

    .local v64, "redsav":D
    const-wide/16 v36, 0x0

    .local v36, "gredsq":D
    const-wide/16 v62, 0x0

    .line 1838
    .local v62, "rednew":D
    const/16 v42, 0x0

    .line 1839
    .local v42, "itcsav":I
    const-wide/16 v58, 0x0

    .local v58, "rdprev":D
    const-wide/16 v56, 0x0

    .local v56, "rdnext":D
    const-wide/16 v80, 0x0

    .local v80, "stplen":D
    const-wide/16 v76, 0x0

    .line 1840
    .local v76, "stepsq":D
    const/16 v44, 0x0

    .line 1853
    .local v44, "itermax":I
    const/16 v43, 0x0

    .line 1854
    .local v43, "iterc":I
    const/16 v51, 0x0

    .line 1855
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_0
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_3

    .line 1856
    const-wide/16 v94, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    cmpg-double v89, v94, v96

    if-gtz v89, :cond_2

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-ltz v89, :cond_0

    .line 1859
    const-wide/high16 v94, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1865
    :cond_0
    :goto_1
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-eqz v89, :cond_1

    .line 1866
    add-int/lit8 v51, v51, 0x1

    .line 1868
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    const-wide/16 v94, 0x0

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p3

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1855
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 1861
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    cmpl-double v89, v94, v96

    if-ltz v89, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpg-double v89, v94, v96

    if-gtz v89, :cond_0

    .line 1863
    const-wide/high16 v94, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 1871
    :cond_3
    mul-double v20, p1, p1

    .line 1872
    const-wide/16 v54, 0x0

    .line 1873
    .local v54, "qred":D
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 1881
    const/16 v53, 0x14

    .line 1883
    .local v53, "state":I
    :goto_2
    sparse-switch v53, :sswitch_data_0

    .line 2280
    new-instance v89, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v94, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v95, 0x1

    move/from16 v0, v95

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v95, v0

    const/16 v96, 0x0

    const-string v97, "trsbox"

    aput-object v97, v95, v96

    move-object/from16 v0, v89

    move-object/from16 v1, v94

    move-object/from16 v2, v95

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v89

    .line 1885
    :sswitch_0
    const/16 v89, 0x14

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 1886
    const-wide/16 v8, 0x0

    .line 1889
    :sswitch_1
    const/16 v89, 0x1e

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 1890
    const-wide/16 v76, 0x0

    .line 1891
    const/16 v38, 0x0

    :goto_3
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_6

    .line 1892
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-eqz v89, :cond_4

    .line 1893
    const-wide/16 v94, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1900
    :goto_4
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 1901
    .local v16, "d1":D
    mul-double v94, v16, v16

    add-double v76, v76, v94

    .line 1891
    add-int/lit8 v38, v38, 0x1

    goto :goto_3

    .line 1894
    .end local v16    # "d1":D
    :cond_4
    const-wide/16 v94, 0x0

    cmpl-double v89, v8, v94

    if-nez v89, :cond_5

    .line 1895
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-wide/from16 v0, v94

    neg-double v0, v0

    move-wide/from16 v94, v0

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_4

    .line 1897
    :cond_5
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    mul-double v94, v94, v8

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v94, v94, v96

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_4

    .line 1903
    :cond_6
    const-wide/16 v94, 0x0

    cmpl-double v89, v76, v94

    if-nez v89, :cond_7

    .line 1904
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 1906
    :cond_7
    const-wide/16 v94, 0x0

    cmpl-double v89, v8, v94

    if-nez v89, :cond_8

    .line 1907
    move-wide/from16 v36, v76

    .line 1908
    add-int v89, v43, v50

    sub-int v44, v89, v51

    .line 1910
    :cond_8
    mul-double v94, v36, v20

    const-wide v96, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v96, v96, v54

    mul-double v96, v96, v54

    cmpg-double v89, v94, v96

    if-gtz v89, :cond_9

    .line 1911
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 1919
    :cond_9
    const/16 v53, 0xd2

    goto/16 :goto_2

    .line 1922
    :sswitch_2
    const/16 v89, 0x32

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 1923
    move-wide/from16 v66, v20

    .line 1924
    const-wide/16 v30, 0x0

    .line 1925
    .local v30, "ds":D
    const-wide/16 v70, 0x0

    .line 1926
    .local v70, "shs":D
    const/16 v38, 0x0

    :goto_5
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_b

    .line 1927
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_a

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 1930
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    sub-double v66, v66, v94

    .line 1931
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v30, v30, v94

    .line 1932
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v70, v70, v94

    .line 1926
    .end local v16    # "d1":D
    :cond_a
    add-int/lit8 v38, v38, 0x1

    goto :goto_5

    .line 1935
    :cond_b
    const-wide/16 v94, 0x0

    cmpg-double v89, v66, v94

    if-gtz v89, :cond_c

    .line 1936
    const/16 v53, 0x5a

    goto/16 :goto_2

    .line 1938
    :cond_c
    mul-double v94, v76, v66

    mul-double v96, v30, v30

    add-double v94, v94, v96

    invoke-static/range {v94 .. v95}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v82

    .line 1939
    const-wide/16 v94, 0x0

    cmpg-double v89, v30, v94

    if-gez v89, :cond_f

    .line 1940
    sub-double v94, v82, v30

    div-double v10, v94, v76

    .line 1944
    .local v10, "blen":D
    :goto_6
    move-wide/from16 v80, v10

    .line 1945
    const-wide/16 v94, 0x0

    cmpl-double v89, v70, v94

    if-lez v89, :cond_d

    .line 1947
    div-double v94, v36, v70

    move-wide/from16 v0, v94

    invoke-static {v10, v11, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v80

    .line 1953
    :cond_d
    const/16 v39, -0x1

    .line 1954
    const/16 v38, 0x0

    :goto_7
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_11

    .line 1955
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-eqz v89, :cond_e

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    add-double v92, v94, v96

    .line 1957
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-lez v89, :cond_10

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    sub-double v94, v94, v92

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    div-double v82, v94, v96

    .line 1962
    :goto_8
    cmpg-double v89, v82, v80

    if-gez v89, :cond_e

    .line 1963
    move-wide/from16 v80, v82

    .line 1964
    move/from16 v39, v38

    .line 1954
    :cond_e
    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    .line 1942
    .end local v10    # "blen":D
    :cond_f
    add-double v94, v82, v30

    div-double v10, v66, v94

    .restart local v10    # "blen":D
    goto :goto_6

    .line 1960
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    sub-double v94, v94, v92

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    div-double v82, v94, v96

    goto :goto_8

    .line 1971
    :cond_11
    const-wide/16 v68, 0x0

    .line 1972
    .local v68, "sdec":D
    const-wide/16 v94, 0x0

    cmpl-double v89, v80, v94

    if-lez v89, :cond_15

    .line 1973
    add-int/lit8 v43, v43, 0x1

    .line 1974
    div-double v82, v70, v76

    .line 1975
    const/16 v89, -0x1

    move/from16 v0, v39

    move/from16 v1, v89

    if-ne v0, v1, :cond_12

    const-wide/16 v94, 0x0

    cmpl-double v89, v82, v94

    if-lez v89, :cond_12

    .line 1976
    move-wide/from16 v0, v82

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v12

    .line 1977
    const-wide/high16 v94, -0x4010000000000000L    # -1.0

    cmpl-double v89, v12, v94

    if-nez v89, :cond_12

    .line 1978
    move-wide/from16 v12, v82

    .line 1981
    :cond_12
    move-wide/from16 v34, v36

    .line 1982
    const-wide/16 v36, 0x0

    .line 1983
    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_14

    .line 1984
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v80

    add-double v94, v94, v96

    move-object/from16 v0, p3

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1985
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_13

    .line 1987
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 1988
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    add-double v36, v36, v94

    .line 1990
    .end local v16    # "d1":D
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v80

    add-double v94, v94, v96

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1983
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 1993
    :cond_14
    const-wide/high16 v94, 0x3fe0000000000000L    # 0.5

    mul-double v94, v94, v80

    mul-double v94, v94, v70

    sub-double v94, v34, v94

    mul-double v16, v80, v94

    .line 1994
    .restart local v16    # "d1":D
    const-wide/16 v94, 0x0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v94

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v68

    .line 1995
    add-double v54, v54, v68

    .line 2000
    .end local v16    # "d1":D
    :cond_15
    if-ltz v39, :cond_18

    .line 2001
    add-int/lit8 v51, v51, 0x1

    .line 2002
    const-wide/high16 v94, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p4

    move/from16 v1, v39

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2003
    move-object/from16 v0, p5

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpg-double v89, v94, v96

    if-gez v89, :cond_16

    .line 2004
    const-wide/high16 v94, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p4

    move/from16 v1, v39

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2007
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2008
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    sub-double v20, v20, v94

    .line 2009
    const-wide/16 v94, 0x0

    cmpg-double v89, v20, v94

    if-gtz v89, :cond_17

    .line 2010
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2012
    :cond_17
    const/16 v53, 0x14

    goto/16 :goto_2

    .line 2018
    .end local v16    # "d1":D
    :cond_18
    cmpg-double v89, v80, v10

    if-gez v89, :cond_1b

    .line 2019
    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_19

    .line 2020
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2022
    :cond_19
    const-wide v94, 0x3f847ae147ae147bL    # 0.01

    mul-double v94, v94, v54

    cmpg-double v89, v68, v94

    if-gtz v89, :cond_1a

    .line 2023
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2025
    :cond_1a
    div-double v8, v36, v34

    .line 2026
    const/16 v53, 0x1e

    goto/16 :goto_2

    .line 2030
    .end local v10    # "blen":D
    .end local v30    # "ds":D
    .end local v68    # "sdec":D
    .end local v70    # "shs":D
    :cond_1b
    :sswitch_3
    const/16 v89, 0x5a

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 2031
    const-wide/16 v12, 0x0

    .line 2039
    :sswitch_4
    const/16 v89, 0x64

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 2040
    add-int/lit8 v89, v50, -0x1

    move/from16 v0, v51

    move/from16 v1, v89

    if-lt v0, v1, :cond_1c

    .line 2041
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2043
    :cond_1c
    const-wide/16 v28, 0x0

    .line 2044
    const-wide/16 v26, 0x0

    .line 2045
    const-wide/16 v36, 0x0

    .line 2046
    const/16 v38, 0x0

    :goto_a
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_1e

    .line 2047
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_1d

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2050
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    add-double v28, v28, v94

    .line 2051
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v26, v26, v94

    .line 2053
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2054
    mul-double v94, v16, v16

    add-double v36, v36, v94

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2046
    .end local v16    # "d1":D
    :goto_b
    add-int/lit8 v38, v38, 0x1

    goto :goto_a

    .line 2057
    :cond_1d
    const-wide/16 v94, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_b

    .line 2060
    :cond_1e
    move/from16 v42, v43

    .line 2061
    const/16 v53, 0xd2

    goto/16 :goto_2

    .line 2066
    :sswitch_5
    const/16 v89, 0x78

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 2067
    add-int/lit8 v43, v43, 0x1

    .line 2068
    mul-double v94, v36, v28

    mul-double v96, v26, v26

    sub-double v82, v94, v96

    .line 2069
    const-wide v94, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v94, v94, v54

    mul-double v94, v94, v54

    cmpg-double v89, v82, v94

    if-gtz v89, :cond_1f

    .line 2070
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2072
    :cond_1f
    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v82

    .line 2073
    const/16 v38, 0x0

    :goto_c
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_21

    .line 2074
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_20

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    mul-double v94, v94, v26

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v28

    sub-double v94, v94, v96

    div-double v94, v94, v82

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2073
    :goto_d
    add-int/lit8 v38, v38, 0x1

    goto :goto_c

    .line 2077
    :cond_20
    const-wide/16 v94, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_d

    .line 2080
    :cond_21
    move-wide/from16 v0, v82

    neg-double v0, v0

    move-wide/from16 v72, v0

    .line 2087
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2088
    const/16 v39, -0x1

    .line 2089
    const/16 v38, 0x0

    :goto_e
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_22

    .line 2090
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_26

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    add-double v94, v94, v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v84, v94, v96

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v94, v94, v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v86, v94, v96

    .line 2093
    const-wide/16 v94, 0x0

    cmpg-double v89, v84, v94

    if-gtz v89, :cond_23

    .line 2094
    add-int/lit8 v51, v51, 0x1

    .line 2095
    const-wide/high16 v94, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2096
    const/16 v53, 0x64

    .line 2134
    :cond_22
    :goto_f
    const/16 v53, 0xd2

    goto/16 :goto_2

    .line 2097
    :cond_23
    const-wide/16 v94, 0x0

    cmpg-double v89, v86, v94

    if-gtz v89, :cond_24

    .line 2098
    add-int/lit8 v51, v51, 0x1

    .line 2099
    const-wide/high16 v94, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2100
    const/16 v53, 0x64

    goto :goto_f

    .line 2103
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2105
    .restart local v16    # "d1":D
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    .line 2106
    .local v18, "d2":D
    mul-double v94, v16, v16

    mul-double v96, v18, v18

    add-double v74, v94, v96

    .line 2108
    .local v74, "ssq":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v16, v94, v96

    .line 2109
    mul-double v94, v16, v16

    sub-double v82, v74, v94

    .line 2110
    const-wide/16 v94, 0x0

    cmpl-double v89, v82, v94

    if-lez v89, :cond_25

    .line 2111
    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v94

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v82, v94, v96

    .line 2112
    mul-double v94, v4, v82

    cmpl-double v89, v94, v84

    if-lez v89, :cond_25

    .line 2113
    div-double v4, v84, v82

    .line 2114
    move/from16 v39, v38

    .line 2115
    const-wide/high16 v90, -0x4010000000000000L    # -1.0

    .line 2119
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v16, v94, v96

    .line 2120
    mul-double v94, v16, v16

    sub-double v82, v74, v94

    .line 2121
    const-wide/16 v94, 0x0

    cmpl-double v89, v82, v94

    if-lez v89, :cond_26

    .line 2122
    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v94

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    add-double v82, v94, v96

    .line 2123
    mul-double v94, v4, v82

    cmpl-double v89, v94, v86

    if-lez v89, :cond_26

    .line 2124
    div-double v4, v86, v82

    .line 2125
    move/from16 v39, v38

    .line 2126
    const-wide/high16 v90, 0x3ff0000000000000L    # 1.0

    .line 2089
    .end local v16    # "d1":D
    .end local v18    # "d2":D
    .end local v74    # "ssq":D
    :cond_26
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_e

    .line 2137
    :sswitch_6
    const/16 v89, 0x96

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 2138
    const-wide/16 v70, 0x0

    .line 2139
    .restart local v70    # "shs":D
    const-wide/16 v24, 0x0

    .line 2140
    .local v24, "dhs":D
    const-wide/16 v22, 0x0

    .line 2141
    .local v22, "dhd":D
    const/16 v38, 0x0

    :goto_10
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_28

    .line 2142
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_27

    .line 2143
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v70, v70, v94

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v24, v24, v94

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p7

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v22, v22, v94

    .line 2141
    :cond_27
    add-int/lit8 v38, v38, 0x1

    goto :goto_10

    .line 2153
    :cond_28
    const-wide/16 v60, 0x0

    .line 2154
    const/16 v41, -0x1

    .line 2155
    .local v41, "isav":I
    const-wide/16 v64, 0x0

    .line 2156
    const-wide/high16 v94, 0x4031000000000000L    # 17.0

    mul-double v94, v94, v4

    const-wide v96, 0x4008cccccccccccdL    # 3.1

    add-double v94, v94, v96

    move-wide/from16 v0, v94

    double-to-int v0, v0

    move/from16 v45, v0

    .line 2157
    .local v45, "iu":I
    const/16 v38, 0x0

    :goto_11
    move/from16 v0, v38

    move/from16 v1, v45

    if-ge v0, v1, :cond_2b

    .line 2158
    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v94, v0

    mul-double v94, v94, v4

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v96, v0

    div-double v6, v94, v96

    .line 2159
    add-double v94, v6, v6

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    mul-double v98, v6, v6

    add-double v96, v96, v98

    div-double v78, v94, v96

    .line 2160
    .local v78, "sth":D
    mul-double v94, v6, v22

    sub-double v94, v94, v24

    sub-double v94, v94, v24

    mul-double v94, v94, v6

    add-double v82, v70, v94

    .line 2161
    mul-double v94, v6, v26

    sub-double v94, v94, v72

    const-wide/high16 v96, 0x3fe0000000000000L    # 0.5

    mul-double v96, v96, v78

    mul-double v96, v96, v82

    sub-double v94, v94, v96

    mul-double v62, v78, v94

    .line 2162
    cmpl-double v89, v62, v60

    if-lez v89, :cond_2a

    .line 2163
    move-wide/from16 v60, v62

    .line 2164
    move/from16 v41, v38

    .line 2165
    move-wide/from16 v58, v64

    .line 2169
    :cond_29
    :goto_12
    move-wide/from16 v64, v62

    .line 2157
    add-int/lit8 v38, v38, 0x1

    goto :goto_11

    .line 2166
    :cond_2a
    add-int/lit8 v89, v41, 0x1

    move/from16 v0, v38

    move/from16 v1, v89

    if-ne v0, v1, :cond_29

    .line 2167
    move-wide/from16 v56, v62

    goto :goto_12

    .line 2175
    .end local v78    # "sth":D
    :cond_2b
    if-gez v41, :cond_2c

    .line 2176
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2178
    :cond_2c
    move/from16 v0, v41

    move/from16 v1, v45

    if-ge v0, v1, :cond_2d

    .line 2179
    sub-double v94, v56, v58

    add-double v96, v60, v60

    sub-double v96, v96, v58

    sub-double v96, v96, v56

    div-double v82, v94, v96

    .line 2180
    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v94, v0

    const-wide/high16 v96, 0x3fe0000000000000L    # 0.5

    mul-double v96, v96, v82

    add-double v94, v94, v96

    mul-double v94, v94, v4

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v96, v0

    div-double v6, v94, v96

    .line 2182
    :cond_2d
    const-wide/high16 v94, 0x3ff0000000000000L    # 1.0

    mul-double v96, v6, v6

    sub-double v94, v94, v96

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    mul-double v98, v6, v6

    add-double v96, v96, v98

    div-double v14, v94, v96

    .line 2183
    .local v14, "cth":D
    add-double v94, v6, v6

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    mul-double v98, v6, v6

    add-double v96, v96, v98

    div-double v78, v94, v96

    .line 2184
    .restart local v78    # "sth":D
    mul-double v94, v6, v22

    sub-double v94, v94, v24

    sub-double v94, v94, v24

    mul-double v94, v94, v6

    add-double v82, v70, v94

    .line 2185
    mul-double v94, v6, v26

    sub-double v94, v94, v72

    const-wide/high16 v96, 0x3fe0000000000000L    # 0.5

    mul-double v96, v96, v78

    mul-double v96, v96, v82

    sub-double v94, v94, v96

    mul-double v68, v78, v94

    .line 2186
    .restart local v68    # "sdec":D
    const-wide/16 v94, 0x0

    cmpg-double v89, v68, v94

    if-gtz v89, :cond_2e

    .line 2187
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2194
    :cond_2e
    const-wide/16 v26, 0x0

    .line 2195
    const-wide/16 v36, 0x0

    .line 2196
    const/16 v38, 0x0

    :goto_13
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_30

    .line 2197
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    sub-double v96, v14, v96

    move-object/from16 v0, p7

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v98

    mul-double v96, v96, v98

    add-double v94, v94, v96

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v78

    add-double v94, v94, v96

    move-object/from16 v0, p3

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2198
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_2f

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    mul-double v94, v94, v14

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v78

    add-double v94, v94, v96

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v26, v26, v94

    .line 2202
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2203
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    add-double v36, v36, v94

    .line 2205
    .end local v16    # "d1":D
    :cond_2f
    move-object/from16 v0, p7

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    mul-double v94, v94, v14

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v78

    add-double v94, v94, v96

    move-object/from16 v0, p7

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2196
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_13

    .line 2207
    :cond_30
    add-double v54, v54, v68

    .line 2208
    if-ltz v39, :cond_31

    move/from16 v0, v41

    move/from16 v1, v45

    if-ne v0, v1, :cond_31

    .line 2209
    add-int/lit8 v51, v51, 0x1

    .line 2210
    move-object/from16 v0, p4

    move/from16 v1, v39

    move-wide/from16 v2, v90

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2211
    const/16 v53, 0x64

    goto/16 :goto_2

    .line 2217
    :cond_31
    const-wide v94, 0x3f847ae147ae147bL    # 0.01

    mul-double v94, v94, v54

    cmpl-double v89, v68, v94

    if-lez v89, :cond_32

    .line 2218
    const/16 v53, 0x78

    goto/16 :goto_2

    .line 2222
    .end local v14    # "cth":D
    .end local v22    # "dhd":D
    .end local v24    # "dhs":D
    .end local v41    # "isav":I
    .end local v45    # "iu":I
    .end local v68    # "sdec":D
    .end local v70    # "shs":D
    .end local v78    # "sth":D
    :cond_32
    :sswitch_7
    const/16 v89, 0xbe

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 2223
    const-wide/16 v32, 0x0

    .line 2224
    const/16 v38, 0x0

    :goto_14
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_35

    .line 2227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    add-double v94, v94, v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    invoke-static/range {v94 .. v97}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v48

    .line 2229
    .local v48, "min":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-wide/from16 v0, v48

    move-wide/from16 v2, v94

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v94

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2230
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/high16 v96, -0x4010000000000000L    # -1.0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_33

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2233
    :cond_33
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_34

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2236
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v94, v94, v96

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2239
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    add-double v32, v32, v94

    .line 2224
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_14

    .line 2241
    .end local v16    # "d1":D
    .end local v48    # "min":D
    :cond_35
    const/16 v89, 0x2

    move/from16 v0, v89

    new-array v0, v0, [D

    move-object/from16 v89, v0

    const/16 v94, 0x0

    aput-wide v32, v89, v94

    const/16 v94, 0x1

    aput-wide v12, v89, v94

    return-object v89

    .line 2248
    :sswitch_8
    const/16 v89, 0xd2

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 2249
    const/16 v40, 0x0

    .line 2250
    .local v40, "ih":I
    const/16 v46, 0x0

    .local v46, "j":I
    :goto_15
    move/from16 v0, v46

    move/from16 v1, v50

    if-ge v0, v1, :cond_38

    .line 2251
    const-wide/16 v94, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v46

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2252
    const/16 v38, 0x0

    :goto_16
    move/from16 v0, v38

    move/from16 v1, v46

    if-gt v0, v1, :cond_37

    .line 2253
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_36

    .line 2254
    move-object/from16 v0, p6

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v98

    mul-double v96, v96, v98

    add-double v94, v94, v96

    move-object/from16 v0, p6

    move/from16 v1, v46

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2256
    :cond_36
    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    move-object/from16 v0, p5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v98

    mul-double v96, v96, v98

    add-double v94, v94, v96

    move-object/from16 v0, p6

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2257
    add-int/lit8 v40, v40, 0x1

    .line 2252
    add-int/lit8 v38, v38, 0x1

    goto :goto_16

    .line 2250
    :cond_37
    add-int/lit8 v46, v46, 0x1

    goto :goto_15

    .line 2260
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v89

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v89

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v88

    .line 2261
    .local v88, "tmp":Lorg/apache/commons/math3/linear/RealVector;
    const/16 v47, 0x0

    .local v47, "k":I
    :goto_17
    move/from16 v0, v47

    move/from16 v1, v52

    if-ge v0, v1, :cond_3a

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-eqz v89, :cond_39

    .line 2263
    const/16 v38, 0x0

    :goto_18
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_39

    .line 2264
    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, v88

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v47

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v98

    mul-double v96, v96, v98

    add-double v94, v94, v96

    move-object/from16 v0, p6

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2263
    add-int/lit8 v38, v38, 0x1

    goto :goto_18

    .line 2261
    :cond_39
    add-int/lit8 v47, v47, 0x1

    goto :goto_17

    .line 2268
    :cond_3a
    const-wide/16 v94, 0x0

    cmpl-double v89, v12, v94

    if-eqz v89, :cond_3b

    .line 2269
    const/16 v53, 0x32

    goto/16 :goto_2

    .line 2271
    :cond_3b
    move/from16 v0, v43

    move/from16 v1, v42

    if-le v0, v1, :cond_3c

    .line 2272
    const/16 v53, 0x96

    goto/16 :goto_2

    .line 2274
    :cond_3c
    const/16 v38, 0x0

    :goto_19
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_3d

    .line 2275
    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p7

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2274
    add-int/lit8 v38, v38, 0x1

    goto :goto_19

    .line 2277
    :cond_3d
    const/16 v53, 0x78

    goto/16 :goto_2

    .line 1883
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
        0x32 -> :sswitch_2
        0x5a -> :sswitch_3
        0x64 -> :sswitch_4
        0x78 -> :sswitch_5
        0x96 -> :sswitch_6
        0xbe -> :sswitch_7
        0xd2 -> :sswitch_8
    .end sparse-switch
.end method

.method private update(DDI)V
    .locals 43
    .param p1, "beta"    # D
    .param p3, "denom"    # D
    .param p5, "knew"    # I

    .prologue
    .line 2305
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v26

    .line 2308
    .local v26, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v27, v0

    .line 2309
    .local v27, "npt":I
    sub-int v36, v27, v26

    add-int/lit8 v28, v36, -0x1

    .line 2312
    .local v28, "nptm":I
    new-instance v29, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v36, v27, v26

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 2314
    .local v29, "work":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const-wide/16 v34, 0x0

    .line 2315
    .local v34, "ztest":D
    const/16 v25, 0x0

    .local v25, "k":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 2316
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    invoke-static/range {v34 .. v37}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v34

    .line 2316
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 2315
    :cond_0
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 2321
    .end local v23    # "j":I
    :cond_1
    const-wide v36, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double v34, v34, v36

    .line 2325
    const/16 v23, 0x1

    .restart local v23    # "j":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    .line 2327
    .local v8, "d1":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    cmpl-double v36, v36, v34

    if-lez v36, :cond_2

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    .line 2331
    .local v10, "d2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    .line 2332
    .local v12, "d3":D
    mul-double v36, v10, v10

    mul-double v38, v12, v12

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 2333
    .local v14, "d4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    div-double v16, v36, v14

    .line 2334
    .local v16, "d5":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    div-double v18, v36, v14

    .line 2335
    .local v18, "d6":D
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    mul-double v36, v36, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    mul-double v38, v38, v18

    add-double v20, v36, v38

    .line 2337
    .local v20, "d7":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    mul-double v38, v38, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v37, v0

    const/16 v40, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v22

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    mul-double v40, v40, v18

    sub-double v38, v38, v40

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v23

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v37

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2335
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 2341
    .end local v10    # "d2":D
    .end local v12    # "d3":D
    .end local v14    # "d4":D
    .end local v16    # "d5":D
    .end local v18    # "d6":D
    .end local v20    # "d7":D
    .end local v22    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const-wide/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2325
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 2347
    .end local v8    # "d1":D
    :cond_3
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-object/from16 v0, v29

    move/from16 v1, v22

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2347
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 2350
    :cond_4
    move-object/from16 v0, v29

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    .line 2351
    .local v6, "alpha":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v32

    .line 2352
    .local v32, "tau":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v38, v38, v40

    move-object/from16 v0, v36

    move/from16 v1, p5

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2356
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    .line 2357
    .local v30, "sqrtDenom":D
    div-double v8, v32, v30

    .line 2358
    .restart local v8    # "d1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    div-double v10, v36, v30

    .line 2359
    .restart local v10    # "d2":D
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 2360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    mul-double v38, v38, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v40, v40, v10

    sub-double v38, v38, v40

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v37

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2359
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 2366
    :cond_5
    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 2367
    add-int v24, v27, v23

    .line 2368
    .local v24, "jp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    move-object/from16 v0, v29

    move/from16 v1, v24

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v36, v36, v6

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    mul-double v38, v38, v32

    sub-double v36, v36, v38

    div-double v12, v36, p3

    .line 2370
    .restart local v12    # "d3":D
    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    mul-double v38, v38, v32

    sub-double v36, v36, v38

    div-double v14, v36, p3

    .line 2371
    .restart local v14    # "d4":D
    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_7

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v40, v40, v12

    add-double v38, v38, v40

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v40, v40, v14

    add-double v38, v38, v40

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v23

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2374
    move/from16 v0, v22

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    sub-int v37, v22, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    move-object/from16 v0, v36

    move/from16 v1, v24

    move/from16 v2, v37

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2371
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 2366
    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 2379
    .end local v12    # "d3":D
    .end local v14    # "d4":D
    .end local v24    # "jp":I
    :cond_8
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 7

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 244
    .local v0, "lowerBound":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 247
    .local v1, "upperBound":[D
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->setup([D[D)V

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    .line 250
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 252
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqa([D[D)D

    move-result-wide v2

    .line 254
    .local v2, "value":D
    new-instance v4, Lorg/apache/commons/math3/optim/PointValuePair;

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v6, :cond_1

    .end local v2    # "value":D
    :goto_1
    invoke-direct {v4, v5, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    return-object v4

    .line 249
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 254
    .restart local v2    # "value":D
    :cond_1
    neg-double v2, v2

    goto :goto_1
.end method
