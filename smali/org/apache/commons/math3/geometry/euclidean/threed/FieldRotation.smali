.class public Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
.super Ljava/lang/Object;
.source "FieldRotation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13329b0L


# instance fields
.field private final q0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final q1:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final q2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final q3:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V
    .locals 3
    .param p5, "needsNormalization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "q0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "q1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "q2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p5, :cond_0

    .line 79
    invoke-interface {p1, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p2, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p3, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p4, p4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 81
    .local v0, "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 82
    invoke-interface {v0, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 83
    invoke-interface {v0, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 84
    invoke-interface {v0, p4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 92
    .end local v0    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 87
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 88
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 89
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "axis":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p2, "angle":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V
    .locals 8
    .param p3, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "axis":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p2, "angle":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 150
    .local v2, "norm":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    .line 151
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_AXIS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 154
    :cond_0
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p3, v3, :cond_1

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    :goto_0
    invoke-interface {p2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 155
    .local v1, "halfAngle":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->sin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 157
    .local v0, "coeff":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->cos()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 158
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 162
    return-void

    .line 154
    .end local v0    # "coeff":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v1    # "halfAngle":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p2, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 298
    .local v2, "normProduct":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_0

    .line 299
    new-instance v5, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 302
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 304
    .local v1, "dot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide v8, -0x4010000000000012L    # -0.999999999999998

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    mul-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    .line 307
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v4

    .line 308
    .local v4, "w":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 309
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 311
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 323
    .end local v4    # "w":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 316
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 317
    .local v0, "coeff":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-static {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v3

    .line 318
    .local v3, "q":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 319
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 320
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p2, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p4, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 253
    .local v2, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-static {v2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p2

    .line 254
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p1

    .line 258
    invoke-static {p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v3

    .line 259
    .local v3, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-static {v3, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p4

    .line 260
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p3

    .line 263
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 264
    .local v0, "array":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v4, 0x0

    aget-object v5, v0, v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 265
    const/4 v4, 0x0

    aget-object v5, v0, v4

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 266
    const/4 v4, 0x0

    aget-object v5, v0, v4

    const/4 v6, 0x2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 267
    const/4 v4, 0x1

    aget-object v5, v0, v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 268
    const/4 v4, 0x1

    aget-object v5, v0, v4

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 269
    const/4 v4, 0x1

    aget-object v5, v0, v4

    const/4 v6, 0x2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 270
    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 271
    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 272
    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v5, v6

    .line 274
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->mat2quat([[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 275
    .local v1, "quat":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v4, 0x0

    aget-object v4, v1, v4

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 276
    const/4 v4, 0x1

    aget-object v4, v1, v4

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    const/4 v4, 0x2

    aget-object v4, v1, v4

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 278
    const/4 v4, 0x3

    aget-object v4, v1, v4

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 280
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 6
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;",
            "TT;TT;TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p2, "alpha1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "alpha2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "alpha3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 7
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            "TT;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p3, "alpha1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "alpha2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "alpha3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    invoke-interface {p3}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 377
    .local v1, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v5, p3, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 378
    .local v2, "r1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v3, v5, p4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 379
    .local v3, "r2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v4, v5, p5, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 380
    .local v4, "r3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    invoke-virtual {v3, v4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v5

    invoke-virtual {v2, v5, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    .line 381
    .local v0, "composed":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 382
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 383
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 384
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 385
    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/RealFieldElement;D)V
    .locals 12
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "m":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    array-length v6, p1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    aget-object v6, p1, v6

    array-length v6, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v6, p1, v6

    array-length v6, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    aget-object v6, p1, v6

    array-length v6, v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 200
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROTATION_MATRIX_DIMENSIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-object v10, p1, v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 206
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->orthogonalizeMatrix([[Lorg/apache/commons/math3/RealFieldElement;D)[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 209
    .local v4, "ort":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-object v7, v4, v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 210
    .local v0, "d0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-object v7, v4, v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 211
    .local v1, "d1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v7, v4, v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 212
    .local v2, "d2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 214
    .local v3, "det":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 215
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 220
    :cond_2
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->mat2quat([[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 221
    .local v5, "quat":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v6, 0x0

    aget-object v6, v5, v6

    iput-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 222
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 223
    const/4 v6, 0x2

    aget-object v6, v5, v6

    iput-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 224
    const/4 v6, 0x3

    aget-object v6, v5, v6

    iput-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 226
    return-void
.end method

.method public static applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 10
    .param p0, "rOuter"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1533
    .local p1, "rInner":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method public static applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 14
    .param p0, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 1260
    .local v3, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 1261
    .local v4, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 1263
    .local v5, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v8

    invoke-interface {v5, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 1264
    .local v2, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    neg-double v0, v6

    .line 1266
    .local v0, "m0":D
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v3, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v8

    invoke-interface {v5, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v8

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v8

    invoke-interface {v3, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v12

    invoke-interface {v5, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v8

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v12

    invoke-interface {v4, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v12

    invoke-interface {v3, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v12

    invoke-interface {v2, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v10, v6, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v10
.end method

.method public static applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 10
    .param p0, "r1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1394
    .local p1, "rInner":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method public static applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 13
    .param p0, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const/4 v12, 0x2

    .line 1162
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 1163
    .local v1, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 1164
    .local v2, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 1166
    .local v3, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1168
    .local v0, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v10

    invoke-interface {v3, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v10

    invoke-interface {v2, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v10

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v10

    invoke-interface {v6, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v10

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v8, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v8
.end method

.method private buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "a0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 1021
    .local v0, "array":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1022
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1023
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1024
    return-object v0
.end method

.method private composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1320
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method private composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 10
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1375
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method private composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1453
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method private composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 10
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1512
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1660
    .local p0, "r1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->getAngle()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method private mat2quat([[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "ort":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 393
    aget-object v3, p1, v8

    aget-object v3, v3, v8

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/RealFieldElement;

    .line 406
    .local v1, "quat":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aget-object v3, p1, v8

    aget-object v3, v3, v8

    aget-object v4, p1, v9

    aget-object v4, v4, v9

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, p1, v10

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 407
    .local v2, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 409
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v8

    .line 410
    aget-object v3, v1, v8

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 411
    .local v0, "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, p1, v9

    aget-object v3, v3, v10

    aget-object v4, p1, v10

    aget-object v4, v4, v9

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v9

    .line 412
    aget-object v3, p1, v10

    aget-object v3, v3, v8

    aget-object v4, p1, v8

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v10

    .line 413
    aget-object v3, p1, v8

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v11

    .line 444
    :goto_0
    return-object v1

    .line 415
    .end local v0    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    aget-object v3, p1, v8

    aget-object v3, v3, v8

    aget-object v4, p1, v9

    aget-object v4, v4, v9

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, p1, v10

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 416
    .restart local v2    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 418
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v9

    .line 419
    aget-object v3, v1, v9

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 420
    .restart local v0    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, p1, v9

    aget-object v3, v3, v10

    aget-object v4, p1, v10

    aget-object v4, v4, v9

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v8

    .line 421
    aget-object v3, p1, v8

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v10

    .line 422
    aget-object v3, p1, v8

    aget-object v3, v3, v10

    aget-object v4, p1, v10

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v11

    goto/16 :goto_0

    .line 424
    .end local v0    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    aget-object v3, p1, v9

    aget-object v3, v3, v9

    aget-object v4, p1, v8

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, p1, v10

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 425
    .restart local v2    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 427
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v10

    .line 428
    aget-object v3, v1, v10

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 429
    .restart local v0    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, p1, v10

    aget-object v3, v3, v8

    aget-object v4, p1, v8

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v8

    .line 430
    aget-object v3, p1, v8

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v9

    .line 431
    aget-object v3, p1, v10

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v11

    goto/16 :goto_0

    .line 434
    .end local v0    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_2
    aget-object v3, p1, v10

    aget-object v3, v3, v10

    aget-object v4, p1, v8

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, p1, v9

    aget-object v4, v4, v9

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 435
    .restart local v2    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v11

    .line 436
    aget-object v3, v1, v11

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 437
    .restart local v0    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, p1, v8

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v8

    .line 438
    aget-object v3, p1, v8

    aget-object v3, v3, v10

    aget-object v4, p1, v10

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v9

    .line 439
    aget-object v3, p1, v10

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v10

    goto/16 :goto_0
.end method

.method private orthogonalizeMatrix([[Lorg/apache/commons/math3/RealFieldElement;D)[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 52
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;D)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .prologue
    .line 1553
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "m":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x0

    aget-object v37, v46, v47

    .line 1554
    .local v37, "x00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x1

    aget-object v38, v46, v47

    .line 1555
    .local v38, "x01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x2

    aget-object v39, v46, v47

    .line 1556
    .local v39, "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x1

    aget-object v46, p1, v46

    const/16 v47, 0x0

    aget-object v40, v46, v47

    .line 1557
    .local v40, "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x1

    aget-object v46, p1, v46

    const/16 v47, 0x1

    aget-object v41, v46, v47

    .line 1558
    .local v41, "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x1

    aget-object v46, p1, v46

    const/16 v47, 0x2

    aget-object v42, v46, v47

    .line 1559
    .local v42, "x12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x2

    aget-object v46, p1, v46

    const/16 v47, 0x0

    aget-object v43, v46, v47

    .line 1560
    .local v43, "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x2

    aget-object v46, p1, v46

    const/16 v47, 0x1

    aget-object v44, v46, v47

    .line 1561
    .local v44, "x21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x2

    aget-object v46, p1, v46

    const/16 v47, 0x2

    aget-object v45, v46, v47

    .line 1562
    .local v45, "x22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/16 v22, 0x0

    .line 1565
    .local v22, "fn":D
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x0

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v46

    const/16 v47, 0x3

    const/16 v48, 0x3

    invoke-static/range {v46 .. v48}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 1568
    .local v36, "o":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/16 v26, 0x0

    .line 1569
    .local v26, "i":I
    :goto_0
    add-int/lit8 v26, v26, 0x1

    const/16 v46, 0xb

    move/from16 v0, v26

    move/from16 v1, v46

    if-ge v0, v1, :cond_1

    .line 1572
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x0

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/commons/math3/RealFieldElement;

    .line 1573
    .local v27, "mx00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x1

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/commons/math3/RealFieldElement;

    .line 1574
    .local v30, "mx10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x2

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x2

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x2

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/commons/math3/RealFieldElement;

    .line 1575
    .local v33, "mx20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x0

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/commons/math3/RealFieldElement;

    .line 1576
    .local v28, "mx01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x1

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/commons/math3/RealFieldElement;

    .line 1577
    .local v31, "mx11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x2

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x2

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x2

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/apache/commons/math3/RealFieldElement;

    .line 1578
    .local v34, "mx21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x0

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/math3/RealFieldElement;

    .line 1579
    .local v29, "mx02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x1

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/apache/commons/math3/RealFieldElement;

    .line 1580
    .local v32, "mx12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v46, p1, v46

    const/16 v47, 0x2

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x1

    aget-object v47, p1, v47

    const/16 v48, 0x2

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v47, 0x2

    aget-object v47, p1, v47

    const/16 v48, 0x2

    aget-object v47, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/apache/commons/math3/RealFieldElement;

    .line 1583
    .local v35, "mx22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v46, 0x0

    aget-object v47, v36, v46

    const/16 v48, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x0

    aget-object v49, p1, v49

    const/16 v50, 0x0

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1584
    const/16 v46, 0x0

    aget-object v47, v36, v46

    const/16 v48, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x0

    aget-object v49, p1, v49

    const/16 v50, 0x1

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1585
    const/16 v46, 0x0

    aget-object v47, v36, v46

    const/16 v48, 0x2

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x0

    aget-object v49, p1, v49

    const/16 v50, 0x2

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1586
    const/16 v46, 0x1

    aget-object v47, v36, v46

    const/16 v48, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x1

    aget-object v49, p1, v49

    const/16 v50, 0x0

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1587
    const/16 v46, 0x1

    aget-object v47, v36, v46

    const/16 v48, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x1

    aget-object v49, p1, v49

    const/16 v50, 0x1

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1588
    const/16 v46, 0x1

    aget-object v47, v36, v46

    const/16 v48, 0x2

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x1

    aget-object v49, p1, v49

    const/16 v50, 0x2

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1589
    const/16 v46, 0x2

    aget-object v47, v36, v46

    const/16 v48, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x2

    aget-object v49, p1, v49

    const/16 v50, 0x0

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1590
    const/16 v46, 0x2

    aget-object v47, v36, v46

    const/16 v48, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x2

    aget-object v49, p1, v49

    const/16 v50, 0x1

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1591
    const/16 v46, 0x2

    aget-object v47, v36, v46

    const/16 v48, 0x2

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v49, 0x2

    aget-object v49, p1, v49

    const/16 v50, 0x2

    aget-object v49, v49, v50

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v46

    move-wide/from16 v1, v50

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v46

    invoke-interface/range {v45 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v46, v47, v48

    .line 1594
    const/16 v46, 0x0

    aget-object v46, v36, v46

    const/16 v47, 0x0

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x0

    aget-object v48, p1, v48

    const/16 v49, 0x0

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v4, v46, v48

    .line 1595
    .local v4, "corr00":D
    const/16 v46, 0x0

    aget-object v46, v36, v46

    const/16 v47, 0x1

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x0

    aget-object v48, p1, v48

    const/16 v49, 0x1

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v6, v46, v48

    .line 1596
    .local v6, "corr01":D
    const/16 v46, 0x0

    aget-object v46, v36, v46

    const/16 v47, 0x2

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x0

    aget-object v48, p1, v48

    const/16 v49, 0x2

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v8, v46, v48

    .line 1597
    .local v8, "corr02":D
    const/16 v46, 0x1

    aget-object v46, v36, v46

    const/16 v47, 0x0

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x1

    aget-object v48, p1, v48

    const/16 v49, 0x0

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v10, v46, v48

    .line 1598
    .local v10, "corr10":D
    const/16 v46, 0x1

    aget-object v46, v36, v46

    const/16 v47, 0x1

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x1

    aget-object v48, p1, v48

    const/16 v49, 0x1

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v12, v46, v48

    .line 1599
    .local v12, "corr11":D
    const/16 v46, 0x1

    aget-object v46, v36, v46

    const/16 v47, 0x2

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x1

    aget-object v48, p1, v48

    const/16 v49, 0x2

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v14, v46, v48

    .line 1600
    .local v14, "corr12":D
    const/16 v46, 0x2

    aget-object v46, v36, v46

    const/16 v47, 0x0

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x2

    aget-object v48, p1, v48

    const/16 v49, 0x0

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v16, v46, v48

    .line 1601
    .local v16, "corr20":D
    const/16 v46, 0x2

    aget-object v46, v36, v46

    const/16 v47, 0x1

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x2

    aget-object v48, p1, v48

    const/16 v49, 0x1

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v18, v46, v48

    .line 1602
    .local v18, "corr21":D
    const/16 v46, 0x2

    aget-object v46, v36, v46

    const/16 v47, 0x2

    aget-object v46, v46, v47

    invoke-interface/range {v46 .. v46}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v46

    const/16 v48, 0x2

    aget-object v48, p1, v48

    const/16 v49, 0x2

    aget-object v48, v48, v49

    invoke-interface/range {v48 .. v48}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v48

    sub-double v20, v46, v48

    .line 1605
    .local v20, "corr22":D
    mul-double v46, v4, v4

    mul-double v48, v6, v6

    add-double v46, v46, v48

    mul-double v48, v8, v8

    add-double v46, v46, v48

    mul-double v48, v10, v10

    add-double v46, v46, v48

    mul-double v48, v12, v12

    add-double v46, v46, v48

    mul-double v48, v14, v14

    add-double v46, v46, v48

    mul-double v48, v16, v16

    add-double v46, v46, v48

    mul-double v48, v18, v18

    add-double v46, v46, v48

    mul-double v48, v20, v20

    add-double v24, v46, v48

    .line 1610
    .local v24, "fn1":D
    sub-double v46, v24, v22

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    cmpg-double v46, v46, p2

    if-gtz v46, :cond_0

    .line 1611
    return-object v36

    .line 1615
    :cond_0
    const/16 v46, 0x0

    aget-object v46, v36, v46

    const/16 v47, 0x0

    aget-object v37, v46, v47

    .line 1616
    const/16 v46, 0x0

    aget-object v46, v36, v46

    const/16 v47, 0x1

    aget-object v38, v46, v47

    .line 1617
    const/16 v46, 0x0

    aget-object v46, v36, v46

    const/16 v47, 0x2

    aget-object v39, v46, v47

    .line 1618
    const/16 v46, 0x1

    aget-object v46, v36, v46

    const/16 v47, 0x0

    aget-object v40, v46, v47

    .line 1619
    const/16 v46, 0x1

    aget-object v46, v36, v46

    const/16 v47, 0x1

    aget-object v41, v46, v47

    .line 1620
    const/16 v46, 0x1

    aget-object v46, v36, v46

    const/16 v47, 0x2

    aget-object v42, v46, v47

    .line 1621
    const/16 v46, 0x2

    aget-object v46, v36, v46

    const/16 v47, 0x0

    aget-object v43, v46, v47

    .line 1622
    const/16 v46, 0x2

    aget-object v46, v36, v46

    const/16 v47, 0x1

    aget-object v44, v46, v47

    .line 1623
    const/16 v46, 0x2

    aget-object v46, v36, v46

    const/16 v47, 0x2

    aget-object v45, v46, v47

    .line 1624
    move-wide/from16 v22, v24

    .line 1626
    goto/16 :goto_0

    .line 1629
    .end local v4    # "corr00":D
    .end local v6    # "corr01":D
    .end local v8    # "corr02":D
    .end local v10    # "corr10":D
    .end local v12    # "corr11":D
    .end local v14    # "corr12":D
    .end local v16    # "corr20":D
    .end local v18    # "corr21":D
    .end local v20    # "corr22":D
    .end local v24    # "fn1":D
    .end local v27    # "mx00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v28    # "mx01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v29    # "mx02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v30    # "mx10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v31    # "mx11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v32    # "mx12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v33    # "mx20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v34    # "mx21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v35    # "mx22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    new-instance v46, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v47, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_ORTHOGONOLIZE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    add-int/lit8 v50, v26, -0x1

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    aput-object v50, v48, v49

    invoke-direct/range {v46 .. v48}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v46
.end method

.method private vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1034
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1035
    .local v0, "zero":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p5, p6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v4
.end method


# virtual methods
.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1412
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    return-object v0
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1471
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    return-object v0
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const/4 v11, 0x2

    .line 1180
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 1181
    .local v2, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 1182
    .local v3, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 1184
    .local v4, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 1185
    .local v1, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1187
    .local v0, "m0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v9, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v9
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 14
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1199
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    .line 1200
    .local v2, "x":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    .line 1201
    .local v4, "y":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    .line 1203
    .local v6, "z":D
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 1204
    .local v1, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1206
    .local v0, "m0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v12, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v12, v8, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v12
.end method

.method public applyInverseTo([D[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 12
    .param p1, "in"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[TT;)V"
        }
    .end annotation

    .prologue
    .line 1238
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p2, "out":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v8, 0x0

    aget-wide v2, p1, v8

    .line 1239
    .local v2, "x":D
    const/4 v8, 0x1

    aget-wide v4, p1, v8

    .line 1240
    .local v4, "y":D
    const/4 v8, 0x2

    aget-wide v6, p1, v8

    .line 1242
    .local v6, "z":D
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 1243
    .local v1, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1245
    .local v0, "m0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v10, 0x0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, p2, v10

    .line 1246
    const/4 v10, 0x1

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, p2, v10

    .line 1247
    const/4 v10, 0x2

    invoke-interface {v0, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, p2, v10

    .line 1249
    return-void
.end method

.method public applyInverseTo([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "in":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "out":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 1219
    aget-object v2, p1, v9

    .line 1220
    .local v2, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, p1, v10

    .line 1221
    .local v3, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v4, p1, v8

    .line 1223
    .local v4, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 1224
    .local v1, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1226
    .local v0, "m0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, p2, v9

    .line 1227
    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, p2, v10

    .line 1228
    invoke-interface {v4, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, p2, v8

    .line 1230
    return-void
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1282
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1337
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const/4 v11, 0x2

    .line 1087
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 1088
    .local v1, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 1089
    .local v2, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 1091
    .local v3, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1093
    .local v0, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v8, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v8
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 14
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    .line 1106
    .local v2, "x":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    .line 1107
    .local v4, "y":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    .line 1109
    .local v6, "z":D
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1111
    .local v0, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v10, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v12, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v11, v1, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v11
.end method

.method public applyTo([D[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 12
    .param p1, "in"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[TT;)V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p2, "out":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    aget-wide v2, p1, v1

    .line 1143
    .local v2, "x":D
    const/4 v1, 0x1

    aget-wide v4, p1, v1

    .line 1144
    .local v4, "y":D
    const/4 v1, 0x2

    aget-wide v6, p1, v1

    .line 1146
    .local v6, "z":D
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1148
    .local v0, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v9, 0x0

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, p2, v9

    .line 1149
    const/4 v9, 0x1

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, p2, v9

    .line 1150
    const/4 v9, 0x2

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, p2, v9

    .line 1152
    return-void
.end method

.method public applyTo([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "in":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "out":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 1124
    aget-object v1, p1, v9

    .line 1125
    .local v1, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v2, p1, v10

    .line 1126
    .local v2, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, p1, v8

    .line 1128
    .local v3, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1130
    .local v0, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, p2, v9

    .line 1131
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, p2, v10

    .line 1132
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, p2, v8

    .line 1134
    return-void
.end method

.method public compose(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1310
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    goto :goto_0
.end method

.method public compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1365
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    goto :goto_0
.end method

.method public composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1442
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->revert()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    goto :goto_0
.end method

.method public composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1501
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->revert()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getAngle()Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    const/4 v4, 0x2

    .line 531
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide v2, -0x4046666666666666L    # -0.1

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 536
    :goto_0
    return-object v0

    .line 533
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 534
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0

    .line 536
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;",
            ")[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 9
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v1, :cond_23

    .line 622
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_2

    .line 629
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 630
    .local v0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 631
    .local v8, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 632
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 634
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 1004
    :goto_0
    return-object v1

    .line 638
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_2
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_5

    .line 645
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 646
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 647
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    .line 648
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 650
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto :goto_0

    .line 654
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_5
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_8

    .line 661
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 662
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 663
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_6

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_7

    .line 664
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 666
    :cond_7
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 670
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_8
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_b

    .line 677
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 678
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 679
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_9

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_a

    .line 680
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 682
    :cond_a
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 686
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_b
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_e

    .line 693
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 694
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 695
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_c

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_d

    .line 696
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 698
    :cond_d
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 702
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_e
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_11

    .line 709
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 710
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 711
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_f

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_10

    .line 712
    :cond_f
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 714
    :cond_10
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 718
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_11
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_14

    .line 725
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 726
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 727
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_12

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_13

    .line 728
    :cond_12
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 730
    :cond_13
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 734
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_14
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_17

    .line 741
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 742
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 743
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_15

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_16

    .line 744
    :cond_15
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 746
    :cond_16
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 750
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_17
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_1a

    .line 757
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 758
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 759
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_18

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_19

    .line 760
    :cond_18
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 762
    :cond_19
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 766
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_1a
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_1d

    .line 773
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 774
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 775
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_1b

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1c

    .line 776
    :cond_1b
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 778
    :cond_1c
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 782
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_1d
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_20

    .line 789
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 790
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 791
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_1e

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1f

    .line 792
    :cond_1e
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 794
    :cond_1f
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 805
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_20
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 806
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 807
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_21

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_22

    .line 808
    :cond_21
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 810
    :cond_22
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 816
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_23
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_26

    .line 823
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 824
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 825
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_24

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_25

    .line 826
    :cond_24
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 828
    :cond_25
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 832
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_26
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_29

    .line 839
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 840
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 841
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_27

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_28

    .line 842
    :cond_27
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 844
    :cond_28
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 848
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_29
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_2c

    .line 855
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 856
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 857
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_2a

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2b

    .line 858
    :cond_2a
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 860
    :cond_2b
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 864
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_2c
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_2f

    .line 871
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 872
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 873
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_2d

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2e

    .line 874
    :cond_2d
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 876
    :cond_2e
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 880
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_2f
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_32

    .line 887
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 888
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 889
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_30

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_31

    .line 890
    :cond_30
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 892
    :cond_31
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 896
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_32
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_35

    .line 903
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 904
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 905
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_33

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_34

    .line 906
    :cond_33
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 908
    :cond_34
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 912
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_35
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_38

    .line 919
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 920
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 921
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_36

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_37

    .line 922
    :cond_36
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 924
    :cond_37
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 928
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_38
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_3b

    .line 935
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 936
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 937
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_39

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3a

    .line 938
    :cond_39
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 940
    :cond_3a
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 944
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_3b
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_3e

    .line 951
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 952
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 953
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_3c

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3d

    .line 954
    :cond_3c
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 956
    :cond_3d
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 960
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_3e
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_41

    .line 967
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 968
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 969
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_3f

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_40

    .line 970
    :cond_3f
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 972
    :cond_40
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 976
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_41
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v1, :cond_44

    .line 983
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 984
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 985
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_42

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_43

    .line 986
    :cond_42
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 988
    :cond_43
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0

    .line 999
    .end local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_44
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 1000
    .restart local v0    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 1001
    .restart local v8    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x40100000000dbe70L    # -0.9999999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_45

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v1, v2, v4

    if-lez v1, :cond_46

    .line 1002
    :cond_45
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v1

    .line 1004
    :cond_46
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    return-object v0
.end method

.method public getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 10
    .param p1, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    const-wide/16 v8, 0x0

    .line 509
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 510
    .local v4, "squaredSine":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-nez v5, :cond_1

    .line 511
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    .line 512
    .local v0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    sget-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v5, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    move-object v7, v5

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v8, v7, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    move-object v5, v8

    .line 522
    .end local v0    # "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    :goto_1
    return-object v5

    .line 512
    .restart local v0    # "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    move-object v7, v5

    goto :goto_0

    .line 516
    .end local v0    # "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    :cond_1
    sget-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v5, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 517
    .local v2, "sgn":D
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpg-double v5, v6, v8

    if-gez v5, :cond_3

    .line 518
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 519
    .local v1, "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v8, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    move-object v5, v8

    goto :goto_1

    .line 516
    .end local v1    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v2    # "sgn":D
    :cond_2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_2

    .line 521
    .restart local v2    # "sgn":D
    :cond_3
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 522
    .restart local v1    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v8, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    move-object v5, v8

    goto/16 :goto_1
.end method

.method public getMatrix()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 1045
    .local v3, "q0q0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 1046
    .local v4, "q0q1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 1047
    .local v5, "q0q2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 1048
    .local v6, "q0q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 1049
    .local v7, "q1q1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 1050
    .local v8, "q1q2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 1051
    .local v9, "q1q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 1052
    .local v10, "q2q2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 1053
    .local v11, "q2q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 1056
    .local v12, "q3q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 1058
    .local v2, "m":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v13, 0x0

    aget-object v14, v2, v13

    const/4 v15, 0x0

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-interface {v13, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1059
    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/4 v15, 0x0

    invoke-interface {v8, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1060
    const/4 v13, 0x2

    aget-object v14, v2, v13

    const/4 v15, 0x0

    invoke-interface {v9, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1062
    const/4 v13, 0x0

    aget-object v14, v2, v13

    const/4 v15, 0x1

    invoke-interface {v8, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1063
    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/4 v15, 0x1

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-interface {v13, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1064
    const/4 v13, 0x2

    aget-object v14, v2, v13

    const/4 v15, 0x1

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1066
    const/4 v13, 0x0

    aget-object v14, v2, v13

    const/4 v15, 0x2

    invoke-interface {v9, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1067
    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/4 v15, 0x2

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1068
    const/4 v13, 0x2

    aget-object v14, v2, v13

    const/4 v15, 0x2

    invoke-interface {v3, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-interface {v13, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v14, v15

    .line 1070
    return-object v2
.end method

.method public getQ0()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getQ1()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getQ2()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getQ3()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method public toRotation()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 11

    .prologue
    .line 1078
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v1
.end method
