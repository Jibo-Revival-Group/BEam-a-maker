.class public final Lcom/jibo/apptoolkit/android/JiboRemoteControl$authenticate$$inlined$let$lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V
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
        "com/jibo/apptoolkit/android/JiboRemoteControl$authenticate$1$1",
        "Lretrofit2/Callback;",
        "Lcom/jibo/apptoolkit/protocol/api/Token;",
        "(Lcom/jibo/apptoolkit/android/JiboRemoteControl$authenticate$1;)V",
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
.field final synthetic a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

.field final synthetic b:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$authenticate$$inlined$let$lambda$1;->a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    iput-object p2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$authenticate$$inlined$let$lambda$1;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
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

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Something weird\'s happened along the way. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    const/4 v0, 0x0

    check-cast v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    invoke-static {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$setSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    :cond_1
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$authenticate$$inlined$let$lambda$1;->a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$authenticate$$inlined$let$lambda$1;->b:Landroid/support/v7/app/AppCompatActivity;

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->signIn(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getTAG$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getTAG$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "response.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Authorization problems. Please re-login."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;->onError(Ljava/lang/Throwable;)V

    :cond_2
    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    const/4 v0, 0x0

    check-cast v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    invoke-static {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$setSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    goto :goto_0
.end method
