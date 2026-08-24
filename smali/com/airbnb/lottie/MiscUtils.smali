.class Lcom/airbnb/lottie/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .param p0, "p1"    # Landroid/graphics/PointF;
    .param p1, "p2"    # Landroid/graphics/PointF;

    .prologue
    .line 9
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static clamp(FFF)F
    .locals 1
    .param p0, "number"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 77
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static floorDiv(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 68
    div-int v0, p0, p1

    .line 70
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    .line 71
    add-int/lit8 v0, v0, -0x1

    .line 73
    :cond_0
    return v0
.end method

.method static floorMod(FF)I
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 54
    float-to-int v0, p0

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/MiscUtils;->floorMod(II)I

    move-result v0

    return v0
.end method

.method static floorMod(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/airbnb/lottie/MiscUtils;->floorDiv(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method static getPathFromData(Lcom/airbnb/lottie/ShapeData;Landroid/graphics/Path;)V
    .locals 14
    .param p0, "shapeData"    # Lcom/airbnb/lottie/ShapeData;
    .param p1, "outPath"    # Landroid/graphics/Path;

    .prologue
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 14
    invoke-virtual {p0}, Lcom/airbnb/lottie/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v12

    .line 15
    .local v12, "initialPoint":Landroid/graphics/PointF;
    iget v0, v12, Landroid/graphics/PointF;->x:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 16
    new-instance v9, Landroid/graphics/PointF;

    iget v0, v12, Landroid/graphics/PointF;->x:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 17
    .local v9, "currentPoint":Landroid/graphics/PointF;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/CubicCurveData;

    .line 19
    .local v10, "curveData":Lcom/airbnb/lottie/CubicCurveData;
    invoke-virtual {v10}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v7

    .line 20
    .local v7, "cp1":Landroid/graphics/PointF;
    invoke-virtual {v10}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v8

    .line 21
    .local v8, "cp2":Landroid/graphics/PointF;
    invoke-virtual {v10}, Lcom/airbnb/lottie/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v13

    .line 23
    .local v13, "vertex":Landroid/graphics/PointF;
    invoke-virtual {v7, v9}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8, v13}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget v0, v13, Landroid/graphics/PointF;->x:F

    iget v1, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    :goto_1
    iget v0, v13, Landroid/graphics/PointF;->x:F

    iget v1, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 17
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v6, v13, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    .line 36
    .end local v7    # "cp1":Landroid/graphics/PointF;
    .end local v8    # "cp2":Landroid/graphics/PointF;
    .end local v10    # "curveData":Lcom/airbnb/lottie/CubicCurveData;
    .end local v13    # "vertex":Landroid/graphics/PointF;
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/ShapeData;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 39
    :cond_2
    return-void
.end method

.method static lerp(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "percentage"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 46
    sub-double v0, p2, p0

    mul-double/2addr v0, p4

    add-double/2addr v0, p0

    return-wide v0
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "percentage"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 42
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static lerp(IIF)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "percentage"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 50
    int-to-float v0, p0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
