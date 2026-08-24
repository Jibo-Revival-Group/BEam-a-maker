.class public Lcom/jibo/apptoolkit/protocol/CommandLibrary;
.super Ljava/lang/Object;
.source "CommandLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/CommandLibrary$SimpleOnCommandResponseListenerImpl;,
        Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;
    }
.end annotation


# static fields
.field private static final COMMANDS_CACHE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field public static sGson:Lcom/google/gson/Gson;


# instance fields
.field private mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jibo/apptoolkit/protocol/utils/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/jibo/apptoolkit/protocol/model/Command;",
            ">;"
        }
    .end annotation
.end field

.field private mEventFactory:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;

.field private mGestureUrlConnection:Ljava/net/HttpURLConnection;

.field private mIpAddress:Ljava/lang/String;

.field private mOnConnectionListener:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

.field private mPhotoUrlConnection:Ljava/net/HttpURLConnection;

.field private mSessionInfo:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

.field private mSslContext:Ljavax/net/ssl/SSLContext;

.field private mVideoUrlConnection:Ljava/net/HttpURLConnection;

.field private mWebSocket:Lokhttp3/WebSocket;

.field private onCommandResponseListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lokhttp3/WebSocket;Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V
    .locals 2
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "webSocket"    # Lokhttp3/WebSocket;
    .param p3, "ipAddress"    # Ljava/lang/String;
    .param p4, "onConnectionListener"    # Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;-><init>()V

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mEventFactory:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;

    .line 60
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 61
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mWebSocket:Lokhttp3/WebSocket;

    .line 62
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mIpAddress:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mOnConnectionListener:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    .line 65
    new-instance v0, Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/jibo/apptoolkit/protocol/utils/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mPhotoUrlConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jibo/apptoolkit/protocol/CommandLibrary;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mPhotoUrlConnection:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mVideoUrlConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jibo/apptoolkit/protocol/CommandLibrary;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mVideoUrlConnection:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mGestureUrlConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/jibo/apptoolkit/protocol/CommandLibrary;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mGestureUrlConnection:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private closeGestureConnection()V
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary$4;

    invoke-direct {v1, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$4;-><init>(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 520
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 521
    return-void
.end method

.method private closeMotionConnection()V
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary$5;

    invoke-direct {v1, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$5;-><init>(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 532
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 533
    return-void
.end method

.method private closePhotoConnection()V
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary$2;

    invoke-direct {v1, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$2;-><init>(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 497
    return-void
.end method

.method private closeSpeechConnection()V
    .locals 2

    .prologue
    .line 536
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary$6;

    invoke-direct {v1, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$6;-><init>(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 544
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 545
    return-void
.end method

.method private closeVideoConnection()V
    .locals 2

    .prologue
    .line 500
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary$3;

    invoke-direct {v1, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$3;-><init>(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 508
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 509
    return-void
.end method

.method private generateTransactionID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jibo/apptoolkit/protocol/utils/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeResponseListeners()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSessionInfo:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    .line 452
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/utils/LruCache;->evictAll()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 460
    :cond_1
    return-void
.end method

.method private sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 6
    .param p1, "commandBody"    # Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
    .param p2, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, "tranID":Ljava/lang/String;
    iget-object v3, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz v3, :cond_1

    .line 465
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->generateTransactionID()Ljava/lang/String;

    move-result-object v2

    .line 467
    iget-object v3, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSessionInfo:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    if-nez v3, :cond_2

    new-instance v1, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;

    invoke-direct {v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, "requestHeader":Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;
    :goto_0
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command;

    invoke-direct {v0, v1, p1}, Lcom/jibo/apptoolkit/protocol/model/Command;-><init>(Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;)V

    .line 471
    .local v0, "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    iget-object v3, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mWebSocket:Lokhttp3/WebSocket;

    sget-object v4, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 472
    iget-object v3, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    invoke-virtual {v3, v2, v0}, Lcom/jibo/apptoolkit/protocol/utils/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    if-eqz p2, :cond_0

    .line 474
    iget-object v3, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Send : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 483
    .end local v0    # "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    .end local v1    # "requestHeader":Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;
    :cond_1
    :goto_1
    return-object v2

    .line 467
    :cond_2
    new-instance v1, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;

    iget-object v3, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSessionInfo:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    .line 468
    invoke-virtual {v3}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;->getSessionID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSessionInfo:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    invoke-virtual {v4}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    .restart local v0    # "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    .restart local v1    # "requestHeader":Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;
    :cond_3
    const/4 v2, 0x0

    .line 479
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Not send : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closeVideoConnection()V

    .line 79
    invoke-static {p1}, Lcom/jibo/apptoolkit/protocol/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    invoke-virtual {v0, p1}, Lcom/jibo/apptoolkit/protocol/utils/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Lcom/jibo/apptoolkit/protocol/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CancelRequest;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$CancelRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public clearListenersAndState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mOnConnectionListener:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    .line 249
    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSessionInfo:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    .line 251
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/utils/LruCache;->evictAll()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 258
    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closePhotoConnection()V

    .line 239
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closeVideoConnection()V

    .line 241
    invoke-virtual {p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->clearListenersAndState()V

    .line 242
    return-void
.end method

.method public display(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;
    .param p2, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 167
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;)V

    invoke-direct {p0, v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public entity(Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 229
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$EntityRequest;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/protocol/model/Command$EntityRequest;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchAsset(Ljava/lang/String;Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 158
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$FetchAssetRequest;

    invoke-direct {v0, p1, p2}, Lcom/jibo/apptoolkit/protocol/model/Command$FetchAssetRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 211
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$GetConfigRequest;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/protocol/model/Command$GetConfigRequest;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headTouch(Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 220
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$HeadTouchRequest;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/protocol/model/Command$HeadTouchRequest;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listen(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "maxSpeechTimeout"    # Ljava/lang/Long;
    .param p2, "maxNoSpeechTimeout"    # Ljava/lang/Long;
    .param p3, "languageCode"    # Ljava/lang/String;
    .param p4, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 178
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$ListenRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/jibo/apptoolkit/protocol/model/Command$ListenRequest;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookAt(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 3
    .param p1, "lookAtTarget"    # Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
    .param p2, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    const/4 v2, 0x0

    .line 102
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    instance-of v0, p1, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequestExt;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequestExt;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public motion(Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 186
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$MotionRequest;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/protocol/model/Command$MotionRequest;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseJiboResponse(Ljava/lang/String;)V
    .locals 22
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v16, ""

    .line 275
    .local v16, "transactionID":Ljava/lang/String;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string v18, "ResponseHeader"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 278
    sget-object v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sGson:Lcom/google/gson/Gson;

    const-class v19, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;

    .line 279
    .local v4, "acknowledgment":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
    invoke-virtual {v4}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;->getResponseHeader()Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;->getTransactionID()Ljava/lang/String;

    move-result-object v16

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jibo/apptoolkit/protocol/utils/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jibo/apptoolkit/protocol/model/Command;

    .line 283
    .local v5, "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    invoke-virtual {v4}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;->getResponse()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;->getValue()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    move-result-object v18

    sget-object v19, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;->Error:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 287
    sget-object v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sGson:Lcom/google/gson/Gson;

    const-string v19, "Response"

    .line 288
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    const-class v20, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;

    invoke-virtual/range {v18 .. v20}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;

    .line 291
    .local v7, "errorResponseBody":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    invoke-virtual {v4}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;->getResponse()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;->getResponseString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;->getErrorDetail()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 291
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v7    # "errorResponseBody":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;
    :cond_0
    invoke-virtual {v5}, Lcom/jibo/apptoolkit/protocol/model/Command;->getCommand()Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/Command$SessionRequest;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mOnConnectionListener:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mOnConnectionListener:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    move-object/from16 v18, v0

    new-instance v19, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v20, "Something weird\'s happened along the way. Please try again..."

    invoke-direct/range {v19 .. v20}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v18 .. v19}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 302
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->disconnect()V

    .line 443
    .end local v4    # "acknowledgment":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
    .end local v5    # "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 307
    .restart local v4    # "acknowledgment":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
    .restart local v5    # "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {v5}, Lcom/jibo/apptoolkit/protocol/model/Command;->getCommand()Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/Command$SessionRequest;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 309
    sget-object v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sGson:Lcom/google/gson/Gson;

    const-string v19, "Response"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    const-class v20, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;

    invoke-virtual/range {v18 .. v20}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;

    .line 310
    .local v14, "sessionResponse":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;
    invoke-virtual {v14}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;->getResponseBody()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSessionInfo:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mOnConnectionListener:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mOnConnectionListener:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onSessionStarted(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    .end local v4    # "acknowledgment":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
    .end local v5    # "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "sessionResponse":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;
    :catch_0
    move-exception v6

    .line 438
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    const-string v19, "Something went wrong. Please try again..."

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_4
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->TAG:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Error parsing Jibo response "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "acknowledgment":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
    .restart local v5    # "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;->onSuccess(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v5}, Lcom/jibo/apptoolkit/protocol/model/Command;->getCommand()Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/Command$AtomicCommand;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 332
    .end local v4    # "acknowledgment":Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
    .end local v5    # "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mEventFactory:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->parseEventMessage(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/EventMessage;

    move-result-object v8

    .line 333
    .local v8, "eventMessage":Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    if-eqz v8, :cond_2

    .line 335
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventHeader()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;->getTransactionID()Ljava/lang/String;

    move-result-object v16

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mCommands:Lcom/jibo/apptoolkit/protocol/utils/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jibo/apptoolkit/protocol/utils/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jibo/apptoolkit/protocol/model/Command;

    .line 338
    .restart local v5    # "command":Lcom/jibo/apptoolkit/protocol/model/Command;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 340
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;->getEvent()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    move-result-object v18

    sget-object v19, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Error:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .line 343
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventHeader()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;->getTransactionID()Ljava/lang/String;

    move-result-object v20

    .line 344
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v19

    check-cast v19, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent;

    invoke-virtual/range {v19 .. v19}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent;->getEventError()Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;

    move-result-object v19

    .line 342
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;->onEventError(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;)V

    .line 419
    :cond_7
    :goto_1
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$FinalisingEvent;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 420
    const/4 v10, 0x1

    .line 423
    .local v10, "isFinalEvent":Z
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/jibo/apptoolkit/protocol/model/Command;->getCommand()Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 424
    invoke-virtual {v5}, Lcom/jibo/apptoolkit/protocol/model/Command;->getCommand()Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;

    invoke-virtual/range {v18 .. v18}, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;->getDuration()Ljava/lang/Long;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 425
    invoke-virtual {v5}, Lcom/jibo/apptoolkit/protocol/model/Command;->getCommand()Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;

    invoke-virtual/range {v18 .. v18}, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;->getDuration()Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_9

    .line 426
    :cond_8
    const/4 v10, 0x0

    .line 429
    :cond_9
    if-eqz v10, :cond_2

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 346
    .end local v10    # "isFinalEvent":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .line 347
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventHeader()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;->getTransactionID()Ljava/lang/String;

    move-result-object v19

    .line 348
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v20

    .line 346
    invoke-interface/range {v18 .. v20}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;->onEvent(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V

    .line 350
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mPhotoUrlConnection:Ljava/net/HttpURLConnection;

    .line 353
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 354
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 357
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "https://"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mIpAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    .line 358
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "7160"

    .line 359
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 361
    .local v15, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closePhotoConnection()V

    .line 363
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;

    invoke-virtual/range {v18 .. v18}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;->getURI()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :goto_2
    new-instance v13, Ljava/net/URL;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    .local v13, "requestedUrl":Ljava/net/URL;
    :try_start_2
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    check-cast v17, Ljava/net/HttpURLConnection;

    .line 371
    .local v17, "urlConnection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSslContext:Ljavax/net/ssl/SSLContext;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 373
    move-object/from16 v0, v17

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mSslContext:Ljavax/net/ssl/SSLContext;

    move-object/from16 v19, v0

    .line 374
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 377
    :cond_c
    move-object/from16 v0, v17

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v18, v0

    new-instance v19, Lcom/jibo/apptoolkit/protocol/CommandLibrary$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$1;-><init>(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    invoke-virtual/range {v18 .. v19}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 384
    :cond_d
    const-string v18, "GET"

    invoke-virtual/range {v17 .. v18}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 385
    const/16 v18, 0x7530

    invoke-virtual/range {v17 .. v18}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 386
    const/16 v18, 0x2710

    invoke-virtual/range {v17 .. v18}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 387
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 388
    .local v12, "lastResponseCode":I
    const/16 v18, 0x190

    move/from16 v0, v18

    if-ge v12, v0, :cond_7

    .line 389
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 390
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mPhotoUrlConnection:Ljava/net/HttpURLConnection;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .line 392
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventHeader()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;->getTransactionID()Ljava/lang/String;

    move-result-object v20

    .line 393
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v19

    check-cast v19, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mPhotoUrlConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    .line 394
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 391
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;->onPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 404
    .end local v12    # "lastResponseCode":I
    .end local v17    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v9

    .line 405
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_3
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->TAG:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Error getting photo/video streams "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 365
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v13    # "requestedUrl":Ljava/net/URL;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closeVideoConnection()V

    .line 366
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;

    invoke-virtual/range {v18 .. v18}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;->getURI()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 396
    .restart local v12    # "lastResponseCode":I
    .restart local v13    # "requestedUrl":Ljava/net/URL;
    .restart local v17    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_f
    :try_start_4
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mVideoUrlConnection:Ljava/net/HttpURLConnection;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .line 398
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventHeader()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;->getTransactionID()Ljava/lang/String;

    move-result-object v20

    .line 399
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v19

    check-cast v19, Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->mVideoUrlConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    .line 400
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 397
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;->onVideo(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 410
    .end local v12    # "lastResponseCode":I
    .end local v13    # "requestedUrl":Ljava/net/URL;
    .end local v15    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_10
    :try_start_5
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->onCommandResponseListeners:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .line 412
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventHeader()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;->getTransactionID()Ljava/lang/String;

    move-result-object v20

    .line 413
    invoke-virtual {v8}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v19

    check-cast v19, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;

    invoke-virtual/range {v19 .. v19}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;->getSpeech()Ljava/lang/String;

    move-result-object v19

    .line 411
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;->onListen(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public say(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/jibo/apptoolkit/protocol/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$SayRequest;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$SayRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public screenGesture(Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "filter"    # Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;
    .param p2, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closeGestureConnection()V

    .line 148
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;)V

    invoke-direct {p0, v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConfig(Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "options"    # Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;
    .param p2, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 202
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;)V

    invoke-direct {p0, v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speech(ZLcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 1
    .param p1, "listen"    # Z
    .param p2, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 192
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$SpeechRequest;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$SpeechRequest;-><init>(Z)V

    invoke-direct {p0, v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$SessionRequest;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/protocol/model/Command$SessionRequest;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takePhoto(Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;ZLcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 2
    .param p1, "camera"    # Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;
    .param p2, "resolution"    # Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .param p3, "distortion"    # Z
    .param p4, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closePhotoConnection()V

    .line 121
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0, p4}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public video(Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;JLcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;
    .locals 2
    .param p1, "videoType"    # Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
    .param p2, "duration"    # J
    .param p4, "onCommandResponseListener"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closeVideoConnection()V

    .line 135
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;Ljava/lang/Long;)V

    :goto_1
    invoke-direct {p0, v0, p4}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->sendCommand(Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;)V

    goto :goto_1
.end method
