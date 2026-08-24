.class final Lcom/jibo/apptoolkit/android/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/Response;",
        "kotlin.jvm.PlatformType",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "intercept"
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

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/a$e;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v4, 0x190

    if-lt v1, v4, :cond_2

    nop

    :try_start_0
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v1, v4, v5}, Lokio/BufferedSource;->request(J)Z

    :cond_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/jibo/apptoolkit/protocol/api/Errors;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gson().fromJson(errorJsonBody, Errors::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/jibo/apptoolkit/protocol/api/Errors;

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/a$e;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/a;->c(Lcom/jibo/apptoolkit/android/a;)Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-object v3

    :cond_3
    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v1

    sget-object v2, Lcom/jibo/apptoolkit/android/a;->a:Lcom/jibo/apptoolkit/android/a$a;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/a$a;->a(Lcom/jibo/apptoolkit/android/a$a;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
