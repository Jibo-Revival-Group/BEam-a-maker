.class abstract Lcom/airbnb/lottie/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    }
.end annotation


# instance fields
.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
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

.field private final dashPatternValues:[F

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 3
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .param p3, "cap"    # Landroid/graphics/Paint$Cap;
    .param p4, "join"    # Landroid/graphics/Paint$Join;
    .param p5, "opacity"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p6, "width"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p8, "offset"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "Lcom/airbnb/lottie/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p7, "dashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 18
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 19
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 20
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 34
    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 36
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 38
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 40
    invoke-virtual {p5}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 41
    invoke-virtual {p6}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 43
    if-nez p8, :cond_0

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 48
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 49
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p8}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    goto :goto_0

    .line 55
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 56
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 57
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v1, :cond_3

    .line 61
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 65
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 68
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v1, :cond_5

    .line 71
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 73
    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    .line 240
    const-string v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const-string v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 267
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    .line 247
    .local v2, "scale":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 248
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, v0

    .line 253
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_2

    .line 254
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aput v6, v3, v0

    .line 262
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v4, v3, v0

    mul-float/2addr v4, v2

    aput v4, v3, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aput v5, v3, v0

    goto :goto_2

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez v3, :cond_4

    const/4 v1, 0x0

    .line 265
    .local v1, "offset":F
    :goto_3
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v4, v5, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 266
    const-string v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0

    .line 264
    .end local v1    # "offset":F
    :cond_4
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_3
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pathGroup"    # Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 148
    const-string v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v9

    if-nez v9, :cond_0

    .line 150
    const-string v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 212
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 154
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 155
    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v9}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v10, v9, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 154
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 157
    :cond_1
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 158
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    .line 159
    .local v8, "totalLength":F
    :goto_2
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 160
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    add-float/2addr v8, v9

    goto :goto_2

    .line 162
    :cond_2
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/TrimPathContent;->getOffset()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x43b40000    # 360.0f

    div-float v5, v9, v10

    .line 164
    .local v5, "offsetLength":F
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/TrimPathContent;->getStart()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    add-float v6, v9, v5

    .line 166
    .local v6, "startLength":F
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/TrimPathContent;->getEnd()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    add-float v1, v9, v5

    .line 168
    .local v1, "endLength":F
    const/4 v0, 0x0

    .line 169
    .local v0, "currentLength":F
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_3
    if-ltz v3, :cond_9

    .line 170
    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v9}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 171
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v9, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 172
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 173
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 174
    .local v4, "length":F
    cmpl-float v9, v1, v8

    if-lez v9, :cond_5

    sub-float v9, v1, v8

    add-float v10, v0, v4

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    sub-float v9, v1, v8

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    .line 179
    cmpl-float v9, v6, v8

    if-lez v9, :cond_4

    .line 180
    sub-float v9, v6, v8

    div-float v7, v9, v4

    .line 184
    .local v7, "startValue":F
    :goto_4
    sub-float v9, v1, v8

    div-float/2addr v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 185
    .local v2, "endValue":F
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v10, 0x0

    invoke-static {v9, v7, v2, v10}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 186
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 209
    .end local v2    # "endValue":F
    .end local v7    # "startValue":F
    :cond_3
    :goto_5
    add-float/2addr v0, v4

    .line 169
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 182
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "startValue":F
    goto :goto_4

    .line 189
    .end local v7    # "startValue":F
    :cond_5
    add-float v9, v0, v4

    cmpg-float v9, v9, v6

    if-ltz v9, :cond_3

    cmpl-float v9, v0, v1

    if-gtz v9, :cond_3

    .line 191
    add-float v9, v0, v4

    cmpg-float v9, v9, v1

    if-gtz v9, :cond_6

    cmpg-float v9, v6, v0

    if-gez v9, :cond_6

    .line 192
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 195
    :cond_6
    cmpg-float v9, v6, v0

    if-gez v9, :cond_7

    .line 196
    const/4 v7, 0x0

    .line 201
    .restart local v7    # "startValue":F
    :goto_6
    add-float v9, v0, v4

    cmpl-float v9, v1, v9

    if-lez v9, :cond_8

    .line 202
    const/high16 v2, 0x3f800000    # 1.0f

    .line 206
    .restart local v2    # "endValue":F
    :goto_7
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v10, 0x0

    invoke-static {v9, v7, v2, v10}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 207
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 198
    .end local v2    # "endValue":F
    .end local v7    # "startValue":F
    :cond_7
    sub-float v9, v6, v0

    div-float v7, v9, v4

    .restart local v7    # "startValue":F
    goto :goto_6

    .line 204
    :cond_8
    sub-float v9, v1, v0

    div-float v2, v9, v4

    .restart local v2    # "endValue":F
    goto :goto_7

    .line 211
    .end local v2    # "endValue":F
    .end local v4    # "length":F
    .end local v7    # "startValue":F
    :cond_9
    const-string v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 115
    const-string v4, "StrokeContent#draw"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 116
    int-to-float v4, p3

    div-float v5, v4, v6

    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v6

    float-to-int v0, v4

    .line 117
    .local v0, "alpha":I
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p2}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v6

    mul-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 121
    const-string v4, "StrokeContent#draw"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 145
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 127
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    .line 130
    .local v3, "pathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    invoke-static {v3}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 131
    invoke-direct {p0, p1, v3, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    .line 126
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_1
    const-string v4, "StrokeContent#buildPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 135
    invoke-static {v3}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_3
    if-ltz v2, :cond_2

    .line 136
    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v4}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v5, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 135
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 138
    :cond_2
    const-string v4, "StrokeContent#buildPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 139
    const-string v4, "StrokeContent#drawPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 141
    const-string v4, "StrokeContent#drawPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_2

    .line 144
    .end local v2    # "j":I
    .end local v3    # "pathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    :cond_3
    const-string v4, "StrokeContent#draw"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 215
    const-string v4, "StrokeContent#getBounds"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 218
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    .line 219
    .local v2, "pathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-static {v2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 220
    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v4}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v5, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "j":I
    .end local v2    # "pathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    :cond_1
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 225
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 226
    .local v3, "width":F
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    div-float v6, v3, v9

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    div-float v7, v3, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    div-float v8, v3, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    div-float v9, v3, v9

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 228
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 230
    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v10

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v10

    iget v6, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v10

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v10

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 236
    const-string v4, "StrokeContent#getBounds"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 237
    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 77
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Content;>;"
    const/4 v6, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    .local v3, "trimPathContentBefore":Lcom/airbnb/lottie/TrimPathContent;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 82
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 83
    .local v0, "content":Lcom/airbnb/lottie/Content;
    instance-of v4, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/airbnb/lottie/TrimPathContent;

    .line 84
    invoke-virtual {v4}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_0

    move-object v3, v0

    .line 85
    check-cast v3, Lcom/airbnb/lottie/TrimPathContent;

    .line 81
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    :cond_1
    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 92
    :cond_2
    const/4 v1, 0x0

    .line 93
    .local v1, "currentPathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_7

    .line 94
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 95
    .restart local v0    # "content":Lcom/airbnb/lottie/Content;
    instance-of v4, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lcom/airbnb/lottie/TrimPathContent;

    .line 96
    invoke-virtual {v4}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_5

    .line 97
    if-eqz v1, :cond_3

    .line 98
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    new-instance v1, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    .end local v1    # "currentPathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    move-object v4, v0

    check-cast v4, Lcom/airbnb/lottie/TrimPathContent;

    invoke-direct {v1, v4, v6}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/TrimPathContent;Lcom/airbnb/lottie/BaseStrokeContent$1;)V

    .line 101
    .restart local v1    # "currentPathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    check-cast v0, Lcom/airbnb/lottie/TrimPathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 93
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 102
    .restart local v0    # "content":Lcom/airbnb/lottie/Content;
    :cond_5
    instance-of v4, v0, Lcom/airbnb/lottie/PathContent;

    if-eqz v4, :cond_4

    .line 103
    if-nez v1, :cond_6

    .line 104
    new-instance v1, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    .end local v1    # "currentPathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    invoke-direct {v1, v3, v6}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/TrimPathContent;Lcom/airbnb/lottie/BaseStrokeContent$1;)V

    .line 106
    .restart local v1    # "currentPathGroup":Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    :cond_6
    invoke-static {v1}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    .end local v0    # "content":Lcom/airbnb/lottie/Content;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    :cond_7
    if-eqz v1, :cond_8

    .line 110
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_8
    return-void
.end method
