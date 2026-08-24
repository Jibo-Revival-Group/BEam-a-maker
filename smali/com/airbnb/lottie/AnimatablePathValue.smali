.class Lcom/airbnb/lottie/AnimatablePathValue;
.super Ljava/lang/Object;
.source "AnimatablePathValue.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatablePathValue$ValueFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private initialPoint:Landroid/graphics/PointF;

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/PathKeyframe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/AnimatablePathValue;->keyframes:Ljava/util/List;

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/airbnb/lottie/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/Object;
    .param p2, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/airbnb/lottie/AnimatablePathValue;->keyframes:Ljava/util/List;

    .line 34
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/AnimatablePathValue;->hasKeyframes(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 35
    check-cast v1, Lorg/json/JSONArray;

    .line 36
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 37
    .local v4, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 38
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 40
    .local v2, "jsonKeyframe":Lorg/json/JSONObject;
    invoke-static {}, Lcom/airbnb/lottie/AnimatablePathValue$ValueFactory;->access$000()Lcom/airbnb/lottie/AnimatableValue$Factory;

    move-result-object v5

    .line 39
    invoke-static {v2, p2, v5}, Lcom/airbnb/lottie/PathKeyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/PathKeyframe;

    move-result-object v3

    .line 41
    .local v3, "keyframe":Lcom/airbnb/lottie/PathKeyframe;
    iget-object v5, p0, Lcom/airbnb/lottie/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "jsonKeyframe":Lorg/json/JSONObject;
    .end local v3    # "keyframe":Lcom/airbnb/lottie/PathKeyframe;
    :cond_0
    iget-object v5, p0, Lcom/airbnb/lottie/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-static {v5}, Lcom/airbnb/lottie/Keyframe;->setEndFrames(Ljava/util/List;)V

    .line 47
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "length":I
    .end local p1    # "json":Ljava/lang/Object;
    :goto_1
    return-void

    .line 45
    .restart local p1    # "json":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v5

    invoke-static {p1, v5}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/lottie/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    goto :goto_1
.end method

.method static createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableValue;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")",
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    const-string v0, "k"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/airbnb/lottie/AnimatablePathValue;

    const-string v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    .line 19
    :goto_0
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;

    const-string v1, "x"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v1

    const-string v2, "y"

    .line 19
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;-><init>(Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    goto :goto_0
.end method

.method private hasKeyframes(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "json"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 50
    instance-of v2, p1, Lorg/json/JSONArray;

    if-nez v2, :cond_1

    .line 55
    .end local p1    # "json":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 54
    .restart local p1    # "json":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "firstObject":Ljava/lang/Object;
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "firstObject":Ljava/lang/Object;
    const-string v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatablePathValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/PathKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/PathKeyframeAnimation;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public hasAnimation()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
