.class public interface abstract Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;
.super Ljava/lang/Object;
.source "PairingPresenter.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/base/BasePresenter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0003H&J\u0008\u0010\r\u001a\u00020\u0003H&J\u0008\u0010\u000e\u001a\u00020\u0003H&J\u0008\u0010\u000f\u001a\u00020\u0003H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;",
        "Lcom/everis/jibo/beamaker/base/BasePresenter;",
        "clearCommander",
        "",
        "connectJibo",
        "robot",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "errorLoginAnalytics",
        "errorWifiAnalytics",
        "logout",
        "openJiboSetting",
        "openSetting",
        "pairErrorAnalytics",
        "pairedAnalytics",
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


# virtual methods
.method public abstract clearCommander()V
.end method

.method public abstract connectJibo(Lcom/jibo/apptoolkit/android/model/api/Robot;)V
    .param p1    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract errorLoginAnalytics()V
.end method

.method public abstract errorWifiAnalytics()V
.end method

.method public abstract logout()V
.end method

.method public abstract openJiboSetting()V
.end method

.method public abstract openSetting()V
.end method

.method public abstract pairErrorAnalytics()V
.end method

.method public abstract pairedAnalytics()V
.end method

.method public abstract refresh()V
.end method

.method public abstract unpairedAnalytics()V
.end method
