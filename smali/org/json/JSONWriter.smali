.class public Lorg/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0xc8


# instance fields
.field private comma:Z

.field protected mode:C

.field private final stack:[Lorg/json/JSONObject;

.field private top:I

.field protected writer:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "w"    # Ljava/lang/Appendable;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v1, p0, Lorg/json/JSONWriter;->comma:Z

    .line 97
    const/16 v0, 0x69

    iput-char v0, p0, Lorg/json/JSONWriter;->mode:C

    .line 98
    const/16 v0, 0xc8

    new-array v0, v0, [Lorg/json/JSONObject;

    iput-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    .line 99
    iput v1, p0, Lorg/json/JSONWriter;->top:I

    .line 100
    iput-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    .line 101
    return-void
.end method

.method private append(Ljava/lang/String;)Lorg/json/JSONWriter;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x6f

    const/16 v2, 0x61

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    iget-char v1, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v1, v3, :cond_1

    iget-char v1, p0, Lorg/json/JSONWriter;->mode:C

    if-ne v1, v2, :cond_4

    .line 115
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v1, :cond_2

    iget-char v1, p0, Lorg/json/JSONWriter;->mode:C

    if-ne v1, v2, :cond_2

    .line 116
    iget-object v1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v2, 0x2c

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 118
    :cond_2
    iget-object v1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    iget-char v1, p0, Lorg/json/JSONWriter;->mode:C

    if-ne v1, v3, :cond_3

    .line 123
    const/16 v1, 0x6b

    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    .line 125
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/json/JSONWriter;->comma:Z

    .line 126
    return-object p0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Value out of sequence."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private end(CC)Lorg/json/JSONWriter;
    .locals 3
    .param p1, "m"    # C
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    iget-char v1, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v1, p1, :cond_1

    .line 159
    new-instance v2, Lorg/json/JSONException;

    const/16 v1, 0x61

    if-ne p1, v1, :cond_0

    const-string v1, "Misplaced endArray."

    :goto_0
    invoke-direct {v2, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v1, "Misplaced endObject."

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->pop(C)V

    .line 165
    :try_start_0
    iget-object v1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/json/JSONWriter;->comma:Z

    .line 170
    return-object p0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pop(C)V
    .locals 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6b

    const/16 v1, 0x61

    .line 254
    iget v3, p0, Lorg/json/JSONWriter;->top:I

    if-gtz v3, :cond_0

    .line 255
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Nesting error."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_0
    iget-object v3, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v4, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    move v0, v1

    .line 258
    .local v0, "m":C
    :goto_0
    if-eq v0, p1, :cond_2

    .line 259
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Nesting error."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "m":C
    :cond_1
    move v0, v2

    .line 257
    goto :goto_0

    .line 261
    .restart local v0    # "m":C
    :cond_2
    iget v3, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/json/JSONWriter;->top:I

    .line 262
    iget v3, p0, Lorg/json/JSONWriter;->top:I

    if-nez v3, :cond_4

    const/16 v1, 0x64

    :cond_3
    :goto_1
    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    .line 267
    return-void

    .line 262
    :cond_4
    iget-object v3, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v4, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1
.end method

.method private push(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 275
    iget v0, p0, Lorg/json/JSONWriter;->top:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 276
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v1, p0, Lorg/json/JSONWriter;->top:I

    aput-object p1, v0, v1

    .line 279
    if-nez p1, :cond_1

    const/16 v0, 0x61

    :goto_0
    iput-char v0, p0, Lorg/json/JSONWriter;->mode:C

    .line 280
    iget v0, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/json/JSONWriter;->top:I

    .line 281
    return-void

    .line 279
    :cond_1
    const/16 v0, 0x6b

    goto :goto_0
.end method


# virtual methods
.method public array()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    .line 143
    const-string v0, "["

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    .line 145
    return-object p0

    .line 147
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 180
    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 190
    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json/JSONWriter;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Null key."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    iget-char v1, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_2

    .line 207
    :try_start_0
    iget-object v1, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v2, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    iget-boolean v1, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v2, 0x2c

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 211
    :cond_1
    iget-object v1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 212
    iget-object v1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v2, 0x3a

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/json/JSONWriter;->comma:Z

    .line 214
    const/16 v1, 0x6f

    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-object p0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Misplaced key."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public object()Lorg/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6f

    .line 234
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 235
    iput-char v2, p0, Lorg/json/JSONWriter;->mode:C

    .line 237
    :cond_0
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    .line 238
    :cond_1
    const-string v0, "{"

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    .line 241
    return-object p0

    .line 243
    :cond_2
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value(D)Lorg/json/JSONWriter;
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Lorg/json/JSONWriter;
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lorg/json/JSONWriter;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {p1}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lorg/json/JSONWriter;
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 292
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
