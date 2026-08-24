.class public interface abstract Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
.super Ljava/lang/Object;
.source "RomCommanderData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnJiboWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001c\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H&J\u001c\u0010\n\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u001c\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u001c\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010\u0012\u001a\u00020\u0003H&J$\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0008\u0010\u0017\u001a\u00020\u0003H&J\u0012\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;",
        "",
        "onJiboDisconnect",
        "",
        "code",
        "",
        "onJiboError",
        "transactionID",
        "",
        "errorMessage",
        "onJiboEvent",
        "event",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;",
        "onJiboEventError",
        "errorData",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;",
        "onJiboListen",
        "result",
        "onJiboParseError",
        "onJiboPhoto",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;",
        "inputStream",
        "Ljava/io/InputStream;",
        "onJiboSocketError",
        "onJiboSuccess",
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
.method public abstract onJiboDisconnect(I)V
.end method

.method public abstract onJiboError(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onJiboEvent(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onJiboEventError(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onJiboListen(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onJiboParseError()V
.end method

.method public abstract onJiboPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onJiboSocketError()V
.end method

.method public abstract onJiboSuccess(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
