.class Lcom/airbnb/lottie/ShapeFill$Factory;
.super Ljava/lang/Object;
.source "ShapeFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ShapeFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapeFill;
    .locals 10
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    const/4 v6, 0x1

    .line 29
    const/4 v4, 0x0

    .line 31
    .local v4, "color":Lcom/airbnb/lottie/AnimatableColorValue;
    const/4 v5, 0x0

    .line 32
    .local v5, "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "name":Ljava/lang/String;
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 35
    .local v8, "jsonColor":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 36
    invoke-static {v8, p1}, Lcom/airbnb/lottie/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableColorValue;

    move-result-object v4

    .line 39
    :cond_0
    const-string v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 40
    .local v9, "jsonOpacity":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 41
    invoke-static {v9, p1}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v5

    .line 43
    :cond_1
    const-string v0, "fillEnabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 45
    .local v2, "fillEnabled":Z
    const-string v0, "r"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 46
    .local v7, "fillTypeInt":I
    if-ne v7, v6, :cond_2

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 48
    .local v3, "fillType":Landroid/graphics/Path$FillType;
    :goto_0
    new-instance v0, Lcom/airbnb/lottie/ShapeFill;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/ShapeFill$1;)V

    return-object v0

    .line 46
    .end local v3    # "fillType":Landroid/graphics/Path$FillType;
    :cond_2
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_0
.end method
