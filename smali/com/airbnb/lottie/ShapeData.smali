.class Lcom/airbnb/lottie/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapeData$Factory;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/CubicCurveData;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 1
    .param p1, "initialPoint"    # Landroid/graphics/PointF;
    .param p2, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/CubicCurveData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/CubicCurveData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 20
    iput-boolean p2, p0, Lcom/airbnb/lottie/ShapeData;->closed:Z

    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/ShapeData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/PointF;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/airbnb/lottie/ShapeData$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-void
.end method

.method private setInitialPoint(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeData;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 32
    return-void
.end method


# virtual methods
.method getCurves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/CubicCurveData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    return-object v0
.end method

.method getInitialPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeData;->initialPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method interpolateBetween(Lcom/airbnb/lottie/ShapeData;Lcom/airbnb/lottie/ShapeData;F)V
    .locals 16
    .param p1, "shapeData1"    # Lcom/airbnb/lottie/ShapeData;
    .param p2, "shapeData2"    # Lcom/airbnb/lottie/ShapeData;
    .param p3, "percentage"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v12, :cond_0

    .line 49
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/airbnb/lottie/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 51
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/ShapeData;->isClosed()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/ShapeData;->isClosed()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/airbnb/lottie/ShapeData;->closed:Z

    .line 53
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    .line 54
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eq v12, v13, :cond_3

    .line 55
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Curves must have the same number of control points. This: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\tShape 1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\tShape 2: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 51
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 59
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_4

    .line 61
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    new-instance v13, Lcom/airbnb/lottie/CubicCurveData;

    invoke-direct {v13}, Lcom/airbnb/lottie/CubicCurveData;-><init>()V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 65
    .end local v7    # "i":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v8

    .line 66
    .local v8, "initialPoint1":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v9

    .line 68
    .local v9, "initialPoint2":Landroid/graphics/PointF;
    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v13, v9, Landroid/graphics/PointF;->x:F

    move/from16 v0, p3

    invoke-static {v12, v13, v0}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v12

    iget v13, v8, Landroid/graphics/PointF;->y:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    .line 69
    move/from16 v0, p3

    invoke-static {v13, v14, v0}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v13

    .line 68
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/airbnb/lottie/ShapeData;->setInitialPoint(FF)V

    .line 71
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .restart local v7    # "i":I
    :goto_2
    if-ltz v7, :cond_5

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/CubicCurveData;

    .line 73
    .local v5, "curve1":Lcom/airbnb/lottie/CubicCurveData;
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/CubicCurveData;

    .line 75
    .local v6, "curve2":Lcom/airbnb/lottie/CubicCurveData;
    invoke-virtual {v5}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v1

    .line 76
    .local v1, "cp11":Landroid/graphics/PointF;
    invoke-virtual {v5}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v3

    .line 77
    .local v3, "cp21":Landroid/graphics/PointF;
    invoke-virtual {v5}, Lcom/airbnb/lottie/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v10

    .line 79
    .local v10, "vertex1":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v2

    .line 80
    .local v2, "cp12":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v4

    .line 81
    .local v4, "cp22":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/airbnb/lottie/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v11

    .line 83
    .local v11, "vertex2":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/CubicCurveData;

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->x:F

    .line 84
    move/from16 v0, p3

    invoke-static {v13, v14, v0}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v13

    iget v14, v1, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    move/from16 v0, p3

    invoke-static {v14, v15, v0}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 83
    invoke-virtual {v12, v13, v14}, Lcom/airbnb/lottie/CubicCurveData;->setControlPoint1(FF)V

    .line 86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/CubicCurveData;

    iget v13, v3, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->x:F

    .line 87
    move/from16 v0, p3

    invoke-static {v13, v14, v0}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v13

    iget v14, v3, Landroid/graphics/PointF;->y:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    move/from16 v0, p3

    invoke-static {v14, v15, v0}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 86
    invoke-virtual {v12, v13, v14}, Lcom/airbnb/lottie/CubicCurveData;->setControlPoint2(FF)V

    .line 89
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/CubicCurveData;

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v14, v11, Landroid/graphics/PointF;->x:F

    .line 90
    move/from16 v0, p3

    invoke-static {v13, v14, v0}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v13

    iget v14, v10, Landroid/graphics/PointF;->y:F

    iget v15, v11, Landroid/graphics/PointF;->y:F

    move/from16 v0, p3

    invoke-static {v14, v15, v0}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 89
    invoke-virtual {v12, v13, v14}, Lcom/airbnb/lottie/CubicCurveData;->setVertex(FF)V

    .line 71
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 93
    .end local v1    # "cp11":Landroid/graphics/PointF;
    .end local v2    # "cp12":Landroid/graphics/PointF;
    .end local v3    # "cp21":Landroid/graphics/PointF;
    .end local v4    # "cp22":Landroid/graphics/PointF;
    .end local v5    # "curve1":Lcom/airbnb/lottie/CubicCurveData;
    .end local v6    # "curve2":Lcom/airbnb/lottie/CubicCurveData;
    .end local v10    # "vertex1":Landroid/graphics/PointF;
    .end local v11    # "vertex2":Landroid/graphics/PointF;
    :cond_5
    return-void
.end method

.method isClosed()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/airbnb/lottie/ShapeData;->closed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/airbnb/lottie/ShapeData;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
