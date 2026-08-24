.class public final Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;
.super Ljava/lang/Object;
.source "ConnectingJiboUseCase.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/usecase/termsConditions/UseCase;
.implements Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0019H\u0016J\u0008\u0010!\u001a\u00020\u0019H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006#"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/UseCase;",
        "Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;",
        "robot",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "callback",
        "Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;",
        "(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;)V",
        "mCallback",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;",
        "setMCallback",
        "(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;)V",
        "mConnectingRepository",
        "Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;",
        "getMConnectingRepository",
        "()Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;",
        "setMConnectingRepository",
        "(Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;)V",
        "mRobot",
        "getMRobot",
        "()Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "setMRobot",
        "(Lcom/jibo/apptoolkit/android/model/api/Robot;)V",
        "cancel",
        "",
        "onConnectTransactionError",
        "throwable",
        "",
        "onConnectTransactionStarted",
        "romCommander",
        "Lcom/jibo/apptoolkit/protocol/CommandLibrary;",
        "onConnectTransactionSuccess",
        "run",
        "ConnectingJiboUseCaseCallback",
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
.field private mCallback:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mConnectingRepository:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;)V
    .locals 1
    .param p1, "robot"    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "robot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;

    .line 17
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    .line 18
    new-instance v0, Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mConnectingRepository:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mConnectingRepository:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;->cancelConnect()V

    .line 27
    return-void
.end method

.method public final getMCallback()Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;

    return-object v0
.end method

.method public final getMConnectingRepository()Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mConnectingRepository:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;

    return-object v0
.end method

.method public final getMRobot()Lcom/jibo/apptoolkit/android/model/api/Robot;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    return-object v0
.end method

.method public onConnectTransactionError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "throwable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;-><init>()V

    .line 50
    .local v0, "mainThread":Lcom/everis/jibo/beamaker/repository/MainThreadImpl;
    new-instance v1, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionError$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionError$1;-><init>(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;->post(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public onConnectTransactionStarted(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    .locals 2
    .param p1, "romCommander"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    new-instance v0, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;-><init>()V

    .line 32
    .local v0, "mainThread":Lcom/everis/jibo/beamaker/repository/MainThreadImpl;
    new-instance v1, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionStarted$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionStarted$1;-><init>(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;->post(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public onConnectTransactionSuccess()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;-><init>()V

    .line 41
    .local v0, "mainThread":Lcom/everis/jibo/beamaker/repository/MainThreadImpl;
    new-instance v1, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionSuccess$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionSuccess$1;-><init>(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;->post(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mConnectingRepository:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    check-cast p0, Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;
    invoke-virtual {v0, v1, p0}, Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;->getConnect(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;)V

    .line 23
    return-void
.end method

.method public final setMCallback(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;

    return-void
.end method

.method public final setMConnectingRepository(Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mConnectingRepository:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;

    return-void
.end method

.method public final setMRobot(Lcom/jibo/apptoolkit/android/model/api/Robot;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    return-void
.end method
