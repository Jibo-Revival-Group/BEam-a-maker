.class Lcom/airbnb/lottie/GradientStroke$Factory;
.super Ljava/lang/Object;
.source "GradientStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/GradientStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/GradientStroke;
    .locals 25
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 97
    const-string v2, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "name":Ljava/lang/String;
    const-string v2, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 99
    .local v19, "jsonColor":Lorg/json/JSONObject;
    if-eqz v19, :cond_0

    const-string v2, "k"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const-string v2, "k"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 102
    :cond_0
    const/4 v5, 0x0

    .line 103
    .local v5, "color":Lcom/airbnb/lottie/AnimatableGradientColorValue;
    if-eqz v19, :cond_1

    .line 104
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatableGradientColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableGradientColorValue;

    move-result-object v5

    .line 107
    :cond_1
    const-string v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 108
    .local v21, "jsonOpacity":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 109
    .local v6, "opacity":Lcom/airbnb/lottie/AnimatableIntegerValue;
    if-eqz v21, :cond_2

    .line 110
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v6

    .line 113
    :cond_2
    const-string v2, "t"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 114
    .local v17, "gradientTypeInt":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    sget-object v4, Lcom/airbnb/lottie/GradientType;->Linear:Lcom/airbnb/lottie/GradientType;

    .line 116
    .local v4, "gradientType":Lcom/airbnb/lottie/GradientType;
    :goto_0
    const-string v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 117
    .local v22, "jsonStartPoint":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 118
    .local v7, "startPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    if-eqz v22, :cond_3

    .line 119
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v7

    .line 122
    :cond_3
    const-string v2, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 123
    .local v20, "jsonEndPoint":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 124
    .local v8, "endPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    if-eqz v20, :cond_4

    .line 125
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v8

    .line 127
    :cond_4
    const-string v2, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v9

    .line 131
    .local v9, "width":Lcom/airbnb/lottie/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    move-result-object v2

    const-string v14, "lc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v10, v2, v14

    .line 132
    .local v10, "capType":Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    invoke-static {}, Lcom/airbnb/lottie/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    move-result-object v2

    const-string v14, "lj"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v11, v2, v14

    .line 134
    .local v11, "joinType":Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    const/4 v13, 0x0

    .line 135
    .local v13, "offset":Lcom/airbnb/lottie/AnimatableFloatValue;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v12, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/AnimatableFloatValue;>;"
    const-string v2, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 137
    const-string v2, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 138
    .local v16, "dashesJson":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 139
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 140
    .local v15, "dashJson":Lorg/json/JSONObject;
    const-string v2, "n"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 141
    .local v23, "n":Ljava/lang/String;
    const-string v2, "o"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 142
    const-string v2, "v"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 143
    .local v24, "value":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v13

    .line 138
    .end local v24    # "value":Lorg/json/JSONObject;
    :cond_5
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 114
    .end local v4    # "gradientType":Lcom/airbnb/lottie/GradientType;
    .end local v7    # "startPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    .end local v8    # "endPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    .end local v9    # "width":Lcom/airbnb/lottie/AnimatableFloatValue;
    .end local v10    # "capType":Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .end local v11    # "joinType":Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .end local v12    # "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/AnimatableFloatValue;>;"
    .end local v13    # "offset":Lcom/airbnb/lottie/AnimatableFloatValue;
    .end local v15    # "dashJson":Lorg/json/JSONObject;
    .end local v16    # "dashesJson":Lorg/json/JSONArray;
    .end local v18    # "i":I
    .end local v20    # "jsonEndPoint":Lorg/json/JSONObject;
    .end local v22    # "jsonStartPoint":Lorg/json/JSONObject;
    .end local v23    # "n":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/airbnb/lottie/GradientType;->Radial:Lcom/airbnb/lottie/GradientType;

    goto/16 :goto_0

    .line 144
    .restart local v4    # "gradientType":Lcom/airbnb/lottie/GradientType;
    .restart local v7    # "startPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    .restart local v8    # "endPoint":Lcom/airbnb/lottie/AnimatablePointValue;
    .restart local v9    # "width":Lcom/airbnb/lottie/AnimatableFloatValue;
    .restart local v10    # "capType":Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .restart local v11    # "joinType":Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .restart local v12    # "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/AnimatableFloatValue;>;"
    .restart local v13    # "offset":Lcom/airbnb/lottie/AnimatableFloatValue;
    .restart local v15    # "dashJson":Lorg/json/JSONObject;
    .restart local v16    # "dashesJson":Lorg/json/JSONArray;
    .restart local v18    # "i":I
    .restart local v20    # "jsonEndPoint":Lorg/json/JSONObject;
    .restart local v22    # "jsonStartPoint":Lorg/json/JSONObject;
    .restart local v23    # "n":Ljava/lang/String;
    :cond_7
    const-string v2, "d"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "g"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    :cond_8
    const-string v2, "v"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 146
    .restart local v24    # "value":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    .end local v15    # "dashJson":Lorg/json/JSONObject;
    .end local v23    # "n":Ljava/lang/String;
    .end local v24    # "value":Lorg/json/JSONObject;
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_a

    .line 151
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v16    # "dashesJson":Lorg/json/JSONArray;
    .end local v18    # "i":I
    :cond_a
    new-instance v2, Lcom/airbnb/lottie/GradientStroke;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/airbnb/lottie/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/GradientType;Lcom/airbnb/lottie/AnimatableGradientColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/GradientStroke$1;)V

    return-object v2
.end method
