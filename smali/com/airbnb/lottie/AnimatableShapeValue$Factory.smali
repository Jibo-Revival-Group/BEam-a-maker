.class final Lcom/airbnb/lottie/AnimatableShapeValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableShapeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableShapeValue;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/ShapeData$Factory;->INSTANCE:Lcom/airbnb/lottie/ShapeData$Factory;

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object v0

    .line 38
    .local v0, "result":Lcom/airbnb/lottie/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/AnimatableValueParser$Result<Lcom/airbnb/lottie/ShapeData;>;"
    new-instance v2, Lcom/airbnb/lottie/AnimatableShapeValue;

    iget-object v3, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/ShapeData;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/airbnb/lottie/AnimatableShapeValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/ShapeData;Lcom/airbnb/lottie/AnimatableShapeValue$1;)V

    return-object v2
.end method
