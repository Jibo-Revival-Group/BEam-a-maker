.class public final Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;
.super Ljava/lang/Object;
.source "TermsAndConditionsPresenterImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;
.implements Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTermsAndConditionsPresenterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TermsAndConditionsPresenterImpl.kt\ncom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl\n*L\n1#1,134:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J\u0008\u0010\u0013\u001a\u00020\u0010H\u0016J\u0012\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016J\u0008\u0010\u0018\u001a\u00020\u0010H\u0016J\u0008\u0010\u0019\u001a\u00020\u0010H\u0016J\u0008\u0010\u001a\u001a\u00020\u0010H\u0016J\u0008\u0010\u001b\u001a\u00020\u0010H\u0016J\u0008\u0010\u001c\u001a\u00020\u0010H\u0016J\u0008\u0010\u001d\u001a\u00020\u0010H\u0016J\u0008\u0010\u001e\u001a\u00020\u0010H\u0016J\u0012\u0010\u001f\u001a\u00020\u00102\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J \u0010\"\u001a\u00020\u00102\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020%0$j\u0008\u0012\u0004\u0012\u00020%`&H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;",
        "Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;",
        "view",
        "Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;",
        "(Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;)V",
        "conn",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;",
        "getConn",
        "()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;",
        "setConn",
        "(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;)V",
        "mView",
        "getMView",
        "()Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;",
        "checkWifi",
        "",
        "errorLoginAnalytics",
        "initSession",
        "loginAnalytics",
        "onCreate",
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
        "Lkotlin/collections/ArrayList;",
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
.field private conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;)V
    .locals 1
    .param p1, "view"    # Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    .line 22
    new-instance v0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    return-void
.end method


# virtual methods
.method public checkWifi()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->showErrorWIFI()V

    .line 90
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->enabledButton(Z)V

    .line 91
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->revertChecked()V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->enabledButton(Z)V

    goto :goto_0
.end method

.method public errorLoginAnalytics()V
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 121
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnsuccessfulLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnsuccessfulLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnsuccessfulLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 123
    return-void
.end method

.method public final getConn()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    return-object v0
.end method

.method public final getMView()Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    return-object v0
.end method

.method public initSession()V
    .locals 4

    .prologue
    .line 69
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->showErrorWIFI()V

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->showLoading()V

    .line 80
    new-instance v0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    move-object v1, p0

    check-cast v1, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    new-instance v2, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;

    invoke-direct {v2}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;-><init>()V

    check-cast v2, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;

    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v3}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;-><init>(Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;Lcom/everis/jibo/beamaker/base/BaseActivity;)V

    .line 81
    .local v0, "gettingJibosUseCase":Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->run()V

    goto :goto_0
.end method

.method public loginAnalytics()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 59
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->showErrorWIFI()V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->registerWifiBroadcast()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public openSetting()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    :cond_0
    return-void
.end method

.method public presenterGettingJibosTransactionCancelled()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->hideLoading()V

    .line 117
    return-void
.end method

.method public presenterGettingJibosTransactionConnected()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public presenterGettingJibosTransactionError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->hideLoading()V

    .line 110
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->showError()V

    .line 111
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

    .line 101
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->hideLoading()V

    .line 102
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;->startJiboConnect(Ljava/util/ArrayList;)V

    .line 103
    return-void
.end method

.method public final setConn(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    return-void
.end method
