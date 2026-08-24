.class public final Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;
.super Ljava/lang/Object;
.source "GettingJibosRepositoryImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;
.implements Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGettingJibosRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GettingJibosRepositoryImpl.kt\ncom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl\n*L\n1#1,50:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\u000b2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;",
        "Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;",
        "Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;",
        "()V",
        "mCallback",
        "Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;",
        "setMCallback",
        "(Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;)V",
        "getJibos",
        "",
        "callback",
        "activity",
        "Landroid/support/v7/app/AppCompatActivity;",
        "isAuthenticated",
        "",
        "onCancel",
        "onError",
        "throwable",
        "",
        "onSuccess",
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
.field private mCallback:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJibos(Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1
    .param p1, "callback"    # Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;->mCallback:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;

    invoke-interface {p1}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;->onGettingJibosTransactionSuccessWithoutJibo()V

    return-void
.end method

.method public final getMCallback()Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;->mCallback:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;->mCallback:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;->onGettingJibosTransactionCancel()V

    .line 27
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;->mCallback:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;->onGettingJibosTransactionError(Ljava/lang/Throwable;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
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

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;->mCallback:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;->onGettingJibosTransactionSuccessWithoutJibo()V

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;->mCallback:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;->onGettingJibosTransactionSuccess(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final setMCallback(Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    iput-object p1, p0, Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepositoryImpl;->mCallback:Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;

    return-void
.end method
