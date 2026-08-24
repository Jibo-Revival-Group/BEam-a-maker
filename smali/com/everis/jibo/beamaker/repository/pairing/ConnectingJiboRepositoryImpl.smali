.class public final Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;
.super Ljava/lang/Object;
.source "ConnectingJiboRepositoryImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepositoryImpl;",
        "Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository;",
        "()V",
        "cancelConnect",
        "",
        "getConnect",
        "robot",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "callback",
        "Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelConnect()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->jiboCancel()V

    .line 25
    return-void
.end method

.method public getConnect(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;)V
    .locals 1
    .param p1, "robot"    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "robot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0, p1, p2}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->jiboConnect(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;)V

    .line 21
    return-void
.end method
