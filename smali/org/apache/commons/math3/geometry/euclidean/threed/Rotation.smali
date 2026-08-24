.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

.field private static final serialVersionUID:J = -0x1de3341942831b79L


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 99
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    return-void
.end method

.method public constructor <init>(DDDDZ)V
    .locals 11
    .param p1, "q0"    # D
    .param p3, "q1"    # D
    .param p5, "q2"    # D
    .param p7, "q3"    # D
    .param p9, "needsNormalization"    # Z

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    if-eqz p9, :cond_0

    .line 139
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, p1, p1

    mul-double v8, p3, p3

    add-double/2addr v6, v8

    mul-double v8, p5, p5

    add-double/2addr v6, v8

    mul-double v8, p7, p7

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    div-double v2, v4, v6

    .line 140
    .local v2, "inv":D
    mul-double/2addr p1, v2

    .line 141
    mul-double/2addr p3, v2

    .line 142
    mul-double p5, p5, v2

    .line 143
    mul-double p7, p7, v2

    .line 146
    .end local v2    # "inv":D
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 147
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 148
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 149
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;DDD)V
    .locals 10
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "alpha1"    # D
    .param p4, "alpha2"    # D
    .param p6, "alpha3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;DDD)V

    .line 379
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;DDD)V
    .locals 7
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .param p3, "alpha1"    # D
    .param p5, "alpha2"    # D
    .param p7, "alpha3"    # D

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v1, v4, p3, p4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 406
    .local v1, "r1":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v2, v4, p5, p6, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 407
    .local v2, "r2":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v3, v4, p7, p8, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 408
    .local v3, "r3":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    invoke-virtual {v2, v3, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    .line 409
    .local v0, "composed":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 410
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 411
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 412
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 413
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 2
    .param p1, "axis"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "angle"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V
    .locals 10
    .param p1, "axis"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "angle"    # D
    .param p4, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v4

    .line 180
    .local v4, "norm":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_0

    .line 181
    new-instance v6, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_AXIS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 184
    :cond_0
    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p4, v6, :cond_1

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    mul-double v2, v6, p2

    .line 185
    .local v2, "halfAngle":D
    :goto_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    div-double v0, v6, v4

    .line 187
    .local v0, "coeff":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 188
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    mul-double/2addr v6, v0

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 189
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    mul-double/2addr v6, v0

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 190
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    mul-double/2addr v6, v0

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 192
    return-void

    .line 184
    .end local v0    # "coeff":D
    .end local v2    # "halfAngle":D
    :cond_1
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v2, v6, p2

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 16
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v12

    mul-double v6, v10, v12

    .line 333
    .local v6, "normProduct":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v6, v10

    if-nez v10, :cond_0

    .line 334
    new-instance v10, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v11, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v10

    .line 337
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    .line 339
    .local v4, "dot":D
    const-wide v10, -0x4010000000000012L    # -0.999999999999998

    mul-double/2addr v10, v6

    cmpg-double v10, v4, v10

    if-gez v10, :cond_1

    .line 342
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    .line 343
    .local v9, "w":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 344
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    neg-double v10, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 345
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    neg-double v10, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 346
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    neg-double v10, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 358
    .end local v9    # "w":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :goto_0
    return-void

    .line 350
    :cond_1
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v14, v4, v6

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 351
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v12, v14

    mul-double/2addr v12, v6

    div-double v2, v10, v12

    .line 352
    .local v2, "coeff":D
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    .line 353
    .local v8, "q":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    mul-double/2addr v10, v2

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 354
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    mul-double/2addr v10, v2

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 355
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    mul-double/2addr v10, v2

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 21
    .param p1, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v16

    .line 281
    .local v16, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 282
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 286
    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v17

    .line 287
    .local v17, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p4

    .line 288
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p3

    .line 291
    const/4 v2, 0x3

    new-array v14, v2, [[D

    const/16 v18, 0x0

    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    aput-object v19, v14, v18

    const/16 v18, 0x1

    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    aput-object v19, v14, v18

    const/16 v18, 0x2

    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, v19, v20

    aput-object v19, v14, v18

    .line 309
    .local v14, "m":[[D
    invoke-static {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v15

    .line 310
    .local v15, "quat":[D
    const/4 v2, 0x0

    aget-wide v2, v15, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 311
    const/4 v2, 0x1

    aget-wide v2, v15, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 312
    const/4 v2, 0x2

    aget-wide v2, v15, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 313
    const/4 v2, 0x3

    aget-wide v2, v15, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 315
    return-void
.end method

.method public constructor <init>([[DD)V
    .locals 14
    .param p1, "m"    # [[D
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    array-length v4, p1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v4, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, p1, v4

    array-length v4, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    aget-object v4, p1, v4

    array-length v4, v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 230
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROTATION_MATRIX_DIMENSIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    array-length v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, p1, v8

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 236
    :cond_1
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->orthogonalizeMatrix([[DD)[[D

    move-result-object v2

    .line 239
    .local v2, "ort":[[D
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, v2, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const/4 v8, 0x2

    aget-object v8, v2, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const/4 v10, 0x2

    aget-object v10, v2, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    const/4 v10, 0x2

    aget-object v10, v2, v10

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    const/4 v12, 0x0

    aget-object v12, v2, v12

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    aget-object v6, v2, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    const/4 v10, 0x1

    aget-object v10, v2, v10

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    const/4 v12, 0x0

    aget-object v12, v2, v12

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 242
    .local v0, "det":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_2

    .line 243
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 248
    :cond_2
    invoke-static {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v3

    .line 249
    .local v3, "quat":[D
    const/4 v4, 0x0

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 250
    const/4 v4, 0x1

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 251
    const/4 v4, 0x2

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 252
    const/4 v4, 0x3

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 254
    return-void
.end method

.method private composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 18
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 1231
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    add-double/2addr v10, v12

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v3
.end method

.method private composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 18
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 1290
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    neg-double v6, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    neg-double v8, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    neg-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    add-double/2addr v10, v12

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v3
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)D
    .locals 2
    .param p0, "r1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p1, "r2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 1421
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide v0

    return-wide v0
.end method

.method private static mat2quat([[D)[D
    .locals 10
    .param p0, "ort"    # [[D

    .prologue
    .line 421
    const/4 v3, 0x4

    new-array v2, v3, [D

    .line 434
    .local v2, "quat":[D
    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    add-double/2addr v6, v8

    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    add-double v4, v6, v8

    .line 435
    .local v4, "s":D
    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 437
    const/4 v3, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 438
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x0

    aget-wide v8, v2, v3

    div-double v0, v6, v8

    .line 439
    .local v0, "inv":D
    const/4 v3, 0x1

    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 440
    const/4 v3, 0x2

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 441
    const/4 v3, 0x3

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 472
    :goto_0
    return-object v2

    .line 443
    .end local v0    # "inv":D
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    sub-double/2addr v6, v8

    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    sub-double v4, v6, v8

    .line 444
    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 446
    const/4 v3, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 447
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x1

    aget-wide v8, v2, v3

    div-double v0, v6, v8

    .line 448
    .restart local v0    # "inv":D
    const/4 v3, 0x0

    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 449
    const/4 v3, 0x2

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 450
    const/4 v3, 0x3

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    goto :goto_0

    .line 452
    .end local v0    # "inv":D
    :cond_1
    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    sub-double/2addr v6, v8

    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    sub-double v4, v6, v8

    .line 453
    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 455
    const/4 v3, 0x2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 456
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x2

    aget-wide v8, v2, v3

    div-double v0, v6, v8

    .line 457
    .restart local v0    # "inv":D
    const/4 v3, 0x0

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 458
    const/4 v3, 0x1

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 459
    const/4 v3, 0x3

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    goto/16 :goto_0

    .line 462
    .end local v0    # "inv":D
    :cond_2
    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v6, 0x2

    aget-wide v6, v3, v6

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    sub-double/2addr v6, v8

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    sub-double v4, v6, v8

    .line 463
    const/4 v3, 0x3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 464
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x3

    aget-wide v8, v2, v3

    div-double v0, v6, v8

    .line 465
    .restart local v0    # "inv":D
    const/4 v3, 0x0

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 466
    const/4 v3, 0x1

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const/4 v8, 0x2

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    .line 467
    const/4 v3, 0x2

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    aput-wide v6, v2, v3

    goto/16 :goto_0
.end method

.method private orthogonalizeMatrix([[DD)[[D
    .locals 76
    .param p1, "m"    # [[D
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .prologue
    .line 1309
    const/16 v68, 0x0

    aget-object v25, p1, v68

    .line 1310
    .local v25, "m0":[D
    const/16 v68, 0x1

    aget-object v26, p1, v68

    .line 1311
    .local v26, "m1":[D
    const/16 v68, 0x2

    aget-object v27, p1, v68

    .line 1312
    .local v27, "m2":[D
    const/16 v68, 0x0

    aget-wide v50, v25, v68

    .line 1313
    .local v50, "x00":D
    const/16 v68, 0x1

    aget-wide v52, v25, v68

    .line 1314
    .local v52, "x01":D
    const/16 v68, 0x2

    aget-wide v54, v25, v68

    .line 1315
    .local v54, "x02":D
    const/16 v68, 0x0

    aget-wide v56, v26, v68

    .line 1316
    .local v56, "x10":D
    const/16 v68, 0x1

    aget-wide v58, v26, v68

    .line 1317
    .local v58, "x11":D
    const/16 v68, 0x2

    aget-wide v60, v26, v68

    .line 1318
    .local v60, "x12":D
    const/16 v68, 0x0

    aget-wide v62, v27, v68

    .line 1319
    .local v62, "x20":D
    const/16 v68, 0x1

    aget-wide v64, v27, v68

    .line 1320
    .local v64, "x21":D
    const/16 v68, 0x2

    aget-wide v66, v27, v68

    .line 1321
    .local v66, "x22":D
    const-wide/16 v20, 0x0

    .line 1324
    .local v20, "fn":D
    const/16 v68, 0x3

    const/16 v69, 0x3

    filled-new-array/range {v68 .. v69}, [I

    move-result-object v68

    sget-object v69, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v69

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, [[D

    .line 1325
    .local v46, "o":[[D
    const/16 v68, 0x0

    aget-object v47, v46, v68

    .line 1326
    .local v47, "o0":[D
    const/16 v68, 0x1

    aget-object v48, v46, v68

    .line 1327
    .local v48, "o1":[D
    const/16 v68, 0x2

    aget-object v49, v46, v68

    .line 1330
    .local v49, "o2":[D
    const/16 v24, 0x0

    .line 1331
    .local v24, "i":I
    :goto_0
    add-int/lit8 v24, v24, 0x1

    const/16 v68, 0xb

    move/from16 v0, v24

    move/from16 v1, v68

    if-ge v0, v1, :cond_1

    .line 1334
    const/16 v68, 0x0

    aget-wide v68, v25, v68

    mul-double v68, v68, v50

    const/16 v70, 0x0

    aget-wide v70, v26, v70

    mul-double v70, v70, v56

    add-double v68, v68, v70

    const/16 v70, 0x0

    aget-wide v70, v27, v70

    mul-double v70, v70, v62

    add-double v28, v68, v70

    .line 1335
    .local v28, "mx00":D
    const/16 v68, 0x1

    aget-wide v68, v25, v68

    mul-double v68, v68, v50

    const/16 v70, 0x1

    aget-wide v70, v26, v70

    mul-double v70, v70, v56

    add-double v68, v68, v70

    const/16 v70, 0x1

    aget-wide v70, v27, v70

    mul-double v70, v70, v62

    add-double v34, v68, v70

    .line 1336
    .local v34, "mx10":D
    const/16 v68, 0x2

    aget-wide v68, v25, v68

    mul-double v68, v68, v50

    const/16 v70, 0x2

    aget-wide v70, v26, v70

    mul-double v70, v70, v56

    add-double v68, v68, v70

    const/16 v70, 0x2

    aget-wide v70, v27, v70

    mul-double v70, v70, v62

    add-double v40, v68, v70

    .line 1337
    .local v40, "mx20":D
    const/16 v68, 0x0

    aget-wide v68, v25, v68

    mul-double v68, v68, v52

    const/16 v70, 0x0

    aget-wide v70, v26, v70

    mul-double v70, v70, v58

    add-double v68, v68, v70

    const/16 v70, 0x0

    aget-wide v70, v27, v70

    mul-double v70, v70, v64

    add-double v30, v68, v70

    .line 1338
    .local v30, "mx01":D
    const/16 v68, 0x1

    aget-wide v68, v25, v68

    mul-double v68, v68, v52

    const/16 v70, 0x1

    aget-wide v70, v26, v70

    mul-double v70, v70, v58

    add-double v68, v68, v70

    const/16 v70, 0x1

    aget-wide v70, v27, v70

    mul-double v70, v70, v64

    add-double v36, v68, v70

    .line 1339
    .local v36, "mx11":D
    const/16 v68, 0x2

    aget-wide v68, v25, v68

    mul-double v68, v68, v52

    const/16 v70, 0x2

    aget-wide v70, v26, v70

    mul-double v70, v70, v58

    add-double v68, v68, v70

    const/16 v70, 0x2

    aget-wide v70, v27, v70

    mul-double v70, v70, v64

    add-double v42, v68, v70

    .line 1340
    .local v42, "mx21":D
    const/16 v68, 0x0

    aget-wide v68, v25, v68

    mul-double v68, v68, v54

    const/16 v70, 0x0

    aget-wide v70, v26, v70

    mul-double v70, v70, v60

    add-double v68, v68, v70

    const/16 v70, 0x0

    aget-wide v70, v27, v70

    mul-double v70, v70, v66

    add-double v32, v68, v70

    .line 1341
    .local v32, "mx02":D
    const/16 v68, 0x1

    aget-wide v68, v25, v68

    mul-double v68, v68, v54

    const/16 v70, 0x1

    aget-wide v70, v26, v70

    mul-double v70, v70, v60

    add-double v68, v68, v70

    const/16 v70, 0x1

    aget-wide v70, v27, v70

    mul-double v70, v70, v66

    add-double v38, v68, v70

    .line 1342
    .local v38, "mx12":D
    const/16 v68, 0x2

    aget-wide v68, v25, v68

    mul-double v68, v68, v54

    const/16 v70, 0x2

    aget-wide v70, v26, v70

    mul-double v70, v70, v60

    add-double v68, v68, v70

    const/16 v70, 0x2

    aget-wide v70, v27, v70

    mul-double v70, v70, v66

    add-double v44, v68, v70

    .line 1345
    .local v44, "mx22":D
    const/16 v68, 0x0

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v50, v28

    mul-double v74, v52, v34

    add-double v72, v72, v74

    mul-double v74, v54, v40

    add-double v72, v72, v74

    const/16 v69, 0x0

    aget-wide v74, v25, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v50, v70

    aput-wide v70, v47, v68

    .line 1346
    const/16 v68, 0x1

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v50, v30

    mul-double v74, v52, v36

    add-double v72, v72, v74

    mul-double v74, v54, v42

    add-double v72, v72, v74

    const/16 v69, 0x1

    aget-wide v74, v25, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v52, v70

    aput-wide v70, v47, v68

    .line 1347
    const/16 v68, 0x2

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v50, v32

    mul-double v74, v52, v38

    add-double v72, v72, v74

    mul-double v74, v54, v44

    add-double v72, v72, v74

    const/16 v69, 0x2

    aget-wide v74, v25, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v54, v70

    aput-wide v70, v47, v68

    .line 1348
    const/16 v68, 0x0

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v56, v28

    mul-double v74, v58, v34

    add-double v72, v72, v74

    mul-double v74, v60, v40

    add-double v72, v72, v74

    const/16 v69, 0x0

    aget-wide v74, v26, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v56, v70

    aput-wide v70, v48, v68

    .line 1349
    const/16 v68, 0x1

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v56, v30

    mul-double v74, v58, v36

    add-double v72, v72, v74

    mul-double v74, v60, v42

    add-double v72, v72, v74

    const/16 v69, 0x1

    aget-wide v74, v26, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v58, v70

    aput-wide v70, v48, v68

    .line 1350
    const/16 v68, 0x2

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v56, v32

    mul-double v74, v58, v38

    add-double v72, v72, v74

    mul-double v74, v60, v44

    add-double v72, v72, v74

    const/16 v69, 0x2

    aget-wide v74, v26, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v60, v70

    aput-wide v70, v48, v68

    .line 1351
    const/16 v68, 0x0

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v62, v28

    mul-double v74, v64, v34

    add-double v72, v72, v74

    mul-double v74, v66, v40

    add-double v72, v72, v74

    const/16 v69, 0x0

    aget-wide v74, v27, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v62, v70

    aput-wide v70, v49, v68

    .line 1352
    const/16 v68, 0x1

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v62, v30

    mul-double v74, v64, v36

    add-double v72, v72, v74

    mul-double v74, v66, v42

    add-double v72, v72, v74

    const/16 v69, 0x1

    aget-wide v74, v27, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v64, v70

    aput-wide v70, v49, v68

    .line 1353
    const/16 v68, 0x2

    const-wide/high16 v70, 0x3fe0000000000000L    # 0.5

    mul-double v72, v62, v32

    mul-double v74, v64, v38

    add-double v72, v72, v74

    mul-double v74, v66, v44

    add-double v72, v72, v74

    const/16 v69, 0x2

    aget-wide v74, v27, v69

    sub-double v72, v72, v74

    mul-double v70, v70, v72

    sub-double v70, v66, v70

    aput-wide v70, v49, v68

    .line 1356
    const/16 v68, 0x0

    aget-wide v68, v47, v68

    const/16 v70, 0x0

    aget-wide v70, v25, v70

    sub-double v2, v68, v70

    .line 1357
    .local v2, "corr00":D
    const/16 v68, 0x1

    aget-wide v68, v47, v68

    const/16 v70, 0x1

    aget-wide v70, v25, v70

    sub-double v4, v68, v70

    .line 1358
    .local v4, "corr01":D
    const/16 v68, 0x2

    aget-wide v68, v47, v68

    const/16 v70, 0x2

    aget-wide v70, v25, v70

    sub-double v6, v68, v70

    .line 1359
    .local v6, "corr02":D
    const/16 v68, 0x0

    aget-wide v68, v48, v68

    const/16 v70, 0x0

    aget-wide v70, v26, v70

    sub-double v8, v68, v70

    .line 1360
    .local v8, "corr10":D
    const/16 v68, 0x1

    aget-wide v68, v48, v68

    const/16 v70, 0x1

    aget-wide v70, v26, v70

    sub-double v10, v68, v70

    .line 1361
    .local v10, "corr11":D
    const/16 v68, 0x2

    aget-wide v68, v48, v68

    const/16 v70, 0x2

    aget-wide v70, v26, v70

    sub-double v12, v68, v70

    .line 1362
    .local v12, "corr12":D
    const/16 v68, 0x0

    aget-wide v68, v49, v68

    const/16 v70, 0x0

    aget-wide v70, v27, v70

    sub-double v14, v68, v70

    .line 1363
    .local v14, "corr20":D
    const/16 v68, 0x1

    aget-wide v68, v49, v68

    const/16 v70, 0x1

    aget-wide v70, v27, v70

    sub-double v16, v68, v70

    .line 1364
    .local v16, "corr21":D
    const/16 v68, 0x2

    aget-wide v68, v49, v68

    const/16 v70, 0x2

    aget-wide v70, v27, v70

    sub-double v18, v68, v70

    .line 1367
    .local v18, "corr22":D
    mul-double v68, v2, v2

    mul-double v70, v4, v4

    add-double v68, v68, v70

    mul-double v70, v6, v6

    add-double v68, v68, v70

    mul-double v70, v8, v8

    add-double v68, v68, v70

    mul-double v70, v10, v10

    add-double v68, v68, v70

    mul-double v70, v12, v12

    add-double v68, v68, v70

    mul-double v70, v14, v14

    add-double v68, v68, v70

    mul-double v70, v16, v16

    add-double v68, v68, v70

    mul-double v70, v18, v18

    add-double v22, v68, v70

    .line 1372
    .local v22, "fn1":D
    sub-double v68, v22, v20

    invoke-static/range {v68 .. v69}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v68

    cmpg-double v68, v68, p2

    if-gtz v68, :cond_0

    .line 1373
    return-object v46

    .line 1377
    :cond_0
    const/16 v68, 0x0

    aget-wide v50, v47, v68

    .line 1378
    const/16 v68, 0x1

    aget-wide v52, v47, v68

    .line 1379
    const/16 v68, 0x2

    aget-wide v54, v47, v68

    .line 1380
    const/16 v68, 0x0

    aget-wide v56, v48, v68

    .line 1381
    const/16 v68, 0x1

    aget-wide v58, v48, v68

    .line 1382
    const/16 v68, 0x2

    aget-wide v60, v48, v68

    .line 1383
    const/16 v68, 0x0

    aget-wide v62, v49, v68

    .line 1384
    const/16 v68, 0x1

    aget-wide v64, v49, v68

    .line 1385
    const/16 v68, 0x2

    aget-wide v66, v49, v68

    .line 1386
    move-wide/from16 v20, v22

    .line 1388
    goto/16 :goto_0

    .line 1391
    .end local v2    # "corr00":D
    .end local v4    # "corr01":D
    .end local v6    # "corr02":D
    .end local v8    # "corr10":D
    .end local v10    # "corr11":D
    .end local v12    # "corr12":D
    .end local v14    # "corr20":D
    .end local v16    # "corr21":D
    .end local v18    # "corr22":D
    .end local v22    # "fn1":D
    .end local v28    # "mx00":D
    .end local v30    # "mx01":D
    .end local v32    # "mx02":D
    .end local v34    # "mx10":D
    .end local v36    # "mx11":D
    .end local v38    # "mx12":D
    .end local v40    # "mx20":D
    .end local v42    # "mx21":D
    .end local v44    # "mx22":D
    :cond_1
    new-instance v68, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v69, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_ORTHOGONOLIZE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    add-int/lit8 v72, v24, -0x1

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    invoke-direct/range {v68 .. v70}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v68
.end method


# virtual methods
.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 1249
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 26
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 1150
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v14

    .line 1151
    .local v14, "x":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v16

    .line 1152
    .local v16, "y":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    .line 1154
    .local v18, "z":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v4, v4, v16

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v4, v4, v18

    add-double v12, v2, v4

    .line 1155
    .local v12, "s":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v10, v2

    .line 1157
    .local v10, "m0":D
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v14, v10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v8, v8, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v16

    sub-double v8, v8, v20

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v4, v14

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v8, v16, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    sub-double v20, v20, v22

    sub-double v8, v8, v20

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v12

    add-double v8, v8, v20

    mul-double/2addr v6, v8

    sub-double v6, v6, v16

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v20, v18, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v14

    sub-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v20, v20, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    add-double v20, v20, v22

    mul-double v8, v8, v20

    sub-double v8, v8, v18

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v3
.end method

.method public applyInverseTo([D[D)V
    .locals 22
    .param p1, "in"    # [D
    .param p2, "out"    # [D

    .prologue
    .line 1170
    const/4 v12, 0x0

    aget-wide v6, p1, v12

    .line 1171
    .local v6, "x":D
    const/4 v12, 0x1

    aget-wide v8, p1, v12

    .line 1172
    .local v8, "y":D
    const/4 v12, 0x2

    aget-wide v10, p1, v12

    .line 1174
    .local v10, "z":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v12, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v14, v10

    add-double v4, v12, v14

    .line 1175
    .local v4, "s":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v2, v12

    .line 1177
    .local v2, "m0":D
    const/4 v12, 0x0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v6, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v8

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v16, v16, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    add-double v16, v16, v18

    mul-double v14, v14, v16

    sub-double/2addr v14, v6

    aput-wide v14, p2, v12

    .line 1178
    const/4 v12, 0x1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v8, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v16, v16, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    add-double v16, v16, v18

    mul-double v14, v14, v16

    sub-double/2addr v14, v8

    aput-wide v14, p2, v12

    .line 1179
    const/4 v12, 0x2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v10, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v16, v16, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    add-double v16, v16, v18

    mul-double v14, v14, v16

    sub-double/2addr v14, v10

    aput-wide v14, p2, v12

    .line 1181
    return-void
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .prologue
    .line 1193
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 26
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 1113
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    .line 1114
    .local v12, "x":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v14

    .line 1115
    .local v14, "y":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v16

    .line 1117
    .local v16, "z":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v4, v14

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v4, v4, v16

    add-double v10, v2, v4

    .line 1119
    .local v10, "s":D
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    sub-double v18, v18, v20

    sub-double v8, v8, v18

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v4, v12

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    mul-double v8, v8, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    add-double v8, v8, v18

    mul-double/2addr v6, v8

    sub-double/2addr v6, v14

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v12

    sub-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    add-double v18, v18, v20

    mul-double v8, v8, v18

    sub-double v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v3
.end method

.method public applyTo([D[D)V
    .locals 22
    .param p1, "in"    # [D
    .param p2, "out"    # [D

    .prologue
    .line 1132
    const/4 v10, 0x0

    aget-wide v4, p1, v10

    .line 1133
    .local v4, "x":D
    const/4 v10, 0x1

    aget-wide v6, p1, v10

    .line 1134
    .local v6, "y":D
    const/4 v10, 0x2

    aget-wide v8, p1, v10

    .line 1136
    .local v8, "z":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v10, v4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v8

    add-double v2, v10, v12

    .line 1138
    .local v2, "s":D
    const/4 v10, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v12, v4

    aput-wide v12, p2, v10

    .line 1139
    const/4 v10, 0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v8

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v12, v6

    aput-wide v12, p2, v10

    .line 1140
    const/4 v10, 0x2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    sub-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v12, v8

    aput-wide v12, p2, v10

    .line 1142
    return-void
.end method

.method public compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    .prologue
    .line 1221
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    goto :goto_0
.end method

.method public composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    .prologue
    .line 1279
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getAngle()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 560
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide v2, -0x4046666666666666L    # -0.1

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 561
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    .line 565
    :goto_0
    return-wide v0

    .line 562
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 563
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    goto :goto_0

    .line 565
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    goto :goto_0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;)[D
    .locals 1
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 585
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[D

    move-result-object v0

    return-object v0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[D
    .locals 11
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const-wide v6, 0x3feffffffff24190L    # 0.9999999999

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 628
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v2, :cond_23

    .line 629
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_2

    .line 636
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 637
    .local v0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 638
    .local v1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 639
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 641
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    .line 1057
    :goto_0
    return-object v2

    .line 647
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_5

    .line 654
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 655
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 656
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_4

    .line 657
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 659
    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto :goto_0

    .line 665
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_5
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_8

    .line 672
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 673
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 674
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_6

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_7

    .line 675
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 677
    :cond_7
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 683
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_8
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_b

    .line 690
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 691
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 692
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_a

    .line 693
    :cond_9
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 695
    :cond_a
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 701
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_b
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_e

    .line 708
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 709
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 710
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_c

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_d

    .line 711
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 713
    :cond_d
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 719
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_e
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_11

    .line 726
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 727
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 728
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_f

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_10

    .line 729
    :cond_f
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 731
    :cond_10
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 737
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_11
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_14

    .line 744
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 745
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 746
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_12

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_13

    .line 747
    :cond_12
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 749
    :cond_13
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 755
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_14
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_17

    .line 762
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 763
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 764
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_15

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_16

    .line 765
    :cond_15
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 767
    :cond_16
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 773
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_17
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_1a

    .line 780
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 781
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 782
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_18

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_19

    .line 783
    :cond_18
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 785
    :cond_19
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 791
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1a
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_1d

    .line 798
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 799
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 800
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1b

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1c

    .line 801
    :cond_1b
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 803
    :cond_1c
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 809
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1d
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_20

    .line 816
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 817
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 818
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1e

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1f

    .line 819
    :cond_1e
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 821
    :cond_1f
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 834
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_20
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 835
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 836
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_22

    .line 837
    :cond_21
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 839
    :cond_22
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 847
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_23
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_26

    .line 854
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 855
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 856
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_24

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_25

    .line 857
    :cond_24
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 859
    :cond_25
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 865
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_26
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_29

    .line 872
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 873
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 874
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_27

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_28

    .line 875
    :cond_27
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 877
    :cond_28
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 883
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_29
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_2c

    .line 890
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 891
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 892
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2a

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_2b

    .line 893
    :cond_2a
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 895
    :cond_2b
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 901
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2c
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_2f

    .line 908
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 909
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 910
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2d

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_2e

    .line 911
    :cond_2d
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 913
    :cond_2e
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 919
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2f
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_32

    .line 926
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 927
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 928
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_30

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_31

    .line 929
    :cond_30
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 931
    :cond_31
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 937
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_32
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_35

    .line 944
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 945
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 946
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_33

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_34

    .line 947
    :cond_33
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 949
    :cond_34
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 955
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_35
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_38

    .line 962
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 963
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 964
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_36

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_37

    .line 965
    :cond_36
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 967
    :cond_37
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 973
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_38
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_3b

    .line 980
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 981
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 982
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_39

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_3a

    .line 983
    :cond_39
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 985
    :cond_3a
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 991
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_3b
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_3e

    .line 998
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 999
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 1000
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_3c

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_3d

    .line 1001
    :cond_3c
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 1003
    :cond_3d
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 1009
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_3e
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_41

    .line 1016
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 1017
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 1018
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_3f

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_40

    .line 1019
    :cond_3f
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 1021
    :cond_40
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 1027
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_41
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v2, :cond_44

    .line 1034
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 1035
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 1036
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_42

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_43

    .line 1037
    :cond_42
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 1039
    :cond_43
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0

    .line 1052
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_44
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 1053
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 1054
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_45

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_46

    .line 1055
    :cond_45
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 1057
    :cond_46
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    goto/16 :goto_0
.end method

.method public getAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 14
    .param p1, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    .prologue
    const-wide/16 v6, 0x0

    .line 541
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v2, v4

    add-double v12, v0, v2

    .line 542
    .local v12, "squaredSine":D
    cmpl-double v0, v12, v6

    if-nez v0, :cond_1

    .line 543
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    :goto_0
    move-object v1, v0

    .line 551
    :goto_1
    return-object v1

    .line 543
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    goto :goto_0

    .line 545
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v0, :cond_2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 546
    .local v10, "sgn":D
    :goto_2
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3

    .line 547
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double v8, v10, v0

    .line 548
    .local v8, "inverse":D
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v2, v8

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v4, v8

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    goto :goto_1

    .line 545
    .end local v8    # "inverse":D
    .end local v10    # "sgn":D
    :cond_2
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    goto :goto_2

    .line 550
    .restart local v10    # "sgn":D
    :cond_3
    neg-double v0, v10

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 551
    .restart local v8    # "inverse":D
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v2, v8

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v4, v8

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    goto :goto_1
.end method

.method public getMatrix()[[D
    .locals 30

    .prologue
    .line 1074
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v26, v0

    mul-double v4, v24, v26

    .line 1075
    .local v4, "q0q0":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v26, v0

    mul-double v6, v24, v26

    .line 1076
    .local v6, "q0q1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v26, v0

    mul-double v8, v24, v26

    .line 1077
    .local v8, "q0q2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v26, v0

    mul-double v10, v24, v26

    .line 1078
    .local v10, "q0q3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v26, v0

    mul-double v12, v24, v26

    .line 1079
    .local v12, "q1q1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v26, v0

    mul-double v14, v24, v26

    .line 1080
    .local v14, "q1q2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v26, v0

    mul-double v16, v24, v26

    .line 1081
    .local v16, "q1q3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v26, v0

    mul-double v18, v24, v26

    .line 1082
    .local v18, "q2q2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v26, v0

    mul-double v20, v24, v26

    .line 1083
    .local v20, "q2q3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v26, v0

    mul-double v22, v24, v26

    .line 1086
    .local v22, "q3q3":D
    const/4 v3, 0x3

    new-array v2, v3, [[D

    .line 1087
    .local v2, "m":[[D
    const/4 v3, 0x0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 1088
    const/4 v3, 0x1

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 1089
    const/4 v3, 0x2

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 1091
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v12

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1092
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v28, v14, v10

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1093
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v16, v8

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1095
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v14, v10

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1096
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v18

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1097
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v28, v20, v6

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1099
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v28, v16, v8

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1100
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v20, v6

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1101
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v22

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 1103
    return-object v2
.end method

.method public getQ0()D
    .locals 2

    .prologue
    .line 491
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    .prologue
    .line 498
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    .prologue
    .line 512
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-wide v0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 11

    .prologue
    .line 484
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v1
.end method
