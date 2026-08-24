.class public final Lcom/jibo/apptoolkit/android/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/android/a;->a(Ljava/lang/String;Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/jibo/apptoolkit/protocol/api/Token;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J$\u0010\n\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/jibo/apptoolkit/android/ApiConnectionManager$getToken$1",
        "Lretrofit2/Callback;",
        "Lcom/jibo/apptoolkit/protocol/api/Token;",
        "(Lcom/jibo/apptoolkit/android/ApiConnectionManager;Lretrofit2/Callback;)V",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "t",
        "",
        "onResponse",
        "response",
        "Lretrofit2/Response;",
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
.field final synthetic a:Lcom/jibo/apptoolkit/android/a;

.field final synthetic b:Lretrofit2/Callback;


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/android/a;Lretrofit2/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/a$c;->a:Lcom/jibo/apptoolkit/android/a;

    iput-object p2, p0, Lcom/jibo/apptoolkit/android/a$c;->b:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/Token;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/a$c;->b:Lretrofit2/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/Token;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/Token;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/a$c;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/api/Token;

    invoke-static {v1, v0}, Lcom/jibo/apptoolkit/android/a;->a(Lcom/jibo/apptoolkit/android/a;Lcom/jibo/apptoolkit/protocol/api/Token;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/a$c;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/a;->b(Lcom/jibo/apptoolkit/android/a;)Lcom/jibo/apptoolkit/android/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/a$c;->a:Lcom/jibo/apptoolkit/android/a;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/a;->a(Lcom/jibo/apptoolkit/android/a;)Lcom/jibo/apptoolkit/protocol/api/Token;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jibo/apptoolkit/android/a$b;->onTokenRetrieved(Lcom/jibo/apptoolkit/protocol/api/Token;)V

    :cond_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/a$c;->b:Lretrofit2/Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    :cond_1
    return-void
.end method
