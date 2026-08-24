.class Lcom/airbnb/lottie/ShapeData$Factory;
.super Ljava/lang/Object;
.source "ShapeData.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ShapeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue$Factory",
        "<",
        "Lcom/airbnb/lottie/ShapeData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/airbnb/lottie/ShapeData$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/airbnb/lottie/ShapeData$Factory;

    invoke-direct {v0}, Lcom/airbnb/lottie/ShapeData$Factory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/ShapeData$Factory;->INSTANCE:Lcom/airbnb/lottie/ShapeData$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private static vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 8
    .param p0, "idx"    # I
    .param p1, "points"    # Lorg/json/JSONArray;

    .prologue
    .line 185
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt p0, v3, :cond_0

    .line 186
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". There are only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 187
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " points."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 191
    .local v0, "pointArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 192
    .local v1, "x":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "y":Ljava/lang/Object;
    new-instance v5, Landroid/graphics/PointF;

    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/Float;

    check-cast v1, Ljava/lang/Double;

    .line 194
    .end local v1    # "x":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_0
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/Float;

    check-cast v2, Ljava/lang/Double;

    .line 195
    .end local v2    # "y":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_1
    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v5

    .line 194
    .restart local v1    # "x":Ljava/lang/Object;
    .restart local v2    # "y":Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "x":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    .line 195
    :cond_2
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "y":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/ShapeData;
    .locals 25
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 108
    const/4 v15, 0x0

    .line 109
    .local v15, "pointsData":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 110
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "object":Ljava/lang/Object;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    .line 111
    .local v8, "firstObject":Ljava/lang/Object;
    instance-of v0, v8, Lorg/json/JSONObject;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, v8

    check-cast v20, Lorg/json/JSONObject;

    const-string v21, "v"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object v15, v8

    .line 112
    check-cast v15, Lorg/json/JSONObject;

    .line 118
    .end local v8    # "firstObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v15, :cond_2

    .line 119
    const/16 v20, 0x0

    .line 181
    :goto_1
    return-object v20

    .line 114
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, p1

    check-cast v20, Lorg/json/JSONObject;

    const-string v21, "v"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v15, p1

    .line 115
    check-cast v15, Lorg/json/JSONObject;

    goto :goto_0

    .line 122
    .end local p1    # "object":Ljava/lang/Object;
    :cond_2
    const-string v20, "v"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 123
    .local v14, "pointsArray":Lorg/json/JSONArray;
    const-string v20, "i"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 124
    .local v10, "inTangents":Lorg/json/JSONArray;
    const-string v20, "o"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 125
    .local v13, "outTangents":Lorg/json/JSONArray;
    const-string v20, "c"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 127
    .local v4, "closed":Z
    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    if-eqz v13, :cond_3

    .line 128
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 129
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 130
    :cond_3
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to process points array or tangents. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 132
    :cond_4
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-nez v20, :cond_5

    .line 133
    new-instance v20, Lcom/airbnb/lottie/ShapeData;

    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    const/16 v22, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Lcom/airbnb/lottie/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/ShapeData$1;)V

    goto/16 :goto_1

    .line 136
    :cond_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 137
    .local v12, "length":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v14}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v19

    .line 138
    .local v19, "vertex":Landroid/graphics/PointF;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 139
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 140
    move-object/from16 v11, v19

    .line 141
    .local v11, "initialPoint":Landroid/graphics/PointF;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v7, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/CubicCurveData;>;"
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2
    if-ge v9, v12, :cond_6

    .line 144
    invoke-static {v9, v14}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v19

    .line 145
    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    invoke-static {v0, v14}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v16

    .line 146
    .local v16, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    invoke-static {v0, v13}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 147
    .local v5, "cp1":Landroid/graphics/PointF;
    invoke-static {v9, v10}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 148
    .local v6, "cp2":Landroid/graphics/PointF;
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/airbnb/lottie/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v17

    .line 149
    .local v17, "shapeCp1":Landroid/graphics/PointF;
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/airbnb/lottie/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v18

    .line 151
    .local v18, "shapeCp2":Landroid/graphics/PointF;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 152
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 153
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 154
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 155
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 156
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 158
    new-instance v20, Lcom/airbnb/lottie/CubicCurveData;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/lottie/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 161
    .end local v5    # "cp1":Landroid/graphics/PointF;
    .end local v6    # "cp2":Landroid/graphics/PointF;
    .end local v16    # "previousVertex":Landroid/graphics/PointF;
    .end local v17    # "shapeCp1":Landroid/graphics/PointF;
    .end local v18    # "shapeCp2":Landroid/graphics/PointF;
    :cond_6
    if-eqz v4, :cond_8

    .line 162
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v14}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v19

    .line 163
    add-int/lit8 v20, v12, -0x1

    move/from16 v0, v20

    invoke-static {v0, v14}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v16

    .line 164
    .restart local v16    # "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v20, v12, -0x1

    move/from16 v0, v20

    invoke-static {v0, v13}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 165
    .restart local v5    # "cp1":Landroid/graphics/PointF;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v10}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 167
    .restart local v6    # "cp2":Landroid/graphics/PointF;
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/airbnb/lottie/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v17

    .line 168
    .restart local v17    # "shapeCp1":Landroid/graphics/PointF;
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/airbnb/lottie/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v18

    .line 170
    .restart local v18    # "shapeCp2":Landroid/graphics/PointF;
    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, p2, v20

    if-eqz v20, :cond_7

    .line 171
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 172
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 173
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 174
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 175
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 176
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 179
    :cond_7
    new-instance v20, Lcom/airbnb/lottie/CubicCurveData;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/lottie/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v5    # "cp1":Landroid/graphics/PointF;
    .end local v6    # "cp2":Landroid/graphics/PointF;
    .end local v16    # "previousVertex":Landroid/graphics/PointF;
    .end local v17    # "shapeCp1":Landroid/graphics/PointF;
    .end local v18    # "shapeCp2":Landroid/graphics/PointF;
    :cond_8
    new-instance v20, Lcom/airbnb/lottie/ShapeData;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v4, v7, v1}, Lcom/airbnb/lottie/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/ShapeData$1;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/ShapeData$Factory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/ShapeData;

    move-result-object v0

    return-object v0
.end method
