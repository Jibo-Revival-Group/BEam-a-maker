.class Lcom/airbnb/lottie/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/PolystarShape$Type;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/PolystarShape;)V
    .locals 3
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "polystarShape"    # Lcom/airbnb/lottie/PolystarShape;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    .line 35
    iput-object p1, p0, Lcom/airbnb/lottie/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getType()Lcom/airbnb/lottie/PolystarShape$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    .line 39
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getPoints()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 40
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getRotation()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 42
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 43
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    if-ne v0, v1, :cond_2

    .line 45
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 46
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    :cond_1
    return-void

    .line 48
    :cond_2
    iput-object v2, p0, Lcom/airbnb/lottie/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 49
    iput-object v2, p0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    goto :goto_0
.end method

.method private createPolygonPath()V
    .locals 31

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v23, v0

    .line 229
    .local v23, "points":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v20, 0x0

    .line 231
    .local v20, "currentAngle":D
    :goto_0
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v20, v20, v2

    .line 233
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 235
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, v23

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v9, v2

    .line 237
    .local v9, "anglePerPoint":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v30, v2, v3

    .line 238
    .local v30, "roundedness":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v29

    .line 243
    .local v29, "radius":F
    move/from16 v0, v29

    float-to-double v2, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v7, v2

    .line 244
    .local v7, "x":F
    move/from16 v0, v29

    float-to-double v2, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 245
    .local v8, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 246
    float-to-double v2, v9

    add-double v20, v20, v2

    .line 248
    move/from16 v0, v23

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    .line 249
    .local v24, "numPoints":D
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    int-to-double v2, v0

    cmpg-double v2, v2, v24

    if-gez v2, :cond_2

    .line 250
    move/from16 v27, v7

    .line 251
    .local v27, "previousX":F
    move/from16 v28, v8

    .line 252
    .local v28, "previousY":F
    move/from16 v0, v29

    float-to-double v2, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v7, v2

    .line 253
    move/from16 v0, v29

    float-to-double v2, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 255
    const/4 v2, 0x0

    cmpl-float v2, v30, v2

    if-eqz v2, :cond_1

    .line 256
    move/from16 v0, v28

    float-to-double v2, v0

    move/from16 v0, v27

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v12, v2

    .line 257
    .local v12, "cp1Theta":F
    float-to-double v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v10, v2

    .line 258
    .local v10, "cp1Dx":F
    float-to-double v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v11, v2

    .line 260
    .local v11, "cp1Dy":F
    float-to-double v2, v8

    float-to-double v4, v7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v17, v0

    .line 261
    .local v17, "cp2Theta":F
    move/from16 v0, v17

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v15, v2

    .line 262
    .local v15, "cp2Dx":F
    move/from16 v0, v17

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 264
    .local v16, "cp2Dy":F
    mul-float v2, v29, v30

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    mul-float v13, v2, v10

    .line 265
    .local v13, "cp1x":F
    mul-float v2, v29, v30

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    mul-float v14, v2, v11

    .line 266
    .local v14, "cp1y":F
    mul-float v2, v29, v30

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    mul-float v18, v2, v15

    .line 267
    .local v18, "cp2x":F
    mul-float v2, v29, v30

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    mul-float v19, v2, v16

    .line 268
    .local v19, "cp2y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v3, v27, v13

    sub-float v4, v28, v14

    add-float v5, v7, v18

    add-float v6, v8, v19

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 273
    .end local v10    # "cp1Dx":F
    .end local v11    # "cp1Dy":F
    .end local v12    # "cp1Theta":F
    .end local v13    # "cp1x":F
    .end local v14    # "cp1y":F
    .end local v15    # "cp2Dx":F
    .end local v16    # "cp2Dy":F
    .end local v17    # "cp2Theta":F
    .end local v18    # "cp2x":F
    .end local v19    # "cp2y":F
    :goto_2
    float-to-double v2, v9

    add-double v20, v20, v2

    .line 249
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 229
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "anglePerPoint":F
    .end local v20    # "currentAngle":D
    .end local v22    # "i":I
    .end local v24    # "numPoints":D
    .end local v27    # "previousX":F
    .end local v28    # "previousY":F
    .end local v29    # "radius":F
    .end local v30    # "roundedness":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v20, v0

    goto/16 :goto_0

    .line 270
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    .restart local v9    # "anglePerPoint":F
    .restart local v20    # "currentAngle":D
    .restart local v22    # "i":I
    .restart local v24    # "numPoints":D
    .restart local v27    # "previousX":F
    .restart local v28    # "previousY":F
    .restart local v29    # "radius":F
    .restart local v30    # "roundedness":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 276
    .end local v27    # "previousX":F
    .end local v28    # "previousY":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/PointF;

    .line 277
    .local v26, "position":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 279
    return-void
