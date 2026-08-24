.class final Lcom/airbnb/lottie/AnimatableScaleValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableScaleValue;
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

.method static newInstance()Lcom/airbnb/lottie/AnimatableScaleValue;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/airbnb/lottie/AnimatableScaleValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/AnimatableScaleValue;-><init>(Lcom/airbnb/lottie/AnimatableScaleValue$1;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableScaleValue;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcom/airbnb/lottie/ScaleXY$Factory;->INSTANCE:Lcom/airbnb/lottie/ScaleXY$Factory;

    .line 31
    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object v0

    .line 33
    .local v0, "result":Lcom/airbnb/lottie/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/AnimatableValueParser$Result<Lcom/airbnb/lottie/ScaleXY;>;"
    new-instance v2, Lcom/airbnb/lottie/AnimatableScaleValue;

    iget-object v3, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/ScaleXY;

    invoke-direct {v2, v3, v1}, Lcom/airbnb/lottie/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/ScaleXY;)V

    return-object v2
.end method
