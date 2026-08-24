.class final Lcom/airbnb/lottie/AnimatableFloatValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableFloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/airbnb/lottie/AnimatableFloatValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/AnimatableFloatValue;-><init>(Lcom/airbnb/lottie/AnimatableFloatValue$1;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "isDp"    # Z

    .prologue
    .line 54
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v1

    .line 55
    .local v1, "scale":F
    :goto_0
    if-eqz p0, :cond_0

    const-string v2, "x"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 58
    :cond_0
    sget-object v2, Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;

    .line 59
    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object v0

    .line 61
    .local v0, "result":Lcom/airbnb/lottie/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/AnimatableValueParser$Result<Ljava/lang/Float;>;"
    new-instance v3, Lcom/airbnb/lottie/AnimatableFloatValue;

    iget-object v4, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v2, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/airbnb/lottie/AnimatableFloatValue;-><init>(Ljava/util/List;Ljava/lang/Float;Lcom/airbnb/lottie/AnimatableFloatValue$1;)V

    return-object v3

    .line 54
    .end local v0    # "result":Lcom/airbnb/lottie/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/AnimatableValueParser$Result<Ljava/lang/Float;>;"
    .end local v1    # "scale":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
