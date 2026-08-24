.class public Lcom/airbnb/lottie/LottieComposition$Factory;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method private static addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/Layer;)V
    .locals 2
    .param p2, "layer"    # Lcom/airbnb/lottie/Layer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Layer;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/Layer;",
            ">;",
            "Lcom/airbnb/lottie/Layer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Layer;>;"
    .local p1, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/Layer;>;"
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 368
    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {p0, v1, p2}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    move-result-object v2

    return-object v2

    .line 174
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromFileSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    return-object v2

    .line 198
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .prologue
    .line 187
    new-instance v0, Lcom/airbnb/lottie/FileCompositionLoader;

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/lottie/FileCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    .line 189
    .local v0, "loader":Lcom/airbnb/lottie/FileCompositionLoader;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/FileCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-object v0
.end method

.method static fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 220
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 221
    .local v4, "size":I
    new-array v0, v4, [B

    .line 223
    .local v0, "buffer":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 224
    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 225
    .local v2, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 234
    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    .end local v0    # "buffer":[B
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "size":I
    :goto_0
    return-object v5

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "LOTTIE"

    const-string v6, "Failed to load composition."

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to find file."

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 230
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v5, "LOTTIE"

    const-string v6, "Failed to load composition."

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to load JSON."

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5
.end method

.method public static fromJson(Landroid/content/res/Resources;Lorg/json/JSONObject;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .prologue
    .line 210
    new-instance v0, Lcom/airbnb/lottie/JsonCompositionLoader;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/JsonCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    .line 211
    .local v0, "loader":Lcom/airbnb/lottie/JsonCompositionLoader;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/JsonCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    return-object v0
.end method

.method static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    .locals 26
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 241
    const/4 v5, 0x0

    .line 242
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v11, v15, Landroid/util/DisplayMetrics;->density:F

    .line 243
    .local v11, "scale":F
    const-string v15, "w"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    .line 244
    .local v22, "width":I
    const-string v15, "h"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 246
    .local v17, "height":I
    const/4 v15, -0x1

    move/from16 v0, v22

    if-eq v0, v15, :cond_0

    const/4 v15, -0x1

    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    .line 247
    move/from16 v0, v22

    int-to-float v15, v0

    mul-float/2addr v15, v11

    float-to-int v0, v15

    move/from16 v19, v0

    .line 248
    .local v19, "scaledWidth":I
    move/from16 v0, v17

    int-to-float v15, v0

    mul-float/2addr v15, v11

    float-to-int v0, v15

    move/from16 v18, v0

    .line 249
    .local v18, "scaledHeight":I
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "bounds":Landroid/graphics/Rect;
    const/4 v15, 0x0

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v5, v15, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 252
    .end local v18    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    :cond_0
    const-string v15, "ip"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 253
    .local v6, "startFrame":J
    const-string v15, "op"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 254
    .local v8, "endFrame":J
    const-string v15, "fr"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v10, v0

    .line 255
    .local v10, "frameRate":F
    const-string v15, "v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 256
    .local v20, "version":Ljava/lang/String;
    const-string v15, "[.]"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 257
    .local v21, "versions":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 258
    .local v12, "major":I
    const/4 v15, 0x1

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 259
    .local v13, "minor":I
    const/4 v15, 0x2

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 260
    .local v14, "patch":I
    new-instance v4, Lcom/airbnb/lottie/LottieComposition;

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v15}, Lcom/airbnb/lottie/LottieComposition;-><init>(Landroid/graphics/Rect;JJFFIIILcom/airbnb/lottie/LottieComposition$1;)V

    .line 262
    .local v4, "composition":Lcom/airbnb/lottie/LottieComposition;
    const-string v15, "assets"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 263
    .local v16, "assetsJson":Lorg/json/JSONArray;
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 264
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 265
    const-string v15, "fonts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseFonts(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    .line 266
    const-string v15, "chars"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-static {v15, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseChars(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 267
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    .line 268
    return-object v4
.end method

.method private static parseChars(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5
    .param p0, "charsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 353
    if-nez p0, :cond_1

    .line 363
    :cond_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 358
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 360
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/airbnb/lottie/FontCharacter$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/FontCharacter;

    move-result-object v0

    .line 361
    .local v0, "character":Lcom/airbnb/lottie/FontCharacter;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$600(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/FontCharacter;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static parseFonts(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p0, "fonts"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 338
    if-nez p0, :cond_1

    .line 350
    :cond_0
    return-void

    .line 341
    :cond_1
    const-string v4, "list"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 342
    .local v1, "fontsList":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 346
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 347
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/lottie/Font$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/Font;

    move-result-object v0

    .line 348
    .local v0, "font":Lcom/airbnb/lottie/Font;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$500(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/airbnb/lottie/Font;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p0, "assetsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 323
    if-nez p0, :cond_1

    .line 335
    :cond_0
    return-void

    .line 326
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 327
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 328
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 329
    .local v0, "assetJson":Lorg/json/JSONObject;
    const-string v4, "p"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 327
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_2
    invoke-static {v0}, Lcom/airbnb/lottie/LottieImageAsset$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v2

    .line 333
    .local v2, "image":Lcom/airbnb/lottie/LottieImageAsset;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$400(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 272
    const-string v5, "layers"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 277
    .local v2, "jsonLayers":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 281
    .local v4, "length":I
    const/4 v1, 0x0

    .line 282
    .local v1, "imageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 283
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/airbnb/lottie/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;

    move-result-object v3

    .line 284
    .local v3, "layer":Lcom/airbnb/lottie/Layer;
    invoke-virtual {v3}, Lcom/airbnb/lottie/Layer;->getLayerType()Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/Layer$LayerType;->Image:Lcom/airbnb/lottie/Layer$LayerType;

    if-ne v5, v6, :cond_2

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 287
    :cond_2
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$100(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$200(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/Layer;)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    .end local v3    # "layer":Lcom/airbnb/lottie/Layer;
    :cond_3
    const/4 v5, 0x4

    if-le v1, v5, :cond_0

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "You have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " images. Lottie should primarily be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to shape layers."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 12
    .param p0, "assetsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 299
    if-nez p0, :cond_1

    .line 319
    :cond_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 303
    .local v8, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 304
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 305
    .local v0, "assetJson":Lorg/json/JSONObject;
    const-string v9, "layers"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 306
    .local v7, "layersJson":Lorg/json/JSONArray;
    if-nez v7, :cond_2

    .line 303
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    .local v6, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Layer;>;"
    new-instance v5, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v5}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 311
    .local v5, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/Layer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 312
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/airbnb/lottie/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;

    move-result-object v4

    .line 313
    .local v4, "layer":Lcom/airbnb/lottie/Layer;
    invoke-virtual {v4}, Lcom/airbnb/lottie/Layer;->getId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 314
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 316
    .end local v4    # "layer":Lcom/airbnb/lottie/Layer;
    :cond_3
    const-string v9, "id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "id":Ljava/lang/String;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$300(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
