.class Lcom/airbnb/lottie/ShapeStroke$Factory;
.super Ljava/lang/Object;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ShapeStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapeStroke;
    .locals 16
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 81
    const-string v1, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/AnimatableFloatValue;>;"
    const-string v1, "c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableColorValue;

    move-result-object v5

    .line 85
    .local v5, "color":Lcom/airbnb/lottie/AnimatableColorValue;
    const-string v1, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v7

    .line 87
    .local v7, "width":Lcom/airbnb/lottie/AnimatableFloatValue;
    const-string v1, "o"

    .line 88
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v6

    .line 89
    .local v6, "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    invoke-static {}, Lcom/airbnb/lottie/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    move-result-object v1

    const-string v10, "lc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v8, v1, v10

    .line 90
    .local v8, "capType":Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    invoke-static {}, Lcom/airbnb/lottie/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    move-result-object v1

    const-string v10, "lj"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v1, v10

    .line 91
    .local v9, "joinType":Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    const/4 v3, 0x0

    .line 93
    .local v3, "offset":Lcom/airbnb/lottie/AnimatableFloatValue;
    const-string v1, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    const-string v1, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 95
    .local v12, "dashesJson":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v13, v1, :cond_3

    .line 96
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 97
    .local v11, "dashJson":Lorg/json/JSONObject;
    const-string v1, "n"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 98
    .local v14, "n":Ljava/lang/String;
    const-string v1, "o"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    const-string v1, "v"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 100
    .local v15, "value":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v3

    .line 95
    .end local v15    # "value":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "d"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "g"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :cond_2
    const-string v1, "v"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 103
    .restart local v15    # "value":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v11    # "dashJson":Lorg/json/JSONObject;
    .end local v14    # "n":Ljava/lang/String;
    .end local v15    # "value":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    .line 108
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v12    # "dashesJson":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :cond_4
    new-instance v1, Lcom/airbnb/lottie/ShapeStroke;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;Lcom/airbnb/lottie/ShapeStroke$1;)V

    return-object v1
.end method
