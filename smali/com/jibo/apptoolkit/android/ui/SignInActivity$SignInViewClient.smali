.class final Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/android/ui/SignInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SignInViewClient"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;",
        "Landroid/webkit/WebViewClient;",
        "(Lcom/jibo/apptoolkit/android/ui/SignInActivity;)V",
        "shouldOverrideUrlLoading",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
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
.field final synthetic a:Lcom/jibo/apptoolkit/android/ui/SignInActivity;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/android/ui/SignInActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;->a:Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;->a:Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->access$isActivityValid$p(Lcom/jibo/apptoolkit/android/ui/SignInActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "uri"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "jibo-rom"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "callback"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "error"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    nop

    :try_start_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;->a:Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    const-string v3, "code"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->access$setCode$p(Lcom/jibo/apptoolkit/android/ui/SignInActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;->a:Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->access$setState$p(Lcom/jibo/apptoolkit/android/ui/SignInActivity;Ljava/lang/String;)V

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v2

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->getParentSignInActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;->a:Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    check-cast v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    invoke-virtual {v2, v3, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->signIn(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v3}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v3

    sget-object v4, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->Companion:Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;

    invoke-virtual {v4}, Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;->getTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v2, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->cancel()V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;->a:Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->finish()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->cancel()V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;->a:Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->finish()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
