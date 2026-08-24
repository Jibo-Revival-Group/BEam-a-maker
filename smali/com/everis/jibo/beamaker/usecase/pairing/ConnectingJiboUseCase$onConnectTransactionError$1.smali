.class final Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionError$1;
.super Ljava/lang/Object;
.source "ConnectingJiboUseCase.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->onConnectTransactionError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $throwable:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionError$1;->this$0:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionError$1;->$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionError$1;->this$0:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->getMCallback()Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionError$1;->$throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;->presenterConnectingTransactionError(Ljava/lang/Throwable;)V

    .line 53
    :cond_0
    return-void
.end method
