.class public final Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;
.super Ljava/lang/Object;
.source "PairingPresenterImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;
.implements Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;
.implements Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingPresenterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingPresenterImpl.kt\ncom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl\n*L\n1#1,284:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0015H\u0016J\u0008\u0010)\u001a\u00020&H\u0016J\u0008\u0010*\u001a\u00020&H\u0016J\u0008\u0010+\u001a\u00020&H\u0016J\u0012\u0010,\u001a\u00020&2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0008\u0010/\u001a\u00020&H\u0016J\u0008\u00100\u001a\u00020&H\u0016J\u0008\u00101\u001a\u00020&H\u0016J\u0008\u00102\u001a\u00020&H\u0016J\u0008\u00103\u001a\u00020&H\u0016J\u0008\u00104\u001a\u00020&H\u0016J\u0008\u00105\u001a\u00020&H\u0016J\u0008\u00106\u001a\u00020&H\u0016J\u0008\u00107\u001a\u00020&H\u0016J\u0012\u00108\u001a\u00020&2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0010\u0010;\u001a\u00020&2\u0006\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u00020&H\u0016J\u0008\u0010?\u001a\u00020&H\u0016J\u0008\u0010@\u001a\u00020&H\u0016J\u0012\u0010A\u001a\u00020&2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J \u0010B\u001a\u00020&2\u0016\u0010C\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u0016H\u0016J\u0008\u0010D\u001a\u00020&H\u0016J\u0008\u0010E\u001a\u00020&H\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R*\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u0006R\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006F"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;",
        "Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;",
        "Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;",
        "view",
        "Lcom/everis/jibo/beamaker/ui/view/PairingView;",
        "(Lcom/everis/jibo/beamaker/ui/view/PairingView;)V",
        "conn",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;",
        "getConn",
        "()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;",
        "setConn",
        "(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;)V",
        "connectingJiboUseCase",
        "Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;",
        "getConnectingJiboUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;",
        "setConnectingJiboUseCase",
        "(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;)V",
        "mRobots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Lkotlin/collections/ArrayList;",
        "getMRobots",
        "()Ljava/util/ArrayList;",
        "setMRobots",
        "(Ljava/util/ArrayList;)V",
        "mView",
        "getMView",
        "()Lcom/everis/jibo/beamaker/ui/view/PairingView;",
        "setMView",
        "onErrorActive",
        "",
        "getOnErrorActive",
        "()Z",
        "setOnErrorActive",
        "(Z)V",
        "clearCommander",
        "",
        "connectJibo",
        "robot",
        "errorLoginAnalytics",
        "errorWifiAnalytics",
        "logout",
        "onCreate",
        "bundle",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onResume",
        "onStart",
        "onStop",
        "openJiboSetting",
        "openSetting",
        "pairErrorAnalytics",
        "pairedAnalytics",
        "presenterConnectingTransactionConnected",
        "romCommander",
        "Lcom/jibo/apptoolkit/protocol/CommandLibrary;",
        "presenterConnectingTransactionError",
        "throwable",
        "",
        "presenterConnectingTransactionSuccess",
        "presenterGettingJibosTransactionCancelled",
        "presenterGettingJibosTransactionConnected",
        "presenterGettingJibosTransactionError",
        "presenterGettingJibosTransactionSuccess",
        "robots",
        "refresh",
        "unpairedAnalytics",
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

.field private connectingJiboUseCase:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public mRobots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onErrorActive:Z


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/ui/view/PairingView;)V
    .locals 1
    .param p1, "view"    # Lcom/everis/jibo/beamaker/ui/view/PairingView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    .line 42
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    return-void
.end method


# virtual methods
.method public clearCommander()V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->getMRomCommander()Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->clearListenersAndState()V

    .line 160
    :cond_0
    return-void
.end method

.method public connectJibo(Lcom/jibo/apptoolkit/android/model/api/Robot;)V
    .locals 3
    .param p1, "robot"    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const-string v0, "robot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showErrorWIFI()V

    .line 107
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 91
    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    .line 97
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->registerWifiBroadcast()V

    .line 99
    :cond_3
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setMRobot(Lcom/jibo/apptoolkit/android/model/api/Robot;)V

    .line 101
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->connectingJiboUseCase:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 102
    check-cast v0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->connectingJiboUseCase:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showConnectingDialog()V

    .line 105
    :cond_5
    new-instance v1, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;

    invoke-direct {v1, p1, v0}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;-><init>(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;)V

    iput-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->connectingJiboUseCase:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    .line 106
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->connectingJiboUseCase:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->run()V

    goto :goto_1
.end method

.method public errorLoginAnalytics()V
    .locals 4

    .prologue
    .line 256
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 257
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnsuccessfulLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnsuccessfulLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnsuccessfulLogin:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 259
    return-void

    .line 258
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public errorWifiAnalytics()V
    .locals 4

    .prologue
    .line 262
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 263
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMMessageErrorWifi:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMMessageErrorWifi:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMMessageErrorWifi:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 265
    return-void

    .line 264
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getConn()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    return-object v0
.end method

.method public final getConnectingJiboUseCase()Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->connectingJiboUseCase:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    return-object v0
.end method

.method public final getMRobots()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mRobots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "mRobots"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMView()Lcom/everis/jibo/beamaker/ui/view/PairingView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    return-object v0
.end method

.method public final getOnErrorActive()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    return v0
.end method

