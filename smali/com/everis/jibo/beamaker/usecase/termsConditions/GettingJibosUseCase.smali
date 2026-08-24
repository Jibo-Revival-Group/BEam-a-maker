.class public final Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;
.super Ljava/lang/Object;
.source "GettingJibosUseCase.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/usecase/termsConditions/UseCase;
.implements Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGettingJibosUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GettingJibosUseCase.kt\ncom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase\n*L\n1#1,55:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u0012\u0010\u0015\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0011H\u0016J \u0010\u0019\u001a\u00020\u00112\u0016\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\u0008\u0012\u0004\u0012\u00020\u001c`\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0011H\u0016J\u0008\u0010\u001f\u001a\u00020\u0011H\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/UseCase;",
        "Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;",
        "mCallback",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;",
        "mGettingJibosRepository",
        "Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;",
        "mActivity",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "(Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;Lcom/everis/jibo/beamaker/base/BaseActivity;)V",
        "getMActivity",
        "()Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;",
        "getMGettingJibosRepository",
        "()Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;",
        "cancel",
        "",
        "isAuthenticated",
        "",
        "onGettingJibosTransactionCancel",
        "onGettingJibosTransactionError",
        "throwable",
        "",
        "onGettingJibosTransactionStarted",
        "onGettingJibosTransactionSuccess",
        "robots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Lkotlin/collections/ArrayList;",
        "onGettingJibosTransactionSuccessWithoutJibo",
        "run",
        "GettingJibosUseCaseCallback",
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
.field private final mActivity:Lcom/everis/jibo/beamaker/base/BaseActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mCallback:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mGettingJibosRepository:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;Lcom/everis/jibo/beamaker/base/BaseActivity;)V
    .locals 1
    .param p1, "mCallback"    # Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "mGettingJibosRepository"    # Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "mActivity"    # Lcom/everis/jibo/beamaker/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "mCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mGettingJibosRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mActivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mGettingJibosRepository:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;

    iput-object p3, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mActivity:Lcom/everis/jibo/beamaker/base/BaseActivity;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final getMActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mActivity:Lcom/everis/jibo/beamaker/base/BaseActivity;

    return-object v0
.end method

.method public final getMCallback()Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    return-object v0
.end method

.method public final getMGettingJibosRepository()Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mGettingJibosRepository:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;

    return-object v0
.end method

.method public final isAuthenticated()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mGettingJibosRepository:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public onGettingJibosTransactionCancel()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;->presenterGettingJibosTransactionCancelled()V

    .line 38
    return-void
.end method

.method public onGettingJibosTransactionError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;->presenterGettingJibosTransactionError(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public onGettingJibosTransactionStarted()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onGettingJibosTransactionSuccess(Ljava/util/ArrayList;)V
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

    .line 29
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;->presenterGettingJibosTransactionSuccess(Ljava/util/ArrayList;)V

    .line 30
    return-void
.end method

.method public onGettingJibosTransactionSuccessWithoutJibo()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase$GettingJibosUseCaseCallback;->presenterGettingJibosTransactionSuccess(Ljava/util/ArrayList;)V

    .line 42
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 21
    iget-object v2, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mGettingJibosRepository:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/usecase/termsConditions/GettingJibosUseCase;->mActivity:Lcom/everis/jibo/beamaker/base/BaseActivity;

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-interface {v2, v0, v1}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;->getJibos(Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;Landroid/support/v7/app/AppCompatActivity;)V

    .line 22
    return-void
.end method
