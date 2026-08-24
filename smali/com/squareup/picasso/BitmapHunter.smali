.class Lcom/squareup/picasso/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;

.field private static final ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

.field private static final NAME_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field action:Lcom/squareup/picasso/Action;

.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final data:Lcom/squareup/picasso/Request;

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifOrientation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field final memoryPolicy:I

.field networkPolicy:I

.field final picasso:Lcom/squareup/picasso/Picasso;

.field priority:Lcom/squareup/picasso/Picasso$Priority;

.field final requestHandler:Lcom/squareup/picasso/RequestHandler;

.field result:Landroid/graphics/Bitmap;

.field retryCount:I

.field final sequence:I

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$1;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$2;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$2;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V
    .locals 1
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "dispatcher"    # Lcom/squareup/picasso/Dispatcher;
    .param p3, "cache"    # Lcom/squareup/picasso/Cache;
    .param p4, "stats"    # Lcom/squareup/picasso/Stats;
    .param p5, "action"    # Lcom/squareup/picasso/Action;
    .param p6, "requestHandler"    # Lcom/squareup/picasso/RequestHandler;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->sequence:I

    .line 106
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 107
    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 108
    iput-object p3, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    .line 109
    iput-object p4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 110
    iput-object p5, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 111
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 112
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 113
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 114
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getMemoryPolicy()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    .line 115
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getNetworkPolicy()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 116
    iput-object p6, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 117
    invoke-virtual {p6}, Lcom/squareup/picasso/RequestHandler;->getRetryCount()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 118
    return-void
.end method