.end method

.method private createStarPath()V
    .locals 43

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v38

    .line 123
    .local v38, "points":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez v2, :cond_5

    const-wide/16 v24, 0x0

    .line 125
    .local v24, "currentAngle":D
    :goto_0
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v24, v24, v2

    .line 127
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    .line 129
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, v38

    float-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v9, v2

    .line 130
    .local v9, "anglePerPoint":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v27, v9, v2

    .line 131
    .local v27, "halfAnglePerPoint":F
    move/from16 v0, v38

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v36, v38, v2

    .line 132
    .local v36, "partialPointAmount":F
    const/4 v2, 0x0

    cmpl-float v2, v36, v2

    if-eqz v2, :cond_0

    .line 133
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v36

    mul-float v2, v2, v27

    float-to-double v2, v2

    add-double v24, v24, v2

    .line 136
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v34

    .line 138
    .local v34, "outerRadius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v29

    .line 140
    .local v29, "innerRadius":F
    const/16 v30, 0x0

    .line 141
    .local v30, "innerRoundedness":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v2, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v30, v2, v3

    .line 144
    :cond_1
    const/16 v35, 0x0

    .line 145
    .local v35, "outerRoundedness":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v35, v2, v3

    .line 153
    :cond_2
    const/16 v37, 0x0

    .line 154
    .local v37, "partialPointRadius":F
    const/4 v2, 0x0

    cmpl-float v2, v36, v2

    if-eqz v2, :cond_6

    .line 155
    sub-float v2, v34, v29

    mul-float v2, v2, v36

    add-float v37, v29, v2

    .line 156
    move/from16 v0, v37

    float-to-double v2, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v7, v2

    .line 157
    .local v7, "x":F
    move/from16 v0, v37

    float-to-double v2, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 158
    .local v8, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    mul-float v2, v9, v36

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double v24, v24, v2

    .line 168
    :goto_1
    const/16 v31, 0x0

    .line 169
    .local v31, "longSegment":Z
    move/from16 v0, v38

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v32, v2, v4

    .line 170
    .local v32, "numPoints":D
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    move/from16 v0, v28

    int-to-double v2, v0

    cmpg-double v2, v2, v32

    if-gez v2, :cond_10

    .line 171
    if-eqz v31, :cond_7

    move/from16 v42, v34

    .line 172
    .local v42, "radius":F
    :goto_3
    move/from16 v26, v27

    .line 173
    .local v26, "dTheta":F
    const/4 v2, 0x0

    cmpl-float v2, v37, v2

    if-eqz v2, :cond_3

    move/from16 v0, v28

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v4, v32, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 174
    mul-float v2, v9, v36

    const/high16 v3, 0x40000000    # 2.0f

    div-float v26, v2, v3

    .line 176
    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v37, v2

    if-eqz v2, :cond_4

    move/from16 v0, v28

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v32, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 177
    move/from16 v42, v37

    .line 179
    :cond_4
    move/from16 v40, v7

    .line 180
    .local v40, "previousX":F
    move/from16 v41, v8

    .line 181
    .local v41, "previousY":F
    move/from16 v0, v42

    float-to-double v2, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v7, v2

    .line 182
    move/from16 v0, v42

    float-to-double v2, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 184
    const/4 v2, 0x0

    cmpl-float v2, v30, v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    cmpl-float v2, v35, v2

    if-nez v2, :cond_8

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    :goto_4
    move/from16 v0, v26

    float-to-double v2, v0

    add-double v24, v24, v2

    .line 218
    if-nez v31, :cond_f

    const/16 v31, 0x1

    .line 170
    :goto_5
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 123
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "anglePerPoint":F
    .end local v24    # "currentAngle":D
    .end local v26    # "dTheta":F
    .end local v27    # "halfAnglePerPoint":F
    .end local v28    # "i":I
    .end local v29    # "innerRadius":F
    .end local v30    # "innerRoundedness":F
    .end local v31    # "longSegment":Z
    .end local v32    # "numPoints":D
    .end local v34    # "outerRadius":F
    .end local v35    # "outerRoundedness":F
    .end local v36    # "partialPointAmount":F
    .end local v37    # "partialPointRadius":F
    .end local v40    # "previousX":F
    .end local v41    # "previousY":F
    .end local v42    # "radius":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v24, v0

    goto/16 :goto_0

    .line 161
    .restart local v9    # "anglePerPoint":F
    .restart local v24    # "currentAngle":D
    .restart local v27    # "halfAnglePerPoint":F
    .restart local v29    # "innerRadius":F
    .restart local v30    # "innerRoundedness":F
    .restart local v34    # "outerRadius":F
    .restart local v35    # "outerRoundedness":F
    .restart local v36    # "partialPointAmount":F
    .restart local v37    # "partialPointRadius":F
    :cond_6
    move/from16 v0, v34

    float-to-double v2, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v7, v2

    .line 162
    .restart local v7    # "x":F
    move/from16 v0, v34

    float-to-double v2, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 163
    .restart local v8    # "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 164
    move/from16 v0, v27

    float-to-double v2, v0

    add-double v24, v24, v2

    goto/16 :goto_1

    .restart local v28    # "i":I
    .restart local v31    # "longSegment":Z
    .restart local v32    # "numPoints":D
    :cond_7
    move/from16 v42, v29

    .line 171
    goto/16 :goto_3

    .line 187
    .restart local v26    # "dTheta":F
    .restart local v40    # "previousX":F
    .restart local v41    # "previousY":F
    .restart local v42    # "radius":F
    :cond_8
    move/from16 v0, v41

    float-to-double v2, v0

    move/from16 v0, v40

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v14, v2

    .line 188
    .local v14, "cp1Theta":F
    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v10, v2

    .line 189
    .local v10, "cp1Dx":F
    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v11, v2

    .line 191
    .local v11, "cp1Dy":F
    float-to-double v2, v8

    float-to-double v4, v7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v21, v0

    .line 192
    .local v21, "cp2Theta":F
    move/from16 v0, v21

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    .line 193
    .local v17, "cp2Dx":F
    move/from16 v0, v21

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v18, v0

    .line 195
    .local v18, "cp2Dy":F
    if-eqz v31, :cond_a

    move/from16 v13, v30

    .line 196
    .local v13, "cp1Roundedness":F
    :goto_6
    if-eqz v31, :cond_b

    move/from16 v20, v35

    .line 197
    .local v20, "cp2Roundedness":F
    :goto_7
    if-eqz v31, :cond_c

    move/from16 v12, v29

    .line 198
    .local v12, "cp1Radius":F
    :goto_8
    if-eqz v31, :cond_d

    move/from16 v19, v34

    .line 200
    .local v19, "cp2Radius":F
    :goto_9
    mul-float v2, v12, v13

    const v3, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v2, v3

    mul-float v15, v2, v10

    .line 201
    .local v15, "cp1x":F
    mul-float v2, v12, v13

    const v3, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v2, v3

    mul-float v16, v2, v11

    .line 202
    .local v16, "cp1y":F
    mul-float v2, v19, v20

    const v3, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v2, v3

    mul-float v22, v2, v17

    .line 203
    .local v22, "cp2x":F
    mul-float v2, v19, v20

    const v3, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v2, v3

    mul-float v23, v2, v18

    .line 204
    .local v23, "cp2y":F
    const/4 v2, 0x0

    cmpl-float v2, v36, v2

    if-eqz v2, :cond_9

    .line 205
    if-nez v28, :cond_e

    .line 206
    mul-float v15, v15, v36

    .line 207
    mul-float v16, v16, v36

    .line 214
    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v3, v40, v15

    sub-float v4, v41, v16

    add-float v5, v7, v22

    add-float v6, v8, v23

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_4

    .end local v12    # "cp1Radius":F
    .end local v13    # "cp1Roundedness":F
    .end local v15    # "cp1x":F
    .end local v16    # "cp1y":F
    .end local v19    # "cp2Radius":F
    .end local v20    # "cp2Roundedness":F
    .end local v22    # "cp2x":F
    .end local v23    # "cp2y":F
    :cond_a
    move/from16 v13, v35

    .line 195
    goto :goto_6

    .restart local v13    # "cp1Roundedness":F
    :cond_b
    move/from16 v20, v30

    .line 196
    goto :goto_7

    .restart local v20    # "cp2Roundedness":F
    :cond_c
    move/from16 v12, v34

    .line 197
    goto :goto_8

    .restart local v12    # "cp1Radius":F
    :cond_d
    move/from16 v19, v29

    .line 198
    goto :goto_9

    .line 208
    .restart local v15    # "cp1x":F
    .restart local v16    # "cp1y":F
    .restart local v19    # "cp2Radius":F
    .restart local v22    # "cp2x":F
    .restart local v23    # "cp2y":F
    :cond_e
    move/from16 v0, v28

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v32, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_9

    .line 209
    mul-float v22, v22, v36

    .line 210
    mul-float v23, v23, v36

    goto :goto_a

    .line 218
    .end local v10    # "cp1Dx":F
    .end local v11    # "cp1Dy":F
    .end local v12    # "cp1Radius":F
    .end local v13    # "cp1Roundedness":F
    .end local v14    # "cp1Theta":F
    .end local v15    # "cp1x":F
    .end local v16    # "cp1y":F
    .end local v17    # "cp2Dx":F
    .end local v18    # "cp2Dy":F
    .end local v19    # "cp2Radius":F
    .end local v20    # "cp2Roundedness":F
    .end local v21    # "cp2Theta":F
    .end local v22    # "cp2x":F
    .end local v23    # "cp2y":F
    :cond_f
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 222
    .end local v26    # "dTheta":F
    .end local v40    # "previousX":F
    .end local v41    # "previousY":F
    .end local v42    # "radius":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/graphics/PointF;

    .line 223
    .local v39, "position":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    move-object/from16 v0, v39

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 225
    return-void
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/PolystarContent;->isPathValid:Z

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 80
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/airbnb/lottie/PolystarContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    .line 114
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 100
    sget-object v0, Lcom/airbnb/lottie/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$PolystarShape$Type:[I

    iget-object v1, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    invoke-virtual {v1}, Lcom/airbnb/lottie/PolystarShape$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/PolystarContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/PolystarContent;->isPathValid:Z

    .line 114
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/PolystarContent;->createStarPath()V

    goto :goto_1

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/airbnb/lottie/PolystarContent;->createPolygonPath()V

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/airbnb/lottie/PolystarContent;->invalidate()V

    .line 75
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 85
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v2, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/TrimPathContent;

    .line 86
    invoke-virtual {v2}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 87
    check-cast v0, Lcom/airbnb/lottie/TrimPathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 88
    iget-object v2, p0, Lcom/airbnb/lottie/PolystarContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method
