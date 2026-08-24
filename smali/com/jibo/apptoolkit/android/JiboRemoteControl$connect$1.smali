.class public final Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/android/JiboRemoteControl;->connect(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "com/jibo/apptoolkit/android/JiboRemoteControl$connect$1",
        "Ljava/lang/Runnable;",
        "(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V",
        "MAX_TRIES",
        "",
        "retries",
        "run",
        "",
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
.field final synthetic a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

.field final synthetic b:Lcom/jibo/apptoolkit/android/model/api/Robot;

.field final synthetic c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

.field private final d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            "Lcom/jibo/apptoolkit/protocol/OnConnectionListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    iput-object p2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->b:Lcom/jibo/apptoolkit/android/model/api/Robot;

    iput-object p3, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0x191

    const/4 v1, 0x0

    nop

    :try_start_0
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSRomApiConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->b:Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v2}, Lcom/jibo/apptoolkit/android/model/api/Robot;->getRobotName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "robot.robotName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/jibo/apptoolkit/android/a;->c(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lretrofit2/Response;->code()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Authorization problems. Please re-login."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v3, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Error connecting robot. Please enable Remote Control Mode."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Something weird\'s happened along the way. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->access$getMCertificatePollerThread$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_b

    :cond_4
    :goto_2
    iget v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->e:I

    iget v2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->d:I

    if-ge v0, v2, :cond_b

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->access$getMCertificatePollerThread$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_b

    nop

    :try_start_2
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSRomApiConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->b:Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v2}, Lcom/jibo/apptoolkit/android/model/api/Robot;->getRobotName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "robot.robotName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/jibo/apptoolkit/android/a;->d(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/android/model/api/Certificates;

    const-class v2, Lcom/jibo/apptoolkit/android/model/api/Certificates;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->b:Lcom/jibo/apptoolkit/android/model/api/Robot;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getMCertificatePollerHandler$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$mCertificatePollerHandler$1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$mCertificatePollerHandler$1;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v2}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v2

    sget-object v4, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v4}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getTAG$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not fetch certificates"

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v2, :cond_4

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v4, "Something weird\'s happened along the way. Please try again..."

    invoke-direct {v0, v4}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_7
    move-object v2, v1

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_a

    :try_start_4
    invoke-virtual {v3}, Lretrofit2/Response;->code()I

    move-result v0

    if-ne v0, v6, :cond_a

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v4, "Authorization problems. Please re-login."

    invoke-direct {v0, v4}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->e:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    nop

    const-wide/16 v4, 0x7d0

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_b
    :try_start_6
    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;->c:Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Could not connect to the Jibo. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;->onConnectionFailed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1
.end method
