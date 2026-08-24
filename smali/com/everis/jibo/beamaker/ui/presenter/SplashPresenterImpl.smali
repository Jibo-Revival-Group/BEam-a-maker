.class public final Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;
.super Ljava/lang/Object;
.source "SplashPresenterImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenter;
.implements Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u0011H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016J\u0008\u0010\u0018\u001a\u00020\u0011H\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016J\u0008\u0010\u001a\u001a\u00020\u0011H\u0016J\u0008\u0010\u001b\u001a\u00020\u0011H\u0016J\u0012\u0010\u001c\u001a\u00020\u00112\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020\u00112\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;",
        "Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenter;",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;",
        "view",
        "Lcom/everis/jibo/beamaker/ui/view/SplashView;",
        "(Lcom/everis/jibo/beamaker/ui/view/SplashView;)V",
        "mGettingJibosUseCase",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;",
        "getMGettingJibosUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;",
        "setMGettingJibosUseCase",
        "(Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;)V",
        "mView",
        "getMView",
        "()Lcom/everis/jibo/beamaker/ui/view/SplashView;",
        "getView",
        "onCreate",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onResume",
        "onStart",
        "onStop",
        "openSetting",
        "presenterGettingJibosTransactionCancelled",
        "presenterGettingJibosTransactionConnected",
        "presenterGettingJibosTransactionError",
        "throwable",
        "",
        "presenterGettingJibosTransactionSuccess",
        "robots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private mGettingJibosUseCase:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mView:Lcom/everis/jibo/beamaker/ui/view/SplashView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Lcom/everis/jibo/beamaker/ui/view/SplashView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/ui/view/SplashView;)V
    .locals 1
    .param p1, "view"    # Lcom/everis/jibo/beamaker/ui/view/SplashView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->view:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    .line 20
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->view:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    return-void
.end method


# virtual methods
.method public final getMGettingJibosUseCase()Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mGettingJibosUseCase:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    return-object v0
.end method

.method public final getMView()Lcom/everis/jibo/beamaker/ui/view/SplashView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    return-object v0
.end method

.method public final getView()Lcom/everis/jibo/beamaker/ui/view/SplashView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->view:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 30
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mGettingJibosUseCase:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x0

    check-cast v1, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    iput-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mGettingJibosUseCase:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    .line 33
    :cond_0
    new-instance v3, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    move-object v1, p0

    check-cast v1, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    new-instance v2, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;

    invoke-direct {v2}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;-><init>()V

    check-cast v2, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;

    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    invoke-interface {v4}, Lcom/everis/jibo/beamaker/ui/view/SplashView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {v3, v1, v2, v4}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;-><init>(Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;Lcom/everis/jibo/beamaker/base/BaseActivity;)V

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mGettingJibosUseCase:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    .line 35
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mGettingJibosUseCase:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->isAuthenticated()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 37
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl$onResume$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl$onResume$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 43
    .restart local v0    # "handler":Landroid/os/Handler;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl$onResume$2;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl$onResume$2;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public openSetting()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/SplashView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_0
    return-void
.end method

.method public presenterGettingJibosTransactionCancelled()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/SplashView;->showTermsConditions()V

    .line 83
    return-void
.end method

.method public presenterGettingJibosTransactionConnected()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public presenterGettingJibosTransactionError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/SplashView;->showTermsConditions()V

    .line 79
    return-void
.end method

.method public presenterGettingJibosTransactionSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "robots"    # Ljava/util/ArrayList;
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

    .prologue
    const-string v0, "robots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/SplashView;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/view/SplashView;->startJiboConnect(Ljava/util/ArrayList;)V

    .line 72
    return-void
.end method

.method public final setMGettingJibosUseCase(Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->mGettingJibosUseCase:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    return-void
.end method
