.class public final Lcom/jibo/apptoolkit/android/c$b;
.super Lokhttp3/WebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/android/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J$\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001c\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001c\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "com/jibo/apptoolkit/android/SdkConnectionManager$connect$1",
        "Lokhttp3/WebSocketListener;",
        "(Lcom/jibo/apptoolkit/android/SdkConnectionManager;)V",
        "onClosed",
        "",
        "webSocket",
        "Lokhttp3/WebSocket;",
        "code",
        "",
        "reason",
        "",
        "onClosing",
        "onFailure",
        "t",
        "",
        "response",
        "Lokhttp3/Response;",
        "onMessage",
        "text",
        "bytes",
        "Lokio/ByteString;",
        "onOpen",
        "apptoolkit-android-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jibo/apptoolkit/android/c;


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/android/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 4
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    sget-object v1, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/c$a;->b(Lcom/jibo/apptoolkit/android/c$a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->b(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onDisconnected(I)V

    :cond_0
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 4
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    sget-object v1, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/c$a;->b(Lcom/jibo/apptoolkit/android/c$a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c$a;->c(Lcom/jibo/apptoolkit/android/c$a;)I

    move-result v0

    if-lt p2, v0, :cond_0

    sget-object v0, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c$a;->d(Lcom/jibo/apptoolkit/android/c$a;)I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0, p2}, Lcom/jibo/apptoolkit/android/c;->a(Lcom/jibo/apptoolkit/android/c;I)V

    :cond_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 4
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v1

    sget-object v0, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c$a;->b(Lcom/jibo/apptoolkit/android/c$a;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    sget-object v1, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/c$a;->e(Lcom/jibo/apptoolkit/android/c$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jibo/apptoolkit/android/c;->a(Lcom/jibo/apptoolkit/android/c;I)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->b(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Something weird\'s happened along the way. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    sget-object v1, Lcom/jibo/apptoolkit/android/c;->a:Lcom/jibo/apptoolkit/android/c$a;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/c$a;->b(Lcom/jibo/apptoolkit/android/c$a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiving : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->c(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->c(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->parseJiboResponse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 0
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 2
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jibo/apptoolkit/android/c;->a(Lcom/jibo/apptoolkit/android/c;Z)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$b;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->b(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnected()V

    :cond_0
    return-void
.end method