.method static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p0, "transformations":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Transformation;>;"
    const/4 v7, 0x0

    .line 441
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 442
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/picasso/Transformation;

    .line 445
    .local v6, "transformation":Lcom/squareup/picasso/Transformation;
    :try_start_0
    invoke-interface {v6, p1}, Lcom/squareup/picasso/Transformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 456
    .local v4, "newResult":Landroid/graphics/Bitmap;
    if-nez v4, :cond_2

    .line 457
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transformation "

    .line 458
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 459
    invoke-interface {v6}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " returned null after "

    .line 460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 461
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " previous transformation(s).\n\nTransformation list:\n"

    .line 462
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 463
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/picasso/Transformation;

    .line 464
    .local v5, "t":Lcom/squareup/picasso/Transformation;
    invoke-interface {v5}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 446
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "newResult":Landroid/graphics/Bitmap;
    .end local v5    # "t":Lcom/squareup/picasso/Transformation;
    :catch_0
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v8, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/BitmapHunter$3;

    invoke-direct {v9, v6, v2}, Lcom/squareup/picasso/BitmapHunter$3;-><init>(Lcom/squareup/picasso/Transformation;Ljava/lang/RuntimeException;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 499
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "transformation":Lcom/squareup/picasso/Transformation;
    .end local p1    # "result":Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    return-object p1

    .line 466
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "newResult":Landroid/graphics/Bitmap;
    .restart local v6    # "transformation":Lcom/squareup/picasso/Transformation;
    .restart local p1    # "result":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v8, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/BitmapHunter$4;

    invoke-direct {v9, v0}, Lcom/squareup/picasso/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 471
    goto :goto_2

    .line 474
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    if-ne v4, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 475
    sget-object v8, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/BitmapHunter$5;

    invoke-direct {v9, v6}, Lcom/squareup/picasso/BitmapHunter$5;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 482
    goto :goto_2

    .line 486
    :cond_3
    if-eq v4, p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 487
    sget-object v8, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/BitmapHunter$6;

    invoke-direct {v9, v6}, Lcom/squareup/picasso/BitmapHunter$6;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 494
    goto :goto_2

    .line 497
    :cond_4
    move-object p1, v4

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 322
    sget-object v5, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 324
    .local v5, "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    iget-object v9, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v7

    .line 325
    .local v2, "hasMultiple":Z
    :goto_0
    iget-object v9, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-nez v9, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    move v1, v7

    .line 328
    .local v1, "hasAny":Z
    :goto_1
    if-nez v1, :cond_3

    move-object v6, v5

    .line 346
    .end local v5    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    .local v6, "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    :goto_2
    return-object v6

    .end local v1    # "hasAny":Z
    .end local v2    # "hasMultiple":Z
    .end local v6    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    .restart local v5    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    :cond_1
    move v2, v8

    .line 324
    goto :goto_0

    .restart local v2    # "hasMultiple":Z
    :cond_2
    move v1, v8

    .line 325
    goto :goto_1

    .line 332
    .restart local v1    # "hasAny":Z
    :cond_3
    iget-object v7, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-eqz v7, :cond_4

    .line 333
    iget-object v7, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    invoke-virtual {v7}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v5

    .line 336
    :cond_4
    if-eqz v2, :cond_6

    .line 338
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_3
    if-ge v3, v4, :cond_6

    .line 339
    iget-object v7, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/picasso/Action;

    invoke-virtual {v7}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 340
    .local v0, "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v7

    invoke-virtual {v5}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v8

    if-le v7, v8, :cond_5

    .line 341
    move-object v5, v0

    .line 338
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_6
    move-object v6, v5

    .line 346
    .end local v5    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    .restart local v6    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    goto :goto_2
.end method

.method static decodeStream(Lokio/Source;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "source"    # Lokio/Source;
    .param p1, "request"    # Lcom/squareup/picasso/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 128
    .local v1, "bufferedSource":Lokio/BufferedSource;
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->isWebPFile(Lokio/BufferedSource;)Z

    move-result v5

    .line 129
    .local v5, "isWebPFile":Z
    iget-boolean v11, p1, Lcom/squareup/picasso/Request;->purgeable:Z

    if-eqz v11, :cond_3

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_3

    const/4 v4, 0x1

    .line 130
    .local v4, "isPurgeable":Z
    :goto_0
    invoke-static {p1}, Lcom/squareup/picasso/RequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 131
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v9}, Lcom/squareup/picasso/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    .line 136
    .local v3, "calculateSize":Z
    if-nez v5, :cond_0

    if-eqz v4, :cond_4

    .line 137
    :cond_0
    invoke-interface {v1}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object v2

    .line 138
    .local v2, "bytes":[B
    if-eqz v3, :cond_1

    .line 139
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v12, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 140
    iget v11, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v12, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v11, v12, v9, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 143
    :cond_1
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v12, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .end local v2    # "bytes":[B
    :cond_2
    return-object v0

    .line 129
    .end local v3    # "calculateSize":Z
    .end local v4    # "isPurgeable":Z
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 145
    .restart local v3    # "calculateSize":Z
    .restart local v4    # "isPurgeable":Z
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    invoke-interface {v1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 146
    .local v10, "stream":Ljava/io/InputStream;
    if-eqz v3, :cond_5

    .line 148
    new-instance v8, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v8, v10}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    .local v8, "markStream":Lcom/squareup/picasso/MarkableInputStream;
    move-object v10, v8

    .line 150
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/squareup/picasso/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 151
    const/16 v11, 0x400

    invoke-virtual {v8, v11}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v6

    .line 152
    .local v6, "mark":J
    const/4 v11, 0x0

    invoke-static {v10, v11, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 153
    iget v11, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v12, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v11, v12, v9, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 155
    invoke-virtual {v8, v6, v7}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 156
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/squareup/picasso/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 158
    .end local v6    # "mark":J
    .end local v8    # "markStream":Lcom/squareup/picasso/MarkableInputStream;
    :cond_5
    const/4 v11, 0x0

    invoke-static {v10, v11, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 161
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Failed to decode stream."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method static forRequest(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;
    .locals 20
    .param p0, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p1, "dispatcher"    # Lcom/squareup/picasso/Dispatcher;
    .param p2, "cache"    # Lcom/squareup/picasso/Cache;
    .param p3, "stats"    # Lcom/squareup/picasso/Stats;
    .param p4, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 425
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v18

    .line 426
    .local v18, "request":Lcom/squareup/picasso/Request;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->getRequestHandlers()Ljava/util/List;

    move-result-object v19

    .line 430
    .local v19, "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/RequestHandler;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "count":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 431
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/picasso/RequestHandler;

    .line 432
    .local v8, "requestHandler":Lcom/squareup/picasso/RequestHandler;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/squareup/picasso/RequestHandler;->canHandleRequest(Lcom/squareup/picasso/Request;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    new-instance v2, Lcom/squareup/picasso/BitmapHunter;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    .line 437
    .end local v8    # "requestHandler":Lcom/squareup/picasso/RequestHandler;
    :goto_1
    return-object v2

    .line 430
    .restart local v8    # "requestHandler":Lcom/squareup/picasso/RequestHandler;
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 437
    .end local v8    # "requestHandler":Lcom/squareup/picasso/RequestHandler;
    :cond_1
    new-instance v9, Lcom/squareup/picasso/BitmapHunter;

    sget-object v15, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v15}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    move-object v2, v9

    goto :goto_1
.end method

.method static getExifRotation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 662
    packed-switch p0, :pswitch_data_0

    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, "rotation":I
    :goto_0
    return v0

    .line 665
    .end local v0    # "rotation":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 666
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 669
    .end local v0    # "rotation":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 670
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 673
    .end local v0    # "rotation":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 674
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static getExifTranslation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 683
    packed-switch p0, :pswitch_data_0

    .line 691
    :pswitch_0
    const/4 v0, 0x1

    .line 693
    .local v0, "translation":I
    :goto_0
    return v0

    .line 688
    .end local v0    # "translation":I
    :pswitch_1
    const/4 v0, -0x1

    .line 689
    .restart local v0    # "translation":I
    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static shouldResize(ZIIII)Z
    .locals 1
    .param p0, "onlyScaleDown"    # Z
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I

    .prologue
    .line 656
    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    if-gt p1, p3, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    if-le p2, p4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 64
    .param p0, "data"    # Lcom/squareup/picasso/Request;
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "exifOrientation"    # I

    .prologue
    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 504
    .local v19, "inWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 505
    .local v18, "inHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    move/from16 v30, v0

    .line 507
    .local v30, "onlyScaleDown":Z
    const/4 v7, 0x0

    .line 508
    .local v7, "drawX":I
    const/4 v8, 0x0

    .line 509
    .local v8, "drawY":I
    move/from16 v9, v19

    .line 510
    .local v9, "drawWidth":I
    move/from16 v10, v18

    .line 512
    .local v10, "drawHeight":I
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 514
    .local v11, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_5

    .line 515
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    move/from16 v40, v0

    .line 516
    .local v40, "targetWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    move/from16 v38, v0

    .line 518
    .local v38, "targetHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    move/from16 v39, v0

    .line 519
    .local v39, "targetRotation":F
    const/4 v6, 0x0

    cmpl-float v6, v39, v6

    if-eqz v6, :cond_1

    .line 520
    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v60, v0

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 521
    .local v14, "cosR":D
    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v60, v0

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 522
    .local v34, "sinR":D
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-eqz v6, :cond_7

    .line 523
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    move/from16 v0, v39

    invoke-virtual {v11, v0, v6, v12}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 525
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    float-to-double v0, v6

    move-wide/from16 v60, v0

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v62, v62, v14

    mul-double v60, v60, v62

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    float-to-double v0, v6

    move-wide/from16 v62, v0

    mul-double v62, v62, v34

    add-double v44, v60, v62

    .line 526
    .local v44, "x1T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    float-to-double v0, v6

    move-wide/from16 v60, v0

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v62, v62, v14

    mul-double v60, v60, v62

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    float-to-double v0, v6

    move-wide/from16 v62, v0

    mul-double v62, v62, v34

    sub-double v52, v60, v62

    .line 527
    .local v52, "y1T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v14

    add-double v46, v44, v60

    .line 528
    .local v46, "x2T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v34

    add-double v54, v52, v60

    .line 529
    .local v54, "y2T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v14

    add-double v60, v60, v44

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v0, v6

    move-wide/from16 v62, v0

    mul-double v62, v62, v34

    sub-double v48, v60, v62

    .line 530
    .local v48, "x3T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v34

    add-double v60, v60, v52

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v0, v6

    move-wide/from16 v62, v0

    mul-double v62, v62, v14

    add-double v56, v60, v62

    .line 531
    .local v56, "y3T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v34

    sub-double v50, v44, v60

    .line 532
    .local v50, "x4T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v14

    add-double v58, v52, v60

    .line 534
    .local v58, "y4T":D
    invoke-static/range {v44 .. v47}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v0, v48

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v0, v50

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    .line 535
    .local v20, "maxX":D
    invoke-static/range {v44 .. v47}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v48

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v50

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v24

    .line 536
    .local v24, "minX":D
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v0, v56

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    .line 537
    .local v22, "maxY":D
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v56

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    .line 538
    .local v26, "minY":D
    sub-double v60, v20, v24

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->floor(D)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v40, v0

    .line 539
    sub-double v60, v22, v26

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->floor(D)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v38, v0

    .line 563
    .end local v14    # "cosR":D
    .end local v20    # "maxX":D
    .end local v22    # "maxY":D
    .end local v24    # "minX":D
    .end local v26    # "minY":D
    .end local v34    # "sinR":D
    .end local v44    # "x1T":D
    .end local v46    # "x2T":D
    .end local v48    # "x3T":D
    .end local v50    # "x4T":D
    .end local v52    # "y1T":D
    .end local v54    # "y2T":D
    .end local v56    # "y3T":D
    .end local v58    # "y4T":D
    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 564
    invoke-static/range {p2 .. p2}, Lcom/squareup/picasso/BitmapHunter;->getExifRotation(I)I

    move-result v13

    .line 565
    .local v13, "exifRotation":I
    invoke-static/range {p2 .. p2}, Lcom/squareup/picasso/BitmapHunter;->getExifTranslation(I)I

    move-result v16

    .line 566
    .local v16, "exifTranslation":I
    if-eqz v13, :cond_3

    .line 567
    int-to-float v6, v13

    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 568
    const/16 v6, 0x5a

    if-eq v13, v6, :cond_2

    const/16 v6, 0x10e

    if-ne v13, v6, :cond_3

    .line 570
    :cond_2
    move/from16 v41, v38

    .line 571
    .local v41, "tmpHeight":I
    move/from16 v38, v40

    .line 572
    move/from16 v40, v41

    .line 575
    .end local v41    # "tmpHeight":I
    :cond_3
    const/4 v6, 0x1

    move/from16 v0, v16

    if-eq v0, v6, :cond_4

    .line 576
    move/from16 v0, v16

    int-to-float v6, v0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v6, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 580
    .end local v13    # "exifRotation":I
    .end local v16    # "exifTranslation":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-eqz v6, :cond_10

    .line 582
    if-eqz v40, :cond_8

    move/from16 v0, v40

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v12, v0

    div-float v42, v6, v12

    .line 584
    .local v42, "widthRatio":F
    :goto_1
    if-eqz v38, :cond_9

    move/from16 v0, v38

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v12, v0

    div-float v17, v6, v12

    .line 587
    .local v17, "heightRatio":F
    :goto_2
    cmpl-float v6, v42, v17

    if-lez v6, :cond_c

    .line 588
    move/from16 v0, v18

    int-to-float v6, v0

    div-float v12, v17, v42

    mul-float/2addr v6, v12

    float-to-double v0, v6

    move-wide/from16 v60, v0

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v29, v0

    .line 589
    .local v29, "newSize":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->centerCropGravity:I

    and-int/lit8 v6, v6, 0x30

    const/16 v12, 0x30

    if-ne v6, v12, :cond_a

    .line 590
    const/4 v8, 0x0

    .line 596
    :goto_3
    move/from16 v10, v29

    .line 597
    move/from16 v32, v42

    .line 598
    .local v32, "scaleX":F
    move/from16 v0, v38

    int-to-float v6, v0

    int-to-float v12, v10

    div-float v33, v6, v12

    .line 616
    .end local v29    # "newSize":I
    .local v33, "scaleY":F
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v40

    move/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 617
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 644
    .end local v17    # "heightRatio":F
    .end local v32    # "scaleX":F
    .end local v33    # "scaleY":F
    .end local v38    # "targetHeight":I
    .end local v39    # "targetRotation":F
    .end local v40    # "targetWidth":I
    .end local v42    # "widthRatio":F
    :cond_5
    :goto_5
    const/4 v12, 0x1

    move-object/from16 v6, p1

    .line 645
    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 646
    .local v28, "newResult":Landroid/graphics/Bitmap;
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_6

    .line 647
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 648
    move-object/from16 p1, v28

    .line 651
    :cond_6
    return-object p1

    .line 541
    .end local v28    # "newResult":Landroid/graphics/Bitmap;
    .restart local v14    # "cosR":D
    .restart local v34    # "sinR":D
    .restart local v38    # "targetHeight":I
    .restart local v39    # "targetRotation":F
    .restart local v40    # "targetWidth":I
    :cond_7
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 543
    const-wide/16 v44, 0x0

    .line 544
    .restart local v44    # "x1T":D
    const-wide/16 v52, 0x0

    .line 545
    .restart local v52    # "y1T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v46, v60, v14

    .line 546
    .restart local v46    # "x2T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v54, v60, v34

    .line 547
    .restart local v54    # "y2T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v0, v6

    move-wide/from16 v62, v0

    mul-double v62, v62, v34

    sub-double v48, v60, v62

    .line 548
    .restart local v48    # "x3T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v34

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v0, v6

    move-wide/from16 v62, v0

    mul-double v62, v62, v14

    add-double v56, v60, v62

    .line 549
    .restart local v56    # "y3T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v60, v60, v34

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v50, v0

    .line 550
    .restart local v50    # "x4T":D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v0, v6

    move-wide/from16 v60, v0

    mul-double v58, v60, v14

    .line 552
    .restart local v58    # "y4T":D
    invoke-static/range {v44 .. v47}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v0, v48

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v0, v50

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    .line 553
    .restart local v20    # "maxX":D
    invoke-static/range {v44 .. v47}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v48

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v50

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v24

    .line 554
    .restart local v24    # "minX":D
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v0, v56

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    .line 555
    .restart local v22    # "maxY":D
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v56

    move-wide/from16 v2, v60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    .line 556
    .restart local v26    # "minY":D
    sub-double v60, v20, v24

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->floor(D)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v40, v0

    .line 557
    sub-double v60, v22, v26

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->floor(D)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v38, v0

    goto/16 :goto_0

    .line 582
    .end local v14    # "cosR":D
    .end local v20    # "maxX":D
    .end local v22    # "maxY":D
    .end local v24    # "minX":D
    .end local v26    # "minY":D
    .end local v34    # "sinR":D
    .end local v44    # "x1T":D
    .end local v46    # "x2T":D
    .end local v48    # "x3T":D
    .end local v50    # "x4T":D
    .end local v52    # "y1T":D
    .end local v54    # "y2T":D
    .end local v56    # "y3T":D
    .end local v58    # "y4T":D
    :cond_8
    move/from16 v0, v38

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v12, v0

    div-float v42, v6, v12

    goto/16 :goto_1

    .line 584
    .restart local v42    # "widthRatio":F
    :cond_9
    move/from16 v0, v40

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v12, v0

    div-float v17, v6, v12

    goto/16 :goto_2

    .line 591
    .restart local v17    # "heightRatio":F
    .restart local v29    # "newSize":I
    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->centerCropGravity:I

    and-int/lit8 v6, v6, 0x50

    const/16 v12, 0x50

    if-ne v6, v12, :cond_b

    .line 592
    sub-int v8, v18, v29

    goto/16 :goto_3

    .line 594
    :cond_b
    sub-int v6, v18, v29

    div-int/lit8 v8, v6, 0x2

    goto/16 :goto_3

    .line 599
    .end local v29    # "newSize":I
    :cond_c
    cmpg-float v6, v42, v17

    if-gez v6, :cond_f

    .line 600
    move/from16 v0, v19

    int-to-float v6, v0

    div-float v12, v42, v17

    mul-float/2addr v6, v12

    float-to-double v0, v6

    move-wide/from16 v60, v0

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v29, v0

    .line 601
    .restart local v29    # "newSize":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->centerCropGravity:I

    and-int/lit8 v6, v6, 0x3

    const/4 v12, 0x3

    if-ne v6, v12, :cond_d

    .line 602
    const/4 v7, 0x0

    .line 608
    :goto_6
    move/from16 v9, v29

    .line 609
    move/from16 v0, v40

    int-to-float v6, v0

    int-to-float v12, v9

    div-float v32, v6, v12

    .line 610
    .restart local v32    # "scaleX":F
    move/from16 v33, v17

    .line 611
    .restart local v33    # "scaleY":F
    goto/16 :goto_4

    .line 603
    .end local v32    # "scaleX":F
    .end local v33    # "scaleY":F
    :cond_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request;->centerCropGravity:I

    and-int/lit8 v6, v6, 0x5

    const/4 v12, 0x5

    if-ne v6, v12, :cond_e

    .line 604
    sub-int v7, v19, v29

    goto :goto_6

    .line 606
    :cond_e
    sub-int v6, v19, v29

    div-int/lit8 v7, v6, 0x2

    goto :goto_6

    .line 612
    .end local v29    # "newSize":I
    :cond_f
    const/4 v7, 0x0

    .line 613
    move/from16 v9, v19

    .line 614
    move/from16 v33, v17

    .restart local v33    # "scaleY":F
    move/from16 v32, v17

    .restart local v32    # "scaleX":F
    goto/16 :goto_4

    .line 619
    .end local v17    # "heightRatio":F
    .end local v32    # "scaleX":F
    .end local v33    # "scaleY":F
    .end local v42    # "widthRatio":F
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-eqz v6, :cond_14

    .line 621
    if-eqz v40, :cond_11

    move/from16 v0, v40

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v12, v0

    div-float v42, v6, v12

    .line 623
    .restart local v42    # "widthRatio":F
    :goto_7
    if-eqz v38, :cond_12

    move/from16 v0, v38

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v12, v0

    div-float v17, v6, v12

    .line 625
    .restart local v17    # "heightRatio":F
    :goto_8
    cmpg-float v6, v42, v17

    if-gez v6, :cond_13

    move/from16 v31, v42

    .line 626
    .local v31, "scale":F
    :goto_9
    move/from16 v0, v30

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v40

    move/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 627
    move/from16 v0, v31

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_5

    .line 621
    .end local v17    # "heightRatio":F
    .end local v31    # "scale":F
    .end local v42    # "widthRatio":F
    :cond_11
    move/from16 v0, v38

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v12, v0

    div-float v42, v6, v12

    goto :goto_7

    .line 623
    .restart local v42    # "widthRatio":F
    :cond_12
    move/from16 v0, v40

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v12, v0

    div-float v17, v6, v12

    goto :goto_8

    .restart local v17    # "heightRatio":F
    :cond_13
    move/from16 v31, v17

    .line 625
    goto :goto_9

    .line 629
    .end local v17    # "heightRatio":F
    .end local v42    # "widthRatio":F
    :cond_14
    if-nez v40, :cond_15

    if-eqz v38, :cond_5

    :cond_15
    move/from16 v0, v40

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    move/from16 v0, v38

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 634
    :cond_16
    if-eqz v40, :cond_17

    move/from16 v0, v40

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v12, v0

    div-float v36, v6, v12

    .line 636
    .local v36, "sx":F
    :goto_a
    if-eqz v38, :cond_18

    move/from16 v0, v38

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v12, v0

    div-float v37, v6, v12

    .line 638
    .local v37, "sy":F
    :goto_b
    move/from16 v0, v30

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v40

    move/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 639
    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_5

    .line 634
    .end local v36    # "sx":F
    .end local v37    # "sy":F
    :cond_17
    move/from16 v0, v38

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v12, v0

    div-float v36, v6, v12

    goto :goto_a

    .line 636
    .restart local v36    # "sx":F
    :cond_18
    move/from16 v0, v40

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v12, v0

    div-float v37, v6, v12

    goto :goto_b
.end method

.method static updateThreadName(Lcom/squareup/picasso/Request;)V
    .locals 4
    .param p0, "data"    # Lcom/squareup/picasso/Request;

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->getName()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 417
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 418
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 421
    return-void
.end method


# virtual methods
.method attach(Lcom/squareup/picasso/Action;)V
    .locals 7
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 270
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 271
    .local v1, "loggingEnabled":Z
    iget-object v2, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    .line 273
    .local v2, "request":Lcom/squareup/picasso/Request;
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-nez v3, :cond_3

    .line 274
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 275
    if-eqz v1, :cond_1

    .line 276
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    :cond_0
    const-string v3, "Hunter"

    const-string v4, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "to empty hunter"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    const-string v3, "Hunter"

    const-string v4, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "to "

    invoke-static {p0, v6}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-nez v3, :cond_4

    .line 286
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 289
    :cond_4
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    if-eqz v1, :cond_5

    .line 292
    const-string v3, "Hunter"

    const-string v4, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "to "

    invoke-static {p0, v6}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 296
    .local v0, "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v4}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 297
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    goto :goto_0
.end method

.method cancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 351
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 353
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 350
    :cond_1
    return v0
.end method

.method detach(Lcom/squareup/picasso/Action;)V
    .locals 5
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "detached":Z
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-ne v1, p1, :cond_3

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 305
    const/4 v0, 0x1

    .line 312
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v1, v2, :cond_1

    .line 313
    invoke-direct {p0}, Lcom/squareup/picasso/BitmapHunter;->computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_2

    .line 317
    const-string v1, "Hunter"

    const-string v2, "removed"

    iget-object v3, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from "

    invoke-static {p0, v4}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_2
    return-void

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getAction()Lcom/squareup/picasso/Action;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    return-object v0
.end method

.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    return-object v0
.end method

.method getData()Lcom/squareup/picasso/Request;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    return-object v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method getMemoryPolicy()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    return v0
.end method

.method getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method getResult()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method hunt()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v4, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    invoke-static {v4}, Lcom/squareup/picasso/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    iget-object v5, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_1

    .line 209
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v4}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 210
    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 211
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v4, :cond_0

    .line 212
    const-string v4, "Hunter"

    const-string v5, "decoded"

    iget-object v6, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v6}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "from cache"

    invoke-static {v4, v5, v6, v7}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 266
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 218
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget v4, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    if-nez v4, :cond_9

    sget-object v4, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    iget v4, v4, Lcom/squareup/picasso/NetworkPolicy;->index:I

    :goto_1
    iput v4, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 219
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    iget-object v5, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v6, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    invoke-virtual {v4, v5, v6}, Lcom/squareup/picasso/RequestHandler;->load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;

    move-result-object v2

    .line 220
    .local v2, "result":Lcom/squareup/picasso/RequestHandler$Result;
    if-eqz v2, :cond_2

    .line 221
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestHandler$Result;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 222
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestHandler$Result;->getExifOrientation()I

    move-result v4

    iput v4, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    .line 223
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestHandler$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    if-nez v0, :cond_2

    .line 227
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestHandler$Result;->getSource()Lokio/Source;

    move-result-object v3

    .line 229
    .local v3, "source":Lokio/Source;
    :try_start_0
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v3, v4}, Lcom/squareup/picasso/BitmapHunter;->decodeStream(Lokio/Source;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 233
    :try_start_1
    invoke-interface {v3}, Lokio/Source;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    .end local v3    # "source":Lokio/Source;
    :cond_2
    :goto_2
    if-eqz v0, :cond_8

    .line 241
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v4, :cond_3

    .line 242
    const-string v4, "Hunter"

    const-string v5, "decoded"

    iget-object v6, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v6}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_3
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v4, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    .line 245
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->needsTransformation()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    if-eqz v4, :cond_8

    .line 246
    :cond_4
    sget-object v5, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 247
    :try_start_2
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    if-eqz v4, :cond_6

    .line 248
    :cond_5
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v6, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    invoke-static {v4, v0, v6}, Lcom/squareup/picasso/BitmapHunter;->transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v4, :cond_6

    .line 250
    const-string v4, "Hunter"

    const-string v6, "transformed"

    iget-object v7, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v7}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_6
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 254
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget-object v4, v4, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/squareup/picasso/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v4, :cond_7

    .line 256
    const-string v4, "Hunter"

    const-string v6, "transformed"

    iget-object v7, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v7}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "from custom transformations"

    invoke-static {v4, v6, v7, v8}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_7
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    if-eqz v0, :cond_8

    .line 261
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v4, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    :cond_8
    move-object v1, v0

    .line 266
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 218
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "result":Lcom/squareup/picasso/RequestHandler$Result;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    iget v4, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    goto/16 :goto_1

    .line 231
    .restart local v2    # "result":Lcom/squareup/picasso/RequestHandler$Result;
    .restart local v3    # "source":Lokio/Source;
    :catchall_0
    move-exception v4

    .line 233
    :try_start_3
    invoke-interface {v3}, Lokio/Source;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 235
    :goto_3
    throw v4

    .line 259
    .end local v3    # "source":Lokio/Source;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 234
    .restart local v3    # "source":Lokio/Source;
    :catch_0
    move-exception v4

    goto/16 :goto_2

    :catch_1
    move-exception v5

    goto :goto_3
