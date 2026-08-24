.class final Lcom/airbnb/lottie/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final SQRT_2:F

.field private static displayMetrics:Landroid/util/DisplayMetrics;

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    .line 20
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/Utils;->SQRT_2:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 12
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "offsetValue"    # F

    .prologue
    const/4 v11, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 92
    const-string v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 93
    sget-object v6, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 95
    sget-object v6, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    .line 96
    .local v1, "length":F
    cmpl-float v6, p1, v8

    if-nez v6, :cond_0

    cmpl-float v6, p2, v10

    if-nez v6, :cond_0

    .line 97
    const-string v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 163
    :goto_0
    return-void

    .line 100
    :cond_0
    cmpg-float v6, v1, v8

    if-ltz v6, :cond_1

    sub-float v6, p2, p1

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 101
    :cond_1
    const-string v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0

    .line 104
    :cond_2
    mul-float v5, v1, p1

    .line 105
    .local v5, "start":F
    mul-float v0, v1, p2

    .line 106
    .local v0, "end":F
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 107
    .local v3, "newStart":F
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 109
    .local v2, "newEnd":F
    mul-float v4, p3, v1

    .line 110
    .local v4, "offset":F
    add-float/2addr v3, v4

    .line 111
    add-float/2addr v2, v4

    .line 114
    cmpl-float v6, v3, v1

    if-ltz v6, :cond_3

    cmpl-float v6, v2, v1

    if-ltz v6, :cond_3

    .line 115
    invoke-static {v3, v1}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result v6

    int-to-float v3, v6

    .line 116
    invoke-static {v2, v1}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result v6

    int-to-float v2, v6

    .line 119
    :cond_3
    cmpg-float v6, v3, v10

    if-gez v6, :cond_4

    .line 120
    invoke-static {v3, v1}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result v6

    int-to-float v3, v6

    .line 122
    :cond_4
    cmpg-float v6, v2, v10

    if-gez v6, :cond_5

    .line 123
    invoke-static {v2, v1}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result v6

    int-to-float v2, v6

    .line 127
    :cond_5
    cmpl-float v6, v3, v2

    if-nez v6, :cond_6

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 129
    const-string v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0

    .line 133
    :cond_6
    cmpl-float v6, v3, v2

    if-ltz v6, :cond_7

    .line 134
    sub-float/2addr v3, v1

    .line 137
    :cond_7
    sget-object v6, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 138
    sget-object v6, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    sget-object v7, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v2, v7, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 144
    cmpl-float v6, v2, v1

    if-lez v6, :cond_9

    .line 145
    sget-object v6, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 146
    sget-object v6, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    rem-float v7, v2, v1

    sget-object v8, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6, v10, v7, v8, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 151
    sget-object v6, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 161
    :cond_8
    :goto_1
    sget-object v6, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p0, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 162
    const-string v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto/16 :goto_0

    .line 152
    :cond_9
    cmpg-float v6, v3, v10

    if-gez v6, :cond_8

    .line 153
    sget-object v6, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 154
    sget-object v6, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    add-float v7, v1, v3

    sget-object v8, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v1, v8, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 159
    sget-object v6, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1
.end method

.method static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V
    .locals 4
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "trimPath"    # Lcom/airbnb/lottie/TrimPathContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 83
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getStart()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v1, v0, v2

    .line 87
    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getEnd()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v2, v0, v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getOffset()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    .line 86
    invoke-static {p0, v1, v2, v0}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    goto :goto_0
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 45
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 7
    .param p0, "startPoint"    # Landroid/graphics/PointF;
    .param p1, "endPoint"    # Landroid/graphics/PointF;
    .param p2, "cp1"    # Landroid/graphics/PointF;
    .param p3, "cp2"    # Landroid/graphics/PointF;

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 26
    .local v0, "path":Landroid/graphics/Path;
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 28
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method static getScale(Landroid/graphics/Matrix;)F
    .locals 8
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    sget-object v2, Lcom/airbnb/lottie/Utils;->points:[F

    aput v3, v2, v4

    .line 70
    sget-object v2, Lcom/airbnb/lottie/Utils;->points:[F

    aput v3, v2, v5

    .line 72
    sget-object v2, Lcom/airbnb/lottie/Utils;->points:[F

    sget v3, Lcom/airbnb/lottie/Utils;->SQRT_2:F

    aput v3, v2, v6

    .line 73
    sget-object v2, Lcom/airbnb/lottie/Utils;->points:[F

    sget v3, Lcom/airbnb/lottie/Utils;->SQRT_2:F

    aput v3, v2, v7

    .line 74
    sget-object v2, Lcom/airbnb/lottie/Utils;->points:[F

    invoke-virtual {p0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 75
    sget-object v2, Lcom/airbnb/lottie/Utils;->points:[F

    aget v2, v2, v6

    sget-object v3, Lcom/airbnb/lottie/Utils;->points:[F

    aget v3, v3, v4

    sub-float v0, v2, v3

    .line 76
    .local v0, "dx":F
    sget-object v2, Lcom/airbnb/lottie/Utils;->points:[F

    aget v2, v2, v7

    sget-object v3, Lcom/airbnb/lottie/Utils;->points:[F

    aget v3, v3, v5

    sub-float v1, v2, v3

    .line 79
    .local v1, "dy":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    return v2
.end method

.method static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v1, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v1, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 63
    :cond_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 64
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    sget-object v1, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v1, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v1, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 54
    :cond_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 55
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    sget-object v1, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method static hashFor(FFFF)I
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/4 v2, 0x0

    .line 183
    const/16 v0, 0x11

    .line 184
    .local v0, "result":I
    cmpl-float v1, p0, v2

    if-eqz v1, :cond_0

    .line 185
    const/16 v1, 0x20f

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v0, v1

    .line 187
    :cond_0
    cmpl-float v1, p1, v2

    if-eqz v1, :cond_1

    .line 188
    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 190
    :cond_1
    cmpl-float v1, p2, v2

    if-eqz v1, :cond_2

    .line 191
    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v0, v1

    .line 193
    :cond_2
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_3

    .line 194
    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v0, v1

    .line 196
    :cond_3
    return v0
.end method

.method static isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z
    .locals 3
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMajorVersion()I

    move-result v2

    if-ge v2, p1, :cond_1

    move v0, v1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMajorVersion()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMinorVersion()I

    move-result v2

    if-ge v2, p2, :cond_2

    move v0, v1

    .line 174
    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMinorVersion()I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getPatchVersion()I

    move-result v2

    if-ge v2, p3, :cond_0

    move v0, v1

    goto :goto_0
.end method
