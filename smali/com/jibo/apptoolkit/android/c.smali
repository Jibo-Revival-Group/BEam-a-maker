.class public final Lcom/jibo/apptoolkit/android/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/android/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0013J\u0006\u0010\u0017\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/jibo/apptoolkit/android/SdkConnectionManager;",
        "",
        "mCertificate",
        "Lcom/jibo/apptoolkit/android/model/api/Certificates;",
        "onConnectionListener",
        "Lcom/jibo/apptoolkit/protocol/OnConnectionListener;",
        "(Lcom/jibo/apptoolkit/android/model/api/Certificates;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V",
        "mCommandLibrary",
        "Lcom/jibo/apptoolkit/protocol/CommandLibrary;",
        "mDisconnectedByClient",
        "",
        "mHttpClient",
        "Lokhttp3/OkHttpClient;",
        "mOnConnectionListener",
        "mSslContext",
        "Ljavax/net/ssl/SSLContext;",
        "mWebSocket",
        "Lokhttp3/WebSocket;",
        "_disconnect",
        "",
        "code",
        "",
        "connect",
        "disconnect",
        "Companion",
        "apptoolkit-android-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final a:Lcom/jibo/apptoolkit/android/c$a;

.field private static final i:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final j:I = 0x3e8

# The value of this static final field might be set in the static constructor
.field private static final k:I = 0x3ea

# The value of this static final field might be set in the static constructor
.field private static final l:I = 0xfa0

# The value of this static final field might be set in the static constructor
.field private static final m:I = 0xfa1

# The value of this static final field might be set in the static constructor
.field private static final n:I = 0xfa2

# The value of this static final field might be set in the static constructor
.field private static final o:I = 0xfa3


# instance fields
.field private b:Ljavax/net/ssl/SSLContext;

.field private c:Lokhttp3/OkHttpClient;

.field private d:Lokhttp3/WebSocket;

.field private e:Z

.field private f:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

.field private g:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

.field private final h:Lcom/jibo/apptoolkit/android/model/api/Certificates;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jibo/apptoolkit/android/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jibo/apptoolkit/android/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    const-class v1, Lcom/jibo/apptoolkit/android/c;

    invoke-virtual {v0, v1}, Lcom/jibo/apptoolkit/android/a/b;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/android/c;->i:Ljava/lang/String;

    const/16 v0, 0x3e8

    sput v0, Lcom/jibo/apptoolkit/android/c;->j:I

    const/16 v0, 0x3ea

    sput v0, Lcom/jibo/apptoolkit/android/c;->k:I

    const/16 v0, 0xfa0

    sput v0, Lcom/jibo/apptoolkit/android/c;->l:I

    const/16 v0, 0xfa1

    sput v0, Lcom/jibo/apptoolkit/android/c;->m:I

    const/16 v0, 0xfa2

    sput v0, Lcom/jibo/apptoolkit/android/c;->n:I

    const/16 v0, 0xfa3

    sput v0, Lcom/jibo/apptoolkit/android/c;->o:I

    return-void
.end method

