.class public final Lcom/jibo/apptoolkit/android/ui/SignInActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;,
        Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001e2\u00020\u00012\u00020\u0002:\u0002\u001e\u001fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0012\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u001a\u001a\u00020\u00122\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR(\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lcom/jibo/apptoolkit/android/ui/SignInActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;",
        "()V",
        "<set-?>",
        "",
        "code",
        "getCode",
        "()Ljava/lang/String;",
        "setCode",
        "(Ljava/lang/String;)V",
        "isActivityValid",
        "",
        "()Z",
        "state",
        "getState",
        "setState",
        "onBackPressed",
        "",
        "onCancel",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onError",
        "throwable",
        "",
        "onSuccess",
        "robots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Companion",
        "SignInViewClient",
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
.field public static final Companion:Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;

.field private static final c:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "PARAM_URL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "PARAM_ROBOTS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->Companion:Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;

    const-class v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->c:Ljava/lang/String;

    const-string v0, "PARAM_URL"

    sput-object v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->d:Ljava/lang/String;

    const-string v0, "PARAM_ROBOTS"

    sput-object v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final synthetic access$getCode$p(Lcom/jibo/apptoolkit/android/ui/SignInActivity;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPARAM_ROBOTS$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPARAM_URL$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getState$p(Lcom/jibo/apptoolkit/android/ui/SignInActivity;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isActivityValid$p(Lcom/jibo/apptoolkit/android/ui/SignInActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->a()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setCode$p(Lcom/jibo/apptoolkit/android/ui/SignInActivity;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setState$p(Lcom/jibo/apptoolkit/android/ui/SignInActivity;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->f:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->cancel()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCancel()V
    .locals 1

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->cancel()V

    invoke-virtual {p0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/jibo/apptoolkit/android/R$layout;->activity_sign_in:I

    invoke-virtual {p0, v0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->setContentView(I)V

    sget v0, Lcom/jibo/apptoolkit/android/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "webview"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "webview.settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v0, Lcom/jibo/apptoolkit/android/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "webview"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;

    invoke-direct {v1, p0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity$SignInViewClient;-><init>(Lcom/jibo/apptoolkit/android/ui/SignInActivity;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->Companion:Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;->getPARAM_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/jibo/apptoolkit/android/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->Companion:Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;

    invoke-virtual {v2}, Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;->getPARAM_URL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;)V"
        }
    .end annotation

    const-string v0, "robots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
