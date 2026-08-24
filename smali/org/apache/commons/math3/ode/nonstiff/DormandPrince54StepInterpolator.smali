.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "DormandPrince54StepInterpolator.java"


# static fields
.field private static final A70:D = 0.09114583333333333

.field private static final A72:D = 0.44923629829290207

.field private static final A73:D = 0.6510416666666666

.field private static final A74:D = -0.322376179245283

.field private static final A75:D = 0.13095238095238096

.field private static final D0:D = -1.1270175653862835

.field private static final D2:D = 2.675424484351598

.field private static final D3:D = -5.685526961588504

.field private static final D4:D = 3.5219323679207912

.field private static final D5:D = -1.7672812570757455

.field private static final D6:D = 2.382468931778144

.field private static final serialVersionUID:J = 0x132df10L


# instance fields
.field private v1:[D

.field private v2:[D

.field private v3:[D

.field private v4:[D

.field private vectorsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 104
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 105
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 106
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 107
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 109
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;)V
    .locals 2
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 121
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    if-nez v0, :cond_0

    .line 123
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 124
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 125
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 126
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 132
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 133
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 134
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 135
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 39
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    if-nez v11, :cond_2

    .line 176
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    if-nez v11, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    new-array v11, v11, [D

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 178
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    new-array v11, v11, [D

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 179
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    new-array v11, v11, [D

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 180
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    new-array v11, v11, [D

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 186
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    if-ge v10, v11, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/16 v26, 0x0

    aget-object v11, v11, v26

    aget-wide v14, v11, v10

    .line 188
    .local v14, "yDot0":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/16 v26, 0x2

    aget-object v11, v11, v26

    aget-wide v16, v11, v10

    .line 189
    .local v16, "yDot2":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/16 v26, 0x3

    aget-object v11, v11, v26

    aget-wide v18, v11, v10

    .line 190
    .local v18, "yDot3":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/16 v26, 0x4

    aget-object v11, v11, v26

    aget-wide v20, v11, v10

    .line 191
    .local v20, "yDot4":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/16 v26, 0x5

    aget-object v11, v11, v26

    aget-wide v22, v11, v10

    .line 192
    .local v22, "yDot5":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/16 v26, 0x6

    aget-object v11, v11, v26

    aget-wide v24, v11, v10

    .line 193
    .local v24, "yDot6":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    const-wide v26, 0x3fb7555555555555L    # 0.09114583333333333

    mul-double v26, v26, v14

    const-wide v28, 0x3fdcc0499a5605fbL    # 0.44923629829290207

    mul-double v28, v28, v16

    add-double v26, v26, v28

    const-wide v28, 0x3fe4d55555555555L    # 0.6510416666666666

    mul-double v28, v28, v18

    add-double v26, v26, v28

    const-wide v28, -0x402b5e304d4873edL    # -0.322376179245283

    mul-double v28, v28, v20

    add-double v26, v26, v28

    const-wide v28, 0x3fc0c30c30c30c31L    # 0.13095238095238096

    mul-double v28, v28, v22

    add-double v26, v26, v28

    aput-wide v26, v11, v10

    .line 194
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    sub-double v26, v14, v26

    aput-wide v26, v11, v10

    .line 195
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    sub-double v26, v26, v28

    sub-double v26, v26, v24

    aput-wide v26, v11, v10

    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    const-wide v26, -0x400df7bc6dea5fbaL    # -1.1270175653862835

    mul-double v26, v26, v14

    const-wide v28, 0x40056744f3b9a987L    # 2.675424484351598

    mul-double v28, v28, v16

    add-double v26, v26, v28

    const-wide v28, -0x3fe94205385dcdf4L    # -5.685526961588504

    mul-double v28, v28, v18

    add-double v26, v26, v28

    const-wide v28, 0x400c2ceae0978c92L    # 3.5219323679207912

    mul-double v28, v28, v20

    add-double v26, v26, v28

    const-wide v28, -0x4003b93749e06a1bL    # -1.7672812570757455

    mul-double v28, v28, v22

    add-double v26, v26, v28

    const-wide v28, 0x40030f4bdf0dc914L    # 2.382468931778144

    mul-double v28, v28, v24

    add-double v26, v26, v28

    aput-wide v26, v11, v10

    .line 186
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 199
    .end local v14    # "yDot0":D
    .end local v16    # "yDot2":D
    .end local v18    # "yDot3":D
    .end local v20    # "yDot4":D
    .end local v22    # "yDot5":D
    .end local v24    # "yDot6":D
    :cond_1
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 204
    .end local v10    # "i":I
    :cond_2
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v8, v26, p1

    .line 205
    .local v8, "eta":D
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v12, v26, p1

    .line 206
    .local v12, "twoTheta":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v2, v26, v12

    .line 207
    .local v2, "dot2":D
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    mul-double v28, v28, p1

    sub-double v26, v26, v28

    mul-double v4, p1, v26

    .line 208
    .local v4, "dot3":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    sub-double v28, v12, v28

    mul-double v28, v28, p1

    add-double v26, v26, v28

    mul-double v6, v12, v26

    .line 209
    .local v6, "dot4":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->previousState:[D

    if-eqz v11, :cond_3

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, p1, v26

    if-gtz v11, :cond_3

    .line 210
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    if-ge v10, v11, :cond_4

    .line 211
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->previousState:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->h:D

    move-wide/from16 v28, v0

    mul-double v28, v28, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    move-object/from16 v34, v0

    aget-wide v34, v34, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    move-object/from16 v36, v0

    aget-wide v36, v36, v10

    mul-double v36, v36, v8

    add-double v34, v34, v36

    mul-double v34, v34, p1

    add-double v32, v32, v34

    mul-double v32, v32, v8

    add-double v30, v30, v32

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v11, v10

    .line 213
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    mul-double v28, v28, v2

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    mul-double v28, v28, v4

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    mul-double v28, v28, v6

    add-double v26, v26, v28

    aput-wide v26, v11, v10

    .line 210
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 216
    .end local v10    # "i":I
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v11, v11

    if-ge v10, v11, :cond_4

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->currentState:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    move-object/from16 v34, v0

    aget-wide v34, v34, v10

    mul-double v34, v34, v8

    add-double v32, v32, v34

    mul-double v32, v32, p1

    add-double v30, v30, v32

    mul-double v30, v30, p1

    sub-double v28, v28, v30

    mul-double v28, v28, p3

    sub-double v26, v26, v28

    aput-wide v26, v11, v10

    .line 219
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    mul-double v28, v28, v2

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    mul-double v28, v28, v4

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    mul-double v28, v28, v6

    add-double v26, v26, v28

    aput-wide v26, v11, v10

    .line 216
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 223
    :cond_4
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;)V

    return-object v0
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 1
    .param p1, "integrator"    # Lorg/apache/commons/math3/ode/AbstractIntegrator;
    .param p2, "y"    # [D
    .param p3, "yDotK"    # [[D
    .param p4, "forward"    # Z
    .param p5, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p6, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 155
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 156
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 157
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 158
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 160
    return-void
.end method

.method public storeTime(D)V
    .locals 1
    .param p1, "t"    # D

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 167
    return-void
.end method
