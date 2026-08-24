.class final Lcom/jibo/apptoolkit/android/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/android/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/api/Token;Lcom/jibo/apptoolkit/android/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/Request;",
        "route",
        "Lokhttp3/Route;",
        "kotlin.jvm.PlatformType",
        "response",
        "Lokhttp3/Response;",
        "authenticate"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jibo/apptoolkit/android/a;


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/android/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/jibo/apptoolkit/android/a;->a:Lcom/jibo/apptoolkit/android/a$a;

    invoke-static {v0, p2}, Lcom/jibo/apptoolkit/android/a$a;->a(Lcom/jibo/apptoolkit/android/a$a;Lokhttp3/Response;)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/a;->b(Lcom/jibo/apptoolkit/android/a;)Lcom/jibo/apptoolkit/android/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jibo/apptoolkit/android/a$b;->onTokenRefreshFailure()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/a;->a(Lcom/jibo/apptoolkit/android/a;)Lcom/jibo/apptoolkit/protocol/api/Token;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/api/Token;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-virtual {v2, v0}, Lcom/jibo/apptoolkit/android/a;->b(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    :goto_1
    nop

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/api/Token;

    invoke-static {v2, v0}, Lcom/jibo/apptoolkit/android/a;->a(Lcom/jibo/apptoolkit/android/a;Lcom/jibo/apptoolkit/protocol/api/Token;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/a;->b(Lcom/jibo/apptoolkit/android/a;)Lcom/jibo/apptoolkit/android/a$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/a;->a(Lcom/jibo/apptoolkit/android/a;)Lcom/jibo/apptoolkit/protocol/api/Token;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jibo/apptoolkit/android/a$b;->onTokenRetrieved(Lcom/jibo/apptoolkit/protocol/api/Token;)V

    :cond_2
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/a;->a(Lcom/jibo/apptoolkit/android/a;)Lcom/jibo/apptoolkit/protocol/api/Token;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/api/Token;->getTokenType()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/a$f;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/a;->a(Lcom/jibo/apptoolkit/android/a;)Lcom/jibo/apptoolkit/protocol/api/Token;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/api/Token;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v2, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v2}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v2

    sget-object v3, Lcom/jibo/apptoolkit/android/a;->a:Lcom/jibo/apptoolkit/android/a$a;

    invoke-static {v3}, Lcom/jibo/apptoolkit/android/a$a;->a(Lcom/jibo/apptoolkit/android/a$a;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
