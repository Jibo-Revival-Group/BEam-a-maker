.class public interface abstract Lcom/everis/jibo/beamaker/ui/view/PairingView;
.super Ljava/lang/Object;
.source "PairingView.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/base/BaseView;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u0003H&J\u0008\u0010\u000f\u001a\u00020\u0003H&J \u0010\u0010\u001a\u00020\u00032\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\u0008\u0012\u0004\u0012\u00020\u0013`\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0003H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/view/PairingView;",
        "Lcom/everis/jibo/beamaker/base/BaseView;",
        "changeToConnected",
        "",
        "closeConnectingDialog",
        "hideLoading",
        "openScratchView",
        "registerWifiBroadcast",
        "showConnectError",
        "showConnectingDialog",
        "showDisabledRobotError",
        "showError",
        "message",
        "",
        "showErrorWIFI",
        "showLoading",
        "showRobots",
        "mRobots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Lkotlin/collections/ArrayList;",
        "unregisterWifiBroadcast",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# virtual methods
.method public abstract changeToConnected()V
.end method

.method public abstract closeConnectingDialog()V
.end method

.method public abstract hideLoading()V
.end method

.method public abstract openScratchView()V
.end method

.method public abstract registerWifiBroadcast()V
.end method

.method public abstract showConnectError()V
.end method

.method public abstract showConnectingDialog()V
.end method

.method public abstract showDisabledRobotError()V
.end method

.method public abstract showError(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showErrorWIFI()V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showRobots(Ljava/util/ArrayList;)V
    .param p1    # Ljava/util/ArrayList;
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
.end method

.method public abstract unregisterWifiBroadcast()V
.end method
