.class Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;
.super Ljava/lang/Object;
.source "SensorInterpreter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOrientedRotationMatrix:[F

.field private mRotationMatrix:[F

.field private mTargetMatrix:[F

.field private mTargeted:Z

.field private mTiltSensitivity:F

.field private mTiltVector:[F

.field private mTruncatedRotationVector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTargeted:Z

    .line 49
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTargetMatrix:[F

    .line 54
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mRotationMatrix:[F

    .line 55
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mOrientedRotationMatrix:[F

    .line 65
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltSensitivity:F

    return-void
.end method


# virtual methods
.method getRotationVectorFromSensorEvent(Landroid/hardware/SensorEvent;)[F
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 149
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-le v0, v2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTruncatedRotationVector:[F

    if-nez v0, :cond_0

    .line 155
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTruncatedRotationVector:[F

    .line 157
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTruncatedRotationVector:[F

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTruncatedRotationVector:[F

    .line 160
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    goto :goto_0
.end method

.method public getTiltSensitivity()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltSensitivity:F

    return v0
.end method

.method public interpretSensorEvent(Landroid/content/Context;Landroid/hardware/SensorEvent;)[F
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/hardware/SensorEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x82

    const/16 v6, 0x81

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    .line 76
    if-nez p2, :cond_0

    .line 136
    :goto_0
    return-object v3

    .line 81
    :cond_0
    invoke-virtual {p0, p2}, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->getRotationVectorFromSensorEvent(Landroid/hardware/SensorEvent;)[F

    move-result-object v2

    .line 84
    .local v2, "rotationVector":[F
    iget-boolean v4, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTargeted:Z

    if-nez v4, :cond_1

    .line 85
    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->setTargetVector([F)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mRotationMatrix:[F

    invoke-static {v3, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 93
    const-string v3, "window"

    .line 94
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 95
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 99
    .local v1, "rotation":I
    if-nez v1, :cond_3

    .line 100
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    iget-object v4, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mRotationMatrix:[F

    iget-object v5, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTargetMatrix:[F

    invoke-static {v3, v4, v5}, Landroid/hardware/SensorManager;->getAngleChange([F[F[F)V

    .line 121
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 123
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    aget v4, v3, v0

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v0

    .line 126
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    aget v4, v3, v0

    iget v5, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltSensitivity:F

    mul-float/2addr v4, v5

    aput v4, v3, v0

    .line 129
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v9

    if-lez v3, :cond_4

    .line 130
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    aput v9, v3, v0

    .line 121
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    .end local v0    # "i":I
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_4
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    iget-object v4, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mOrientedRotationMatrix:[F

    iget-object v5, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTargetMatrix:[F

    invoke-static {v3, v4, v5}, Landroid/hardware/SensorManager;->getAngleChange([F[F[F)V

    goto :goto_1

    .line 105
    :pswitch_0
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mRotationMatrix:[F

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mOrientedRotationMatrix:[F

    invoke-static {v3, v4, v6, v5}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_4

    .line 109
    :pswitch_1
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mRotationMatrix:[F

    iget-object v4, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mOrientedRotationMatrix:[F

    invoke-static {v3, v6, v7, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_4

    .line 113
    :pswitch_2
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mRotationMatrix:[F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mOrientedRotationMatrix:[F

    invoke-static {v3, v7, v4, v5}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_4

    .line 131
    .restart local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v8

    if-gez v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    aput v8, v3, v0

    goto :goto_3

    .line 136
    :cond_5
    iget-object v3, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltVector:[F

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTargeted:Z

    .line 180
    return-void
.end method

.method protected setTargetVector([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTargetMatrix:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTargeted:Z

    .line 172
    return-void
.end method

.method public setTiltSensitivity(F)V
    .locals 2
    .param p1, "tiltSensitivity"    # F

    .prologue
    .line 199
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tilt sensitivity must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iput p1, p0, Lcom/everis/jibo/beamaker/utils/parallax/SensorInterpreter;->mTiltSensitivity:F

    .line 204
    return-void
.end method
