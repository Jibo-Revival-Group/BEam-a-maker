.class public final Lcom/jibo/apptoolkit/android/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jibo/apptoolkit/protocol/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/android/c;-><init>(Lcom/jibo/apptoolkit/android/model/api/Certificates;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V
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
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/jibo/apptoolkit/android/SdkConnectionManager$1",
        "Lcom/jibo/apptoolkit/protocol/OnConnectionListener;",
        "(Lcom/jibo/apptoolkit/android/SdkConnectionManager;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V",
        "onConnected",
        "",
        "onConnectionFailed",
        "throwable",
        "",
        "onDisconnected",
        "code",
        "",
        "onSessionStarted",
        "romCommander",
        "Lcom/jibo/apptoolkit/protocol/CommandLibrary;",
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

.field final synthetic b:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/android/c;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jibo/apptoolkit/protocol/OnConnectionListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    iput-object p2, p0, Lcom/jibo/apptoolkit/android/c$1;->b:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 6

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    new-instance v1, Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/c;->d(Lcom/jibo/apptoolkit/android/c;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iget-object v3, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v3}, Lcom/jibo/apptoolkit/android/c;->e(Lcom/jibo/apptoolkit/android/c;)Lokhttp3/WebSocket;

    move-result-object v3

    iget-object v4, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v4}, Lcom/jibo/apptoolkit/android/c;->f(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/android/model/api/Certificates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jibo/apptoolkit/android/model/api/Certificates;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v5}, Lcom/jibo/apptoolkit/android/c;->b(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;-><init>(Ljavax/net/ssl/SSLContext;Lokhttp3/WebSocket;Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V

    invoke-static {v0, v1}, Lcom/jibo/apptoolkit/android/c;->a(Lcom/jibo/apptoolkit/android/c;Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->c(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->startSession()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->b:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnected()V

    :cond_1
    return-void
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->b:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/c;->b()V

    return-void
.end method

.method public onDisconnected(I)V
    .locals 1

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->a(Lcom/jibo/apptoolkit/android/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->c(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/c;->c(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->b:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onDisconnected(I)V

    :cond_1
    return-void
.end method

.method public onSessionStarted(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    .locals 2
    .param p1    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "romCommander"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/c$1;->b:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/c$1;->a:Lcom/jibo/apptoolkit/android/c;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/c;->c(Lcom/jibo/apptoolkit/android/c;)Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onSessionStarted(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    :cond_0
    return-void
.end method
