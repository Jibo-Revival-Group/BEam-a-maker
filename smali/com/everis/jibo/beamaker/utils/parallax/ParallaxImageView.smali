.class public Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ParallaxImageView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMaximumJump:F

.field private mParallaxIntensity:F

.field private mScaledIntensities:Z

.field private mSensorInterpreter:Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTranslationMatrix:Landroid/graphics/Matrix;

.field private mXOffset:F

.field private mXTranslation:F

.field private mYOffset:F

.field private mYTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mScaledIntensities:Z

    .line 47
    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    .line 53
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    .line 76
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mTranslationMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v1, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    invoke-direct {v1}, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;-><init>()V

    iput-object v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorInterpreter:Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    .line 80
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    if-eqz p2, :cond_3

    .line 84
    sget-object v1, Lcom/everis/jibo/beamaker/R$styleable;->ParallaxImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "customAttrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->setParallaxIntensity(F)V

    .line 91
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-boolean v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mScaledIntensities:Z

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->setScaledIntensities(Z)V

    .line 95
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorInterpreter:Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    .line 97
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->getTiltSensitivity()F

    move-result v1

    .line 96
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->setTiltSensitivity(F)V

    .line 100
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    .end local v0    # "customAttrs":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v1, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView$1;-><init>(Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;)V

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->configureMatrix()V

    return-void
.end method

.method private configureMatrix()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 285
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getHeight()I

    move-result v7

    if-nez v7, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 288
    .local v1, "dWidth":I
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 289
    .local v0, "dHeight":I
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getWidth()I

    move-result v6

    .line 290
    .local v6, "vWidth":I
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getHeight()I

    move-result v5

    .line 295
    .local v5, "vHeight":I
    mul-int v7, v1, v5

    mul-int v8, v6, v0

    if-le v7, v8, :cond_2

    .line 296
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 297
    .local v4, "scale":F
    int-to-float v7, v6

    int-to-float v8, v1

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    iput v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXOffset:F

    .line 298
    int-to-float v7, v5

    int-to-float v8, v0

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    iput v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYOffset:F

    .line 305
    :goto_1
    iget v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXOffset:F

    iget v8, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXTranslation:F

    add-float v2, v7, v8

    .line 306
    .local v2, "dx":F
    iget v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYOffset:F

    iget v8, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYTranslation:F

    add-float v3, v7, v8

    .line 308
    .local v3, "dy":F
    iget-object v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mTranslationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 309
    iget-object v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mTranslationMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    mul-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 310
    iget-object v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mTranslationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 311
    iget-object v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mTranslationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v7}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 300
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "scale":F
    :cond_2
    int-to-float v7, v6

    int-to-float v8, v1

    div-float v4, v7, v8

    .line 301
    .restart local v4    # "scale":F
    int-to-float v7, v6

    int-to-float v8, v1

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    iput v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXOffset:F

    .line 302
    int-to-float v7, v5

    int-to-float v8, v0

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    iput v7, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYOffset:F

    goto :goto_1
.end method

.method private setTranslate(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 241
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 242
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parallax effect cannot translate more than 100% of its off-screen size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_1
    iget-boolean v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mScaledIntensities:Z

    if-eqz v2, :cond_4

    .line 249
    iget v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXOffset:F

    .line 250
    .local v0, "xScale":F
    iget v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYOffset:F

    .line 258
    .local v1, "yScale":F
    :goto_0
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 260
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXTranslation:F

    div-float/2addr v2, v0

    sub-float v2, p1, v2

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 261
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXTranslation:F

    div-float/2addr v2, v0

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    add-float p1, v2, v3

    .line 267
    :cond_2
    :goto_1
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYTranslation:F

    div-float/2addr v2, v1

    sub-float v2, p2, v2

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 268
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYTranslation:F

    div-float/2addr v2, v1

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    add-float p2, v2, v3

    .line 274
    :cond_3
    :goto_2
    mul-float v2, p1, v0

    iput v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXTranslation:F

    .line 275
    mul-float v2, p2, v1

    iput v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYTranslation:F

    .line 277
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->configureMatrix()V

    .line 278
    return-void

    .line 253
    .end local v0    # "xScale":F
    .end local v1    # "yScale":F
    :cond_4
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXOffset:F

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYOffset:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 254
    .restart local v0    # "xScale":F
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXOffset:F

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYOffset:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .restart local v1    # "yScale":F
    goto :goto_0

    .line 262
    :cond_5
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXTranslation:F

    div-float/2addr v2, v0

    sub-float v2, p1, v2

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 263
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mXTranslation:F

    div-float/2addr v2, v0

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    sub-float p1, v2, v3

    goto :goto_1

    .line 269
    :cond_6
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYTranslation:F

    div-float/2addr v2, v1

    sub-float v2, p2, v2

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 270
    iget v2, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mYTranslation:F

    div-float/2addr v2, v1

    iget v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    sub-float p2, v2, v3

    goto :goto_2
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 132
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 116
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->configureMatrix()V

    .line 117
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorInterpreter:Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorInterpreter:Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->interpretSensorEvent(Landroid/content/Context;Landroid/hardware/SensorEvent;)[F

    move-result-object v0

    .line 125
    .local v0, "vectors":[F
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    neg-float v2, v2

    invoke-direct {p0, v1, v2}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->setTranslate(FF)V

    goto :goto_0
.end method

.method public registerSensorManager()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->registerSensorManager(I)V

    .line 140
    return-void
.end method

.method public registerSensorManager(I)V
    .locals 3
    .param p1, "samplingPeriodUs"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 154
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xb

    .line 156
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 155
    invoke-virtual {v0, p0, v1, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method public setMaximumJump(F)V
    .locals 0
    .param p1, "maximumJump"    # F

    .prologue
    .line 230
    iput p1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mMaximumJump:F

    .line 231
    return-void
.end method

.method public setParallaxIntensity(F)V
    .locals 2
    .param p1, "parallaxIntensity"    # F

    .prologue
    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parallax effect must have a intensity of 1.0 or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iput p1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mParallaxIntensity:F

    .line 199
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->configureMatrix()V

    .line 200
    return-void
.end method

.method public setScaledIntensities(Z)V
    .locals 0
    .param p1, "scaledIntensities"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mScaledIntensities:Z

    .line 221
    return-void
.end method

.method public setTiltSensitivity(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 210
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorInterpreter:Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->setTiltSensitivity(F)V

    .line 211
    return-void
.end method

.method public unregisterSensorManager()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->unregisterSensorManager(Z)V

    .line 167
    return-void
.end method

.method public unregisterSensorManager(Z)V
    .locals 2
    .param p1, "resetTranslation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorInterpreter:Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 180
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->mSensorInterpreter:Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->reset()V

    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0, v1, v1}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->setTranslate(FF)V

    goto :goto_0
.end method
