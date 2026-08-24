.class public final Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangesReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "connectivityListener",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;",
        "(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;)V",
        "mConnectivityListener",
        "getMConnectivityListener",
        "()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field private final mConnectivityListener:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;)V
    .locals 1
    .param p1, "connectivityListener"    # Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "connectivityListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;->mConnectivityListener:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;

    return-void
.end method


# virtual methods
.method public final getMConnectivityListener()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;->mConnectivityListener:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 15
    new-instance v0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;-><init>()V

    .line 16
    .local v0, "conn":Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;->mConnectivityListener:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;

    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;->onWifiConnected(Z)V

    .line 17
    return-void
.end method
