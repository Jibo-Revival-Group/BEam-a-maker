.class public Lorg/json/JSONML;
.super Ljava/lang/Object;
.source "JSONML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;
    .locals 12
    .param p0, "x"    # Lorg/json/XMLTokener;
    .param p1, "arrayForm"    # Z
    .param p2, "ja"    # Lorg/json/JSONArray;
    .param p3, "keepStrings"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5b

    const/16 v10, 0x2d

    .line 56
    const/4 v2, 0x0

    .line 58
    .local v2, "closeTag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 59
    .local v4, "newja":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 61
    .local v5, "newjo":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 70
    .local v6, "tagName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->more()Z

    move-result v8

    if-nez v8, :cond_1

    .line 71
    const-string v8, "Bad XML"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 73
    :cond_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v7

    .line 74
    .local v7, "token":Ljava/lang/Object;
    sget-object v8, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v7, v8, :cond_22

    .line 75
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 76
    instance-of v8, v7, Ljava/lang/Character;

    if-eqz v8, :cond_e

    .line 77
    sget-object v8, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v7, v8, :cond_3

    .line 81
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 82
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_2

    .line 83
    new-instance v8, Lorg/json/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected a closing name instead of \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    :cond_2
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v8, v9, :cond_1b

    .line 88
    const-string v8, "Misshaped close tag"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 91
    :cond_3
    sget-object v8, Lorg/json/XML;->BANG:Ljava/lang/Character;

    if-ne v7, v8, :cond_c

    .line 95
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 96
    .local v1, "c":C
    if-ne v1, v10, :cond_5

    .line 97
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v8

    if-ne v8, v10, :cond_4

    .line 98
    const-string v8, "-->"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    goto :goto_0

    .line 102
    :cond_5
    if-ne v1, v11, :cond_7

    .line 103
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 104
    const-string v8, "CDATA"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v8

    if-ne v8, v11, :cond_6

    .line 105
    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 109
    :cond_6
    const-string v8, "Expected \'CDATA[\'"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 112
    :cond_7
    const/4 v3, 0x1

    .line 114
    .local v3, "i":I
    :cond_8
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v7

    .line 115
    if-nez v7, :cond_9

    .line 116
    const-string v8, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 117
    :cond_9
    sget-object v8, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v7, v8, :cond_b

    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 122
    :cond_a
    :goto_1
    if-gtz v3, :cond_8

    goto/16 :goto_0

    .line 119
    :cond_b
    sget-object v8, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v7, v8, :cond_a

    .line 120
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 124
    .end local v1    # "c":C
    .end local v3    # "i":I
    :cond_c
    sget-object v8, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v7, v8, :cond_d

    .line 128
    const-string v8, "?>"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 130
    :cond_d
    const-string v8, "Misshaped tag"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 136
    :cond_e
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_f

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad tagName \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    :cond_f
    move-object v6, v7

    .line 139
    check-cast v6, Ljava/lang/String;

    .line 140
    new-instance v4, Lorg/json/JSONArray;

    .end local v4    # "newja":Lorg/json/JSONArray;
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 141
    .restart local v4    # "newja":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "newjo":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .restart local v5    # "newjo":Lorg/json/JSONObject;
    if-eqz p1, :cond_11

    .line 143
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 144
    if-eqz p2, :cond_10

    .line 145
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    :cond_10
    :goto_2
    const/4 v7, 0x0

    .line 155
    .end local v7    # "token":Ljava/lang/Object;
    :goto_3
    if-nez v7, :cond_25

    .line 156
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "token":Ljava/lang/Object;
    move-object v0, v7

    .line 158
    .end local v7    # "token":Ljava/lang/Object;
    :goto_4
    if-nez v0, :cond_12

    .line 159
    const-string v8, "Misshaped tag"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 148
    .restart local v7    # "token":Ljava/lang/Object;
    :cond_11
    const-string v8, "tagName"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    if-eqz p2, :cond_10

    .line 150
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 161
    .end local v7    # "token":Ljava/lang/Object;
    :cond_12
    instance-of v8, v0, Ljava/lang/String;

    if-nez v8, :cond_14

    .line 183
    if-eqz p1, :cond_13

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_13

    .line 184
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    :cond_13
    sget-object v8, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v8, :cond_1d

    .line 190
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v8, v9, :cond_1a

    .line 191
    const-string v8, "Misshaped tag"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 167
    :cond_14
    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "attribute":Ljava/lang/String;
    if-nez p1, :cond_16

    const-string v8, "tagName"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string v8, "childNode"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 169
    :cond_15
    const-string v8, "Reserved attribute."

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 171
    :cond_16
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 172
    .restart local v7    # "token":Ljava/lang/Object;
    sget-object v8, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v7, v8, :cond_19

    .line 173
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 174
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_17

    .line 175
    const-string v8, "Missing value"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 177
    :cond_17
    if-eqz p3, :cond_18

    check-cast v7, Ljava/lang/String;

    .end local v7    # "token":Ljava/lang/Object;
    :goto_5
    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const/4 v7, 0x0

    .restart local v7    # "token":Ljava/lang/Object;
    goto :goto_3

    .line 177
    :cond_18
    check-cast v7, Ljava/lang/String;

    .end local v7    # "token":Ljava/lang/Object;
    invoke-static {v7}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_5

    .line 180
    .restart local v7    # "token":Ljava/lang/Object;
    :cond_19
    const-string v8, ""

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 193
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/Object;
    :cond_1a
    if-nez p2, :cond_0

    .line 194
    if-eqz p1, :cond_1c

    move-object v7, v4

    .line 220
    :cond_1b
    :goto_6
    return-object v7

    :cond_1c
    move-object v7, v5

    .line 197
    goto :goto_6

    .line 203
    :cond_1d
    sget-object v8, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v8, :cond_1e

    .line 204
    const-string v8, "Misshaped tag"

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 206
    :cond_1e
    invoke-static {p0, p1, v4, p3}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "closeTag":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 207
    .restart local v2    # "closeTag":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mismatched \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' and \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v8

    throw v8

    .line 212
    :cond_1f
    const/4 v6, 0x0

    .line 213
    if-nez p1, :cond_20

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_20

    .line 214
    const-string v8, "childNodes"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_20
    if-nez p2, :cond_0

    .line 217
    if-eqz p1, :cond_21

    move-object v7, v4

    .line 218
    goto :goto_6

    :cond_21
    move-object v7, v5

    .line 220
    goto :goto_6

    .line 226
    .restart local v7    # "token":Ljava/lang/Object;
    :cond_22
    if-eqz p2, :cond_0

    .line 227
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_23

    if-eqz p3, :cond_24

    check-cast v7, Ljava/lang/String;

    .line 228
    .end local v7    # "token":Ljava/lang/Object;
    invoke-static {v7}, Lorg/json/XML;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    :cond_23
    :goto_7
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 228
    .restart local v7    # "token":Ljava/lang/Object;
    :cond_24
    check-cast v7, Ljava/lang/String;

    .end local v7    # "token":Ljava/lang/Object;
    invoke-static {v7}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_7

    :cond_25
    move-object v0, v7

    goto/16 :goto_4
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;Z)Lorg/json/JSONArray;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "keepStrings"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Lorg/json/XMLTokener;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "x"    # Lorg/json/XMLTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Lorg/json/XMLTokener;Z)Lorg/json/JSONArray;
    .locals 2
    .param p0, "x"    # Lorg/json/XMLTokener;
    .param p1, "keepStrings"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 328
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "keepStrings"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Lorg/json/XMLTokener;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "x"    # Lorg/json/XMLTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 366
    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Lorg/json/XMLTokener;Z)Lorg/json/JSONObject;
    .locals 2
    .param p0, "x"    # Lorg/json/XMLTokener;
    .param p1, "keepStrings"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toString(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 15
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3c

    const/16 v13, 0x2f

    const/16 v12, 0x22

    const/16 v11, 0x3e

    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "tagName":Ljava/lang/String;
    invoke-static {v7}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 408
    invoke-static {v7}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 409
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    .line 413
    .local v5, "object":Ljava/lang/Object;
    instance-of v9, v5, Lorg/json/JSONObject;

    if-eqz v9, :cond_1

    .line 414
    const/4 v1, 0x2

    .local v1, "i":I
    move-object v2, v5

    .line 415
    check-cast v2, Lorg/json/JSONObject;

    .line 419
    .local v2, "jo":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 420
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 421
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 422
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 423
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 424
    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    invoke-static {v3}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const/16 v10, 0x3d

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 433
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "i":I
    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    .line 438
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 439
    .local v4, "length":I
    if-lt v1, v4, :cond_3

    .line 440
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 443
    :cond_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :cond_4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 446
    add-int/lit8 v1, v1, 0x1

    .line 447
    if-eqz v5, :cond_5

    .line 448
    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 449
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_5
    :goto_2
    if-lt v1, v4, :cond_4

    .line 459
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 450
    :cond_6
    instance-of v9, v5, Lorg/json/JSONObject;

    if-eqz v9, :cond_7

    move-object v9, v5

    .line 451
    check-cast v9, Lorg/json/JSONObject;

    invoke-static {v9}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 452
    :cond_7
    instance-of v9, v5, Lorg/json/JSONArray;

    if-eqz v9, :cond_8

    move-object v9, v5

    .line 453
    check-cast v9, Lorg/json/JSONArray;

    invoke-static {v9}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 455
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static toString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 15
    .param p0, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3c

    const/16 v13, 0x2f

    const/16 v12, 0x22

    const/16 v11, 0x3e

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v9, "tagName"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, "tagName":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 489
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 542
    :goto_0
    return-object v9

    .line 491
    :cond_0
    invoke-static {v7}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 492
    invoke-static {v7}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 493
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p0}, Lorg/json/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 499
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 500
    .local v3, "key":Ljava/lang/String;
    const-string v10, "tagName"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "childNodes"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 501
    invoke-static {v3}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 502
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 503
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 504
    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {v3}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const/16 v10, 0x3d

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 516
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2
    const-string v9, "childNodes"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 517
    .local v2, "ja":Lorg/json/JSONArray;
    if-nez v2, :cond_3

    .line 518
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 521
    :cond_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 523
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_8

    .line 524
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 525
    .local v5, "object":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 526
    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 527
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .end local v5    # "object":Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 528
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v9, v5, Lorg/json/JSONObject;

    if-eqz v9, :cond_6

    .line 529
    check-cast v5, Lorg/json/JSONObject;

    .end local v5    # "object":Ljava/lang/Object;
    invoke-static {v5}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 530
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v9, v5, Lorg/json/JSONArray;

    if-eqz v9, :cond_7

    .line 531
    check-cast v5, Lorg/json/JSONArray;

    .end local v5    # "object":Ljava/lang/Object;
    invoke-static {v5}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 533
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 537
    .end local v5    # "object":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