.method public logout()V
    .locals 3

    .prologue
    .line 176
    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->logOut()V

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    :goto_0
    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/everis/jibo/beamaker/ui/activities/TermsAndConditionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->finish()V

    .line 182
    :cond_1
    return-void

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    :goto_0
    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showErrorWIFI()V

    .line 67
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->registerWifiBroadcast()V

    .line 56
    :cond_3
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 57
    .local v0, "it":Landroid/os/Bundle;
    const-class v1, Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "it.getParcelableArrayList(Robot::class.java.name)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mRobots:Ljava/util/ArrayList;

    .line 59
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mRobots:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    const-string v3, "mRobots"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1, v2}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showRobots(Ljava/util/ArrayList;)V

    .line 61
    :cond_5
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mRobots:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    const-string v2, "mRobots"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showConnectError()V

    .line 64
    :cond_7
    nop

    .line 56
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    check-cast v0, Lcom/everis/jibo/beamaker/ui/view/PairingView;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public openJiboSetting()V
    .locals 3

    .prologue
    .line 163
    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMSettingApp;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMSettingApp;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.content.Context"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->getMRobot()Lcom/jibo/apptoolkit/android/model/api/Robot;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/model/api/Robot;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/everis/jibo/beamaker/utils/BAMSettingApp;->openRobot(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    return-void

    .line 163
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public openSetting()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    :cond_0
    return-void
.end method

.method public pairErrorAnalytics()V
    .locals 4

    .prologue
    .line 280
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 281
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMPairError:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMPairError:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMPairError:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 283
    return-void

    .line 282
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pairedAnalytics()V
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 269
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMPaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMPaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMPaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public presenterConnectingTransactionConnected(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    .locals 4
    .param p1, "romCommander"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 114
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setRomCommander(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    .line 115
    sget-object v2, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    const/4 v1, 0x0

    check-cast v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setMOnJiboWrapper(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;)V

    .line 118
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->changeToConnected()V

    .line 120
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 121
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl$presenterConnectingTransactionConnected$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl$presenterConnectingTransactionConnected$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 124
    const-wide/16 v2, 0xfa0

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public presenterConnectingTransactionError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v1, "throwable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->closeConnectingDialog()V

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "Error connecting robot. Please enable Remote Control Mode"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v2, v4, v5, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showDisabledRobotError()V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    :goto_1
    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 135
    iget-boolean v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    if-nez v1, :cond_1

    .line 136
    iput-boolean v6, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    .line 137
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->unregisterWifiBroadcast()V

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showErrorWIFI()V

    goto :goto_0

    :cond_4
    move-object v1, v3

    .line 134
    goto :goto_1

    .line 142
    :cond_5
    iput-boolean v6, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    .line 144
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->getMRomCommander()Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    :goto_2
    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CODE"

    sget-object v2, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getCONNECTION_DISRUPTED()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-class v1, Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mRobots:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    const-string v3, "mRobots"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x4020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    move-object v1, v3

    .line 145
    goto :goto_2

    .line 152
    :cond_8
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showConnectError()V

    goto :goto_0
.end method

.method public presenterConnectingTransactionSuccess()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public presenterGettingJibosTransactionCancelled()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->hideLoading()V

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showErrorWIFI()V

    .line 245
    :cond_1
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    if-nez v0, :cond_2

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    .line 247
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->unregisterWifiBroadcast()V

    .line 252
    :cond_2
    :goto_1
    return-void

    .line 240
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_2

    const-string v1, "Oops! Something went wrong."

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public presenterGettingJibosTransactionConnected()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public presenterGettingJibosTransactionError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 220
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->hideLoading()V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showErrorWIFI()V

    .line 227
    :cond_1
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    if-nez v0, :cond_2

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    .line 229
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->unregisterWifiBroadcast()V

    .line 234
    :cond_2
    :goto_1
    return-void

    .line 222
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_2

    const-string v1, "Oops! Something went wrong."

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showError(Ljava/lang/String;)V

    goto :goto_1
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

    .line 207
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->hideLoading()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showRobots(Ljava/util/ArrayList;)V

    .line 210
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showConnectError()V

    .line 213
    :cond_2
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    :goto_0
    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showErrorWIFI()V

    .line 203
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v1, v3

    .line 190
    goto :goto_0

    .line 195
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    .line 196
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->registerWifiBroadcast()V

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->showLoading()V

    .line 199
    :cond_4
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_0

    .line 200
    new-instance v0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;

    move-object v1, p0

    check-cast v1, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    new-instance v2, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;

    invoke-direct {v2}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;-><init>()V

    check-cast v2, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;

    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_7

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.everis.jibo.beamaker.base.BaseActivity"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v1, v3

    .line 199
    goto :goto_2

    .line 200
    :cond_7
    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;-><init>(Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;Lcom/everis/jibo/beamaker/base/BaseActivity;)V

    .line 201
    .local v0, "gettingJibosUseCase":Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->run()V

    goto :goto_1
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

    .line 37
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->conn:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    return-void
.end method

.method public final setConnectingJiboUseCase(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->connectingJiboUseCase:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    return-void
.end method

.method public final setMRobots(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
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
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mRobots:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMView(Lcom/everis/jibo/beamaker/ui/view/PairingView;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/view/PairingView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    return-void
.end method

.method public final setOnErrorActive(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->onErrorActive:Z

    return-void
.end method

.method public unpairedAnalytics()V
    .locals 4

    .prologue
    .line 274
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 275
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnpaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnpaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/PairingView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/PairingView;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnpaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 277
    return-void

    .line 276
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
