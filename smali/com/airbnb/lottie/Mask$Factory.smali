.class Lcom/airbnb/lottie/Mask$Factory;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

.method static newMask(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Mask;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 29
    const-string v4, "mode"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 40
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 43
    .local v0, "maskMode":Lcom/airbnb/lottie/Mask$MaskMode;
    :goto_1
    const-string v4, "pt"

    .line 44
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 43
    invoke-static {v4, p1}, Lcom/airbnb/lottie/AnimatableShapeValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableShapeValue;

    move-result-object v1

    .line 45
    .local v1, "maskPath":Lcom/airbnb/lottie/AnimatableShapeValue;
    const-string v4, "o"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 47
    .local v3, "opacityJson":Lorg/json/JSONObject;
    invoke-static {v3, p1}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v2

    .line 48
    .local v2, "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    new-instance v4, Lcom/airbnb/lottie/Mask;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/airbnb/lottie/Mask;-><init>(Lcom/airbnb/lottie/Mask$MaskMode;Lcom/airbnb/lottie/AnimatableShapeValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/Mask$1;)V

    return-object v4

    .line 29
    .end local v0    # "maskMode":Lcom/airbnb/lottie/Mask$MaskMode;
    .end local v1    # "maskPath":Lcom/airbnb/lottie/AnimatableShapeValue;
    .end local v2    # "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    .end local v3    # "opacityJson":Lorg/json/JSONObject;
    :sswitch_0
    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 32
    .restart local v0    # "maskMode":Lcom/airbnb/lottie/Mask$MaskMode;
    goto :goto_1

    .line 34
    .end local v0    # "maskMode":Lcom/airbnb/lottie/Mask$MaskMode;
    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 35
    .restart local v0    # "maskMode":Lcom/airbnb/lottie/Mask$MaskMode;
    goto :goto_1

    .line 37
    .end local v0    # "maskMode":Lcom/airbnb/lottie/Mask$MaskMode;
    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 38
    .restart local v0    # "maskMode":Lcom/airbnb/lottie/Mask$MaskMode;
    goto :goto_1

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x69 -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
