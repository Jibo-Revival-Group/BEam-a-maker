.class public interface abstract Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;
.super Ljava/lang/Object;
.source "TermsConditionView.kt"

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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0003H&J \u0010\r\u001a\u00020\u00032\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011H&J\u0008\u0010\u0012\u001a\u00020\u0003H&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;",
        "Lcom/everis/jibo/beamaker/base/BaseView;",
        "enabledButton",
        "",
        "boolean",
        "",
        "hideLoading",
        "registerWifiBroadcast",
        "revertChecked",
        "showDisabledRobotError",
        "showError",
        "showErrorWIFI",
        "showLoading",
        "startJiboConnect",
        "robots",
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
.method public abstract enabledButton(Z)V
.end method

.method public abstract hideLoading()V
.end method

.method public abstract registerWifiBroadcast()V
.end method

.method public abstract revertChecked()V
.end method

.method public abstract showDisabledRobotError()V
.end method

.method public abstract showError()V
.end method

.method public abstract showErrorWIFI()V
.end method

.method public abstract showLoading()V
.end method

.method public abstract startJiboConnect(Ljava/util/ArrayList;)V
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
