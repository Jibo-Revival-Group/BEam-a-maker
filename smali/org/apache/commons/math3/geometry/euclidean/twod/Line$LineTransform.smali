.class Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# instance fields
.field private c11:D

.field private c1X:D

.field private c1Y:D

.field private cX1:D

.field private cXX:D

.field private cXY:D

.field private cY1:D

.field private cYX:D

.field private cYY:D


# direct methods
.method constructor <init>(DDDDDD)V
    .locals 11
    .param p1, "cXX"    # D
    .param p3, "cYX"    # D
    .param p5, "cXY"    # D
    .param p7, "cYY"    # D
    .param p9, "cX1"    # D
    .param p11, "cY1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    .line 536
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    .line 537
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    .line 538
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    .line 539
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cX1:D

    .line 540
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cY1:D

    .line 542
    move-wide/from16 v0, p7

    neg-double v6, v0

    move-wide/from16 v2, p5

    move-wide/from16 v4, p11

    move-wide/from16 v8, p9

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1Y:D

    .line 543
    neg-double v6, p3

    move-wide v2, p1

    move-wide/from16 v4, p11

    move-wide/from16 v8, p9

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1X:D

    .line 544
    neg-double v6, p3

    move-wide v2, p1

    move-wide/from16 v4, p7

    move-wide/from16 v8, p5

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c11:D

    .line 546
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c11:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 547
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_INVERTIBLE_TRANSFORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 550
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object/from16 v15, p1

    check-cast v15, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 564
    .local v15, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1X:D

    invoke-static {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1Y:D

    invoke-static {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c11:D

    invoke-static {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$200(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v20

    .line 565
    .local v20, "rOffset":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    invoke-static {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    invoke-static {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v18

    .line 566
    .local v18, "rCos":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    invoke-static {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    invoke-static {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v22

    .line 567
    .local v22, "rSin":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v4, v22, v22

    mul-double v6, v18, v18

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double v16, v2, v4

    .line 568
    .local v16, "inv":D
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    move-wide/from16 v0, v22

    neg-double v6, v0

    move-wide/from16 v0, v18

    neg-double v8, v0

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    mul-double v6, v16, v18

    mul-double v8, v16, v22

    mul-double v10, v16, v20

    invoke-static {v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v12

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDDLorg/apache/commons/math3/geometry/euclidean/twod/Line$1;)V

    return-object v3
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object/from16 v14, p1

    check-cast v14, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 555
    .local v14, "p2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    .line 556
    .local v4, "x":D
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    .line 557
    .local v8, "y":D
    new-instance v15, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cX1:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cY1:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    move-wide/from16 v0, v16

    invoke-direct {v15, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v15
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    .local p2, "original":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p3, "transformed":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .local v1, "op":Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
    move-object v2, p2

    .line 578
    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .local v2, "originalLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move-object v3, p3

    .line 579
    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 580
    .local v3, "transformedLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    .line 582
    .local v0, "newLoc":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result v5

    invoke-static {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v6

    invoke-direct {v4, v0, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v4

    return-object v4
.end method
