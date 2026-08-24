.class final Lcom/airbnb/lottie/AnimatableGradientColorValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableGradientColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableGradientColorValue;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    const/4 v5, 0x0

    .line 31
    const-string v3, "p"

    const-string v4, "k"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 32
    .local v1, "points":I
    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v4, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;

    invoke-direct {v4, v1, v5}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;-><init>(ILcom/airbnb/lottie/AnimatableGradientColorValue$1;)V

    .line 33
    invoke-static {p0, v3, p1, v4}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object v2

    .line 35
    .local v2, "result":Lcom/airbnb/lottie/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/AnimatableValueParser$Result<Lcom/airbnb/lottie/GradientColor;>;"
    iget-object v0, v2, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/GradientColor;

    .line 36
    .local v0, "initialValue":Lcom/airbnb/lottie/GradientColor;
    new-instance v3, Lcom/airbnb/lottie/AnimatableGradientColorValue;

    iget-object v4, v2, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v3, v4, v0, v5}, Lcom/airbnb/lottie/AnimatableGradientColorValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/AnimatableGradientColorValue$1;)V

    return-object v3
.end method
