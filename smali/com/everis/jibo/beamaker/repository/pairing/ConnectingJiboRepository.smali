.class public interface abstract Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository;
.super Ljava/lang/Object;
.source "ConnectingJiboRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\tJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository;",
        "",
        "cancelConnect",
        "",
        "getConnect",
        "robot",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "callback",
        "Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;",
        "GetJiboConnectTransactionCallback",
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
.method public abstract cancelConnect()V
.end method

.method public abstract getConnect(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;)V
    .param p1    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
