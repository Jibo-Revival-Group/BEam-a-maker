.class final Lcom/airbnb/lottie/AnimatableTextFrame$Factory;
.super Ljava/lang/Object;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableTextFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTextFrame;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    const-string v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 25
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    invoke-static {}, Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;->access$000()Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;

    move-result-object v2

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object v0

    .line 28
    .local v0, "result":Lcom/airbnb/lottie/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/AnimatableValueParser$Result<Lcom/airbnb/lottie/DocumentData;>;"
    new-instance v2, Lcom/airbnb/lottie/AnimatableTextFrame;

    iget-object v3, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/DocumentData;

    invoke-direct {v2, v3, v1}, Lcom/airbnb/lottie/AnimatableTextFrame;-><init>(Ljava/util/List;Lcom/airbnb/lottie/DocumentData;)V

    return-object v2
.end method
