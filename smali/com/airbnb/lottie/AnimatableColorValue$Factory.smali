.class final Lcom/airbnb/lottie/AnimatableColorValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableColorValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableColorValue;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcom/airbnb/lottie/ColorFactory;->INSTANCE:Lcom/airbnb/lottie/ColorFactory;

    .line 29
    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object v0

    .line 31
    .local v0, "result":Lcom/airbnb/lottie/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/AnimatableValueParser$Result<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/airbnb/lottie/AnimatableColorValue;

    iget-object v3, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/airbnb/lottie/AnimatableColorValue;-><init>(Ljava/util/List;Ljava/lang/Integer;Lcom/airbnb/lottie/AnimatableColorValue$1;)V

    return-object v2
.end method
