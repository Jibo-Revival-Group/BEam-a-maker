.class Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableGradientColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue$Factory",
        "<",
        "Lcom/airbnb/lottie/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorPoints:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "colorPoints"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(ILcom/airbnb/lottie/AnimatableGradientColorValue$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/airbnb/lottie/AnimatableGradientColorValue$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;-><init>(I)V

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/GradientColor;Lorg/json/JSONArray;)V
    .locals 11
    .param p1, "gradientColor"    # Lcom/airbnb/lottie/GradientColor;
    .param p2, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 115
    iget v7, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v6, v7, 0x4

    .line 116
    .local v6, "startIndex":I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-gt v7, v6, :cond_1

    .line 143
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    sub-int/2addr v7, v6

    div-int/lit8 v4, v7, 0x2

    .line 121
    .local v4, "opacityStops":I
    new-array v5, v4, [D

    .line 122
    .local v5, "positions":[D
    new-array v3, v4, [D

    .line 124
    .local v3, "opacities":[D
    move v1, v6

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 125
    rem-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_2

    .line 126
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 124
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    aput-wide v8, v3, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getSize()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v7

    aget v0, v7, v1

    .line 136
    .local v0, "color":I
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v7

    aget v7, v7, v1

    float-to-double v8, v7

    invoke-direct {p0, v8, v9, v5, v3}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->getOpacityAtPosition(D[D[D)I

    move-result v7

    .line 137
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 138
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 139
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    .line 135
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 141
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v7

    aput v0, v7, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 17
    .param p1, "position"    # D
    .param p3, "positions"    # [D
    .param p4, "opacities"    # [D
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    .prologue
    .line 147
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v8, v2, :cond_1

    .line 148
    add-int/lit8 v2, v8, -0x1

    aget-wide v10, p3, v2

    .line 149
    .local v10, "lastPosition":D
    aget-wide v12, p3, v8

    .line 150
    .local v12, "thisPosition":D
    aget-wide v2, p3, v8

    cmpl-double v2, v2, p1

    if-ltz v2, :cond_0

    .line 151
    sub-double v2, p1, v10

    sub-double v4, v12, v10

    div-double v6, v2, v4

    .line 152
    .local v6, "progress":D
    const-wide v14, 0x406fe00000000000L    # 255.0

    add-int/lit8 v2, v8, -0x1

    aget-wide v2, p4, v2

    aget-wide v4, p4, v8

    invoke-static/range {v2 .. v7}, Lcom/airbnb/lottie/MiscUtils;->lerp(DDD)D

    move-result-wide v2

    mul-double/2addr v2, v14

    double-to-int v2, v2

    .line 155
    .end local v6    # "progress":D
    .end local v10    # "lastPosition":D
    .end local v12    # "thisPosition":D
    :goto_1
    return v2

    .line 147
    .restart local v10    # "lastPosition":D
    .restart local v12    # "thisPosition":D
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 155
    .end local v10    # "lastPosition":D
    .end local v12    # "thisPosition":D
    :cond_1
    const-wide v2, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p4

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, p4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    goto :goto_1
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/GradientColor;
    .locals 14
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 68
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    .line 69
    .local v0, "array":Lorg/json/JSONArray;
    iget v9, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v7, v9, [F

    .line 70
    .local v7, "positions":[F
    iget v9, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v3, v9, [I

    .line 71
    .local v3, "colors":[I
    new-instance v5, Lcom/airbnb/lottie/GradientColor;

    invoke-direct {v5, v7, v3}, Lcom/airbnb/lottie/GradientColor;-><init>([F[I)V

    .line 72
    .local v5, "gradientColor":Lcom/airbnb/lottie/GradientColor;
    const/4 v8, 0x0

    .line 73
    .local v8, "r":I
    const/4 v4, 0x0

    .line 74
    .local v4, "g":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    iget v12, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v12, v12, 0x4

    if-eq v9, v12, :cond_0

    .line 75
    const-string v9, "LOTTIE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected gradient length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Expected "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v13, v13, 0x4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". This may affect the appearance of the gradient. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Make sure to save your After Effects file before exporting an animation with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "gradients."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v9, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v9, v9, 0x4

    if-ge v6, v9, :cond_1

    .line 81
    div-int/lit8 v2, v6, 0x4

    .line 82
    .local v2, "colorIndex":I
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    .line 83
    .local v10, "value":D
    rem-int/lit8 v9, v6, 0x4

    packed-switch v9, :pswitch_data_0

    .line 80
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    :pswitch_0
    double-to-float v9, v10

    aput v9, v7, v2

    goto :goto_1

    .line 89
    :pswitch_1
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v10

    double-to-int v8, v12

    .line 90
    goto :goto_1

    .line 92
    :pswitch_2
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v10

    double-to-int v4, v12

    .line 93
    goto :goto_1

    .line 95
    :pswitch_3
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v10

    double-to-int v1, v12

    .line 96
    .local v1, "b":I
    const/16 v9, 0xff

    invoke-static {v9, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v3, v2

    goto :goto_1

    .line 101
    .end local v1    # "b":I
    .end local v2    # "colorIndex":I
    .end local v10    # "value":D
    :cond_1
    invoke-direct {p0, v5, v0}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/GradientColor;Lorg/json/JSONArray;)V

    .line 102
    return-object v5

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/GradientColor;

    move-result-object v0

    return-object v0
.end method