.end method

.method isCancelled()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v2}, Lcom/squareup/picasso/BitmapHunter;->updateThreadName(Lcom/squareup/picasso/Request;)V

    .line 171
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "Hunter"

    const-string v3, "executing"

    invoke-static {p0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 177
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_0
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 201
    :goto_1
    return-void

    .line 180
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_1
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;
    :try_start_2
    iget v2, v0, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->networkPolicy:I

    invoke-static {v2}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->code:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_3

    .line 184
    :cond_2
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    .end local v0    # "e":Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 189
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 192
    .local v1, "writer":Ljava/io/StringWriter;
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    .line 193
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 194
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_3
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 197
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Picasso-Idle"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 3
    .param p1, "airplaneMode"    # Z
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v1, 0x0

    .line 361
    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 362
    .local v0, "hasRetries":Z
    :goto_0
    if-nez v0, :cond_1

    .line 366
    :goto_1
    return v1

    .end local v0    # "hasRetries":Z
    :cond_0
    move v0, v1

    .line 361
    goto :goto_0

    .line 365
    .restart local v0    # "hasRetries":Z
    :cond_1
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 366
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/picasso/RequestHandler;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result v1

    goto :goto_1
.end method

.method supportsReplay()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestHandler;->supportsReplay()Z

    move-result v0

    return v0
.end method
