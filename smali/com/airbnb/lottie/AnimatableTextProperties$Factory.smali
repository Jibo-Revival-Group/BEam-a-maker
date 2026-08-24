.class final Lcom/airbnb/lottie/AnimatableTextProperties$Factory;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableTextProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTextProperties;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    const/4 v10, 0x0

    .line 29
    if-eqz p0, :cond_0

    const-string v9, "a"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 30
    :cond_0
    new-instance v9, Lcom/airbnb/lottie/AnimatableTextProperties;

    invoke-direct {v9, v10, v10, v10, v10}, Lcom/airbnb/lottie/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    .line 57
    :goto_0
    return-object v9

    .line 32
    :cond_1
    const-string v9, "a"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    .local v0, "animatablePropertiesJson":Lorg/json/JSONObject;
    const-string v9, "fc"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    .local v2, "colorJson":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 35
    .local v1, "color":Lcom/airbnb/lottie/AnimatableColorValue;
    if-eqz v2, :cond_2

    .line 36
    invoke-static {v2, p1}, Lcom/airbnb/lottie/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableColorValue;

    move-result-object v1

    .line 39
    :cond_2
    const-string v9, "sc"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    .local v4, "strokeJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 41
    .local v3, "stroke":Lcom/airbnb/lottie/AnimatableColorValue;
    if-eqz v4, :cond_3

    .line 42
    invoke-static {v4, p1}, Lcom/airbnb/lottie/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableColorValue;

    move-result-object v3

    .line 45
    :cond_3
    const-string v9, "sw"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 46
    .local v6, "strokeWidthJson":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 47
    .local v5, "strokeWidth":Lcom/airbnb/lottie/AnimatableFloatValue;
    if-eqz v6, :cond_4

    .line 48
    invoke-static {v6, p1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v5

    .line 51
    :cond_4
    const-string v9, "t"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 52
    .local v8, "trackingJson":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 53
    .local v7, "tracking":Lcom/airbnb/lottie/AnimatableFloatValue;
    if-eqz v8, :cond_5

    .line 54
    invoke-static {v8, p1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v7

    .line 57
    :cond_5
    new-instance v9, Lcom/airbnb/lottie/AnimatableTextProperties;

    invoke-direct {v9, v1, v3, v5, v7}, Lcom/airbnb/lottie/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    goto :goto_0
.end method
