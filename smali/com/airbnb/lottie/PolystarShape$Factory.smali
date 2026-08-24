.class Lcom/airbnb/lottie/PolystarShape$Factory;
.super Ljava/lang/Object;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/PolystarShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/PolystarShape;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    const/4 v10, 0x0

    .line 100
    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "name":Ljava/lang/String;
    const-string v0, "sy"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/PolystarShape$Type;

    move-result-object v2

    .line 102
    .local v2, "type":Lcom/airbnb/lottie/PolystarShape$Type;
    const-string v0, "pt"

    .line 103
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v10}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v3

    .line 104
    .local v3, "points":Lcom/airbnb/lottie/AnimatableFloatValue;
    const-string v0, "p"

    .line 105
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v4

    .line 106
    .local v4, "position":Lcom/airbnb/lottie/AnimatableValue;, "Lcom/airbnb/lottie/AnimatableValue<Landroid/graphics/PointF;>;"
    const-string v0, "r"

    .line 107
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v10}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v5

    .line 108
    .local v5, "rotation":Lcom/airbnb/lottie/AnimatableFloatValue;
    const-string v0, "or"

    .line 109
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v7

    .line 110
    .local v7, "outerRadius":Lcom/airbnb/lottie/AnimatableFloatValue;
    const-string v0, "os"

    .line 111
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v10}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v9

    .line 115
    .local v9, "outerRoundedness":Lcom/airbnb/lottie/AnimatableFloatValue;
    sget-object v0, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    if-ne v2, v0, :cond_0

    .line 116
    const-string v0, "ir"

    .line 117
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v6

    .line 118
    .local v6, "innerRadius":Lcom/airbnb/lottie/AnimatableFloatValue;
    const-string v0, "is"

    .line 119
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v10}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v8

    .line 124
    .local v8, "innerRoundedness":Lcom/airbnb/lottie/AnimatableFloatValue;
    :goto_0
    new-instance v0, Lcom/airbnb/lottie/PolystarShape;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/lottie/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/PolystarShape$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/PolystarShape$1;)V

    return-object v0

    .line 121
    .end local v6    # "innerRadius":Lcom/airbnb/lottie/AnimatableFloatValue;
    .end local v8    # "innerRoundedness":Lcom/airbnb/lottie/AnimatableFloatValue;
    :cond_0
    const/4 v6, 0x0

    .line 122
    .restart local v6    # "innerRadius":Lcom/airbnb/lottie/AnimatableFloatValue;
    const/4 v8, 0x0

    .restart local v8    # "innerRoundedness":Lcom/airbnb/lottie/AnimatableFloatValue;
    goto :goto_0
.end method