.method public constructor <init>(Lcom/jibo/apptoolkit/android/model/api/Certificates;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V
    .locals 4
    .param p1    # Lcom/jibo/apptoolkit/android/model/api/Certificates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/jibo/apptoolkit/protocol/OnConnectionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "mCertificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/c;->h:Lcom/jibo/apptoolkit/android/model/api/Certificates;

    new-instance v0, Lcom/jibo/apptoolkit/android/c$1;

    invoke-direct {v0, p0, p2}, Lcom/jibo/apptoolkit/android/c$1;-><init>(Lcom/jibo/apptoolkit/android/c;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V

    check-cast v0, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/c;->f:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    nop

    :try_start_0
    sget-object v0, Lcom/jibo/apptoolkit/android/a/a;->a:Lcom/jibo/apptoolkit/android/a/a;

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/c;->h:Lcom/jibo/apptoolkit/android/model/api/Certificates;

    invoke-virtual {v0, v1}, Lcom/jibo/apptoolkit/android/a/a;->a(Lcom/jibo/apptoolkit/android/model/api/Certificates;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/c;->b:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v1

    sget-object v2, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/c$a;->b(Lcom/jibo/apptoolkit/android/c$a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSLContext creation error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->f:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/c;->f:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.jibo.apptoolkit.protocol.OnConnectionListener"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Something went wrong. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Something went wrong. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final a(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->g:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->g:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->disconnect()V

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/c;->g:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    :cond_1
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->d:Lokhttp3/WebSocket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->d:Lokhttp3/WebSocket;

    if-eqz v0, :cond_2

    const-string v2, "Goodbye !"

    invoke-interface {v0, p1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    :cond_2
    move-object v0, v1

    check-cast v0, Lokhttp3/WebSocket;

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/c;->d:Lokhttp3/WebSocket;

    :cond_3
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->c:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->c:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_4
    check-cast v1, Lokhttp3/OkHttpClient;

    iput-object v1, p0, Lcom/jibo/apptoolkit/android/c;->c:Lokhttp3/OkHttpClient;

    :cond_5
    return-void
.end method

.method public static final synthetic a(Lcom/jibo/apptoolkit/android/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/android/c;->a(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/jibo/apptoolkit/android/c;Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    .locals 0
    .param p1    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/c;->g:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    return-void
.end method

.method public static final synthetic a(Lcom/jibo/apptoolkit/android/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jibo/apptoolkit/android/c;->e:Z

    return-void
.end method

.method public static final synthetic a(Lcom/jibo/apptoolkit/android/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jibo/apptoolkit/android/c;->e:Z

    return v0
.end method

.method public static final synthetic b(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/OnConnectionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->f:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    return-object v0
.end method

.method public static final synthetic c(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/CommandLibrary;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->g:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Lcom/jibo/apptoolkit/android/c;->j:I

    return v0
.end method

.method public static final synthetic d(Lcom/jibo/apptoolkit/android/c;)Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->b:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public static final synthetic e()I
    .locals 1

    sget v0, Lcom/jibo/apptoolkit/android/c;->k:I

    return v0
.end method

.method public static final synthetic e(Lcom/jibo/apptoolkit/android/c;)Lokhttp3/WebSocket;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->d:Lokhttp3/WebSocket;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Lcom/jibo/apptoolkit/android/c;->l:I

    return v0
.end method

.method public static final synthetic f(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/android/model/api/Certificates;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->h:Lcom/jibo/apptoolkit/android/model/api/Certificates;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, Lcom/jibo/apptoolkit/android/c;->o:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    nop

    :try_start_0
    sget-object v0, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c$a;->a(Lcom/jibo/apptoolkit/android/c$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jibo/apptoolkit/android/c;->a(I)V

    sget-object v0, Lcom/jibo/apptoolkit/android/a/a;->a:Lcom/jibo/apptoolkit/android/a/a;

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/c;->h:Lcom/jibo/apptoolkit/android/model/api/Certificates;

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/model/api/Certificates;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mCertificate.ipAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jibo/apptoolkit/android/a/a;->a(Ljava/lang/String;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/c;->c:Lokhttp3/OkHttpClient;

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wss://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/c;->h:Lcom/jibo/apptoolkit/android/model/api/Certificates;

    invoke-virtual {v2}, Lcom/jibo/apptoolkit/android/model/api/Certificates;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "7160"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/c;->c:Lokhttp3/OkHttpClient;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/android/c$b;

    invoke-direct {v0, p0}, Lcom/jibo/apptoolkit/android/c$b;-><init>(Lcom/jibo/apptoolkit/android/c;)V

    check-cast v0, Lokhttp3/WebSocketListener;

    invoke-virtual {v2, v1, v0}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/jibo/apptoolkit/android/c;->d:Lokhttp3/WebSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v1

    sget-object v2, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/c$a;->b(Lcom/jibo/apptoolkit/android/c$a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c;->f:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/c;->f:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Could not connect to the Jibo. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Could not connect to the Jibo. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jibo/apptoolkit/android/c;->e:Z

    sget-object v0, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c$a;->a(Lcom/jibo/apptoolkit/android/c$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jibo/apptoolkit/android/c;->a(I)V

    return-void
.end method
