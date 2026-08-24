.class final Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionSuccess$1;
.super Ljava/lang/Object;
.source "ConnectingJiboUseCase.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->onConnectTransactionSuccess()V
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionSuccess$1;->this$0:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$onConnectTransactionSuccess$1;->this$0:Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase;->getMCallback()Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/usecase/pairing/ConnectingJiboUseCase$ConnectingJiboUseCaseCallback;->presenterConnectingTransactionSuccess()V

    .line 44
    :cond_0
    return-void
.end method
