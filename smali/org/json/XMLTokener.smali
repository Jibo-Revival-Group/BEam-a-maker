.class public Lorg/json/XMLTokener;
.super Lorg/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "amp"

    sget-object v2, Lorg/json/XML;->AMP:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "apos"

    sget-object v2, Lorg/json/XML;->APOS:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "gt"

    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "lt"

    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "quot"

    sget-object v2, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method static unescapeEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "e"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    const-string v2, ""

    .line 171
    :goto_0
    return-object v2

    .line 155
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_3

    .line 157
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_2

    .line 159
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "cp":I
    :goto_1
    new-instance v2, Ljava/lang/String;

    new-array v3, v4, [I

    aput v0, v3, v5

    invoke-direct {v2, v3, v5, v4}, Ljava/lang/String;-><init>([III)V

    goto :goto_0

    .line 162
    .end local v0    # "cp":I
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "cp":I
    goto :goto_1

    .line 166
    .end local v0    # "cp":I
    :cond_3
    sget-object v2, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 167
    .local v1, "knownEntity":Ljava/lang/Character;
    if-nez v1, :cond_4

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 171
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->more()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 69
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x3

    .line 71
    .local v1, "i":I
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 77
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_1
    const-string v3, "Unclosed CDATA"

    invoke-virtual {p0, v3}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3
.end method

.method public nextContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3c

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 95
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    if-nez v0, :cond_1

    .line 97
    const/4 v2, 0x0

    .line 109
    :goto_0
    return-object v2

    .line 99
    :cond_1
    if-ne v0, v3, :cond_2

    .line 100
    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    goto :goto_0

    .line 102
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_1
    if-nez v0, :cond_3

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_3
    if-ne v0, v3, :cond_4

    .line 108
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 111
    :cond_4
    const/16 v2, 0x26

    if-ne v0, v2, :cond_5

    .line 112
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    :goto_2
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    goto :goto_1

    .line 114
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .locals 5
    .param p1, "ampersand"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 132
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_1

    .line 133
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :cond_1
    const/16 v3, 0x3b

    if-ne v0, v3, :cond_2

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "string":Ljava/lang/String;
    invoke-static {v2}, Lorg/json/XMLTokener;->unescapeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 137
    .end local v2    # "string":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing \';\' in XML entity: &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3
.end method

.method public nextMeta()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 189
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    sparse-switch v0, :sswitch_data_0

    .line 219
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 220
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 234
    :goto_1
    return-object v2

    .line 192
    :sswitch_0
    const-string v2, "Misshaped meta tag"

    invoke-virtual {p0, v2}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 194
    :sswitch_1
    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    goto :goto_1

    .line 196
    :sswitch_2
    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    goto :goto_1

    .line 198
    :sswitch_3
    sget-object v2, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    goto :goto_1

    .line 200
    :sswitch_4
    sget-object v2, Lorg/json/XML;->EQ:Ljava/lang/Character;

    goto :goto_1

    .line 202
    :sswitch_5
    sget-object v2, Lorg/json/XML;->BANG:Ljava/lang/Character;

    goto :goto_1

    .line 204
    :sswitch_6
    sget-object v2, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    goto :goto_1

    .line 207
    :sswitch_7
    move v1, v0

    .line 209
    .local v1, "q":C
    :cond_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 210
    if-nez v0, :cond_2

    .line 211
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 213
    :cond_2
    if-ne v0, v1, :cond_1

    .line 214
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 223
    .end local v1    # "q":C
    :cond_3
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 233
    :sswitch_8
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 234
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 223
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x3f -> :sswitch_8
    .end sparse-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 255
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    sparse-switch v0, :sswitch_data_0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 300
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    .line 258
    :sswitch_0
    const-string v3, "Misshaped element"

    invoke-virtual {p0, v3}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 260
    :sswitch_1
    const-string v3, "Misplaced \'<\'"

    invoke-virtual {p0, v3}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 262
    :sswitch_2
    sget-object v3, Lorg/json/XML;->GT:Ljava/lang/Character;

    goto :goto_1

    .line 264
    :sswitch_3
    sget-object v3, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    goto :goto_1

    .line 266
    :sswitch_4
    sget-object v3, Lorg/json/XML;->EQ:Ljava/lang/Character;

    goto :goto_1

    .line 268
    :sswitch_5
    sget-object v3, Lorg/json/XML;->BANG:Ljava/lang/Character;

    goto :goto_1

    .line 270
    :sswitch_6
    sget-object v3, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    goto :goto_1

    .line 276
    :sswitch_7
    move v1, v0

    .line 277
    .local v1, "q":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 280
    if-nez v0, :cond_1

    .line 281
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 283
    :cond_1
    if-ne v0, v1, :cond_2

    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 286
    :cond_2
    const/16 v3, 0x26

    if-ne v0, v3, :cond_3

    .line 287
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 289
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 303
    .end local v1    # "q":C
    :cond_4
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 305
    :sswitch_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 313
    :sswitch_9
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 318
    :sswitch_a
    const-string v3, "Bad character in a name"

    invoke-virtual {p0, v3}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 303
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x27 -> :sswitch_a
        0x2f -> :sswitch_9
        0x3c -> :sswitch_a
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x5b -> :sswitch_9
        0x5d -> :sswitch_9
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)Z
    .locals 10
    .param p1, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 336
    const/4 v6, 0x0

    .line 337
    .local v6, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 338
    .local v5, "length":I
    new-array v2, v5, [C

    .line 345
    .local v2, "circle":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 346
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 347
    .local v1, "c":C
    if-nez v1, :cond_0

    .line 382
    .end local v1    # "c":C
    :goto_1
    return v7

    .line 350
    .restart local v1    # "c":C
    :cond_0
    aput-char v1, v2, v3

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .local v0, "b":Z
    .local v4, "j":I
    :cond_1
    aput-char v1, v2, v6

    .line 389
    add-int/lit8 v6, v6, 0x1

    .line 390
    if-lt v6, v5, :cond_2

    .line 391
    sub-int/2addr v6, v5

    .line 356
    .end local v0    # "b":Z
    .end local v1    # "c":C
    .end local v4    # "j":I
    :cond_2
    move v4, v6

    .line 357
    .restart local v4    # "j":I
    const/4 v0, 0x1

    .line 361
    .restart local v0    # "b":Z
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    .line 362
    aget-char v8, v2, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_4

    .line 363
    const/4 v0, 0x0

    .line 374
    :cond_3
    if-eqz v0, :cond_6

    .line 375
    const/4 v7, 0x1

    goto :goto_1

    .line 366
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 367
    if-lt v4, v5, :cond_5

    .line 368
    sub-int/2addr v4, v5

    .line 361
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 380
    :cond_6
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 381
    .restart local v1    # "c":C
    if-nez v1, :cond_1

    goto :goto_1
.end method
