.class Lcom/airbnb/lottie/GradientFill$Factory;
.super Ljava/lang/Object;
.source "GradientFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/GradientFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/GradientFill;
    .locals 20
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 82
    const-string v2, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "name":Ljava/lang/String;
    const-string v2, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 85
    .local v15, "jsonColor":Lorg/json/JSONObject;
    if-eqz v15, :cond_0

    const-string v2, "k"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "p"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    .line 89
    .local v19, "points":I
    const-string v2, "k"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 91
    :try_start_0
    const-string v2, "p"

    move/from16 v0, v19

    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v19    # "points":I
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 97
    .local v6, "color":Lcom/airbnb/lottie/AnimatableGradientColorValue;
    if-eqz v15, :cond_1

    .line 98
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/airbnb/lottie/AnimatableGradientColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableGradientColorValue;

    move-result-object v6

    .line 101
    :cond_1
    const-string v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 102
    .local v17, "jsonOpacity":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 103
    .local v7, "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    if-eqz v17, :cond_2

    .line 104
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v7

    .line 107
    :cond_2
    const-string v2, "r"

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 108
    .local v13, "fillTypeInt":I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_5

    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 110
    .local v5, "fillType":Landroid/graphics/Path$FillType;
    :goto_1
    const-string v2, "t"

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 111
    .local v14, "gradientTypeInt":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_6

    sget-object v4, Lcom/airbnb/lottie/GradientType;->Linear:Lcom/airbnb/lottie/GradientType;

    .line 113
    .local v4, "gradientType":Lcom/airbnb/lottie/GradientType;
    :goto_2
    const-string v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 114
    .local v18, "jsonStartPoint":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 115
    .local v8, "startPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    if-eqz v18, :cond_3

    .line 116
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v8

    .line 119
    :cond_3
    const-string v2, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 120
    .local v16, "jsonEndPoint":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 121
    .local v9, "endPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    if-eqz v16, :cond_4

    .line 122
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v9

    .line 125
    :cond_4
    new-instance v2, Lcom/airbnb/lottie/GradientFill;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/airbnb/lottie/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableGradientColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/GradientFill$1;)V

    return-object v2

    .line 108
    .end local v4    # "gradientType":Lcom/airbnb/lottie/GradientType;
    .end local v5    # "fillType":Landroid/graphics/Path$FillType;
    .end local v8    # "startPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    .end local v9    # "endPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    .end local v14    # "gradientTypeInt":I
    .end local v16    # "jsonEndPoint":Lorg/json/JSONObject;
    .end local v18    # "jsonStartPoint":Lorg/json/JSONObject;
    :cond_5
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1

    .line 111
    .restart local v5    # "fillType":Landroid/graphics/Path$FillType;
    .restart local v14    # "gradientTypeInt":I
    :cond_6
    sget-object v4, Lcom/airbnb/lottie/GradientType;->Radial:Lcom/airbnb/lottie/GradientType;

    goto :goto_2

    .line 92
    .end local v5    # "fillType":Landroid/graphics/Path$FillType;
    .end local v6    # "color":Lcom/airbnb/lottie/AnimatableGradientColorValue;
    .end local v7    # "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    .end local v13    # "fillTypeInt":I
    .end local v14    # "gradientTypeInt":I
    .end local v17    # "jsonOpacity":Lorg/json/JSONObject;
    .restart local v19    # "points":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method
