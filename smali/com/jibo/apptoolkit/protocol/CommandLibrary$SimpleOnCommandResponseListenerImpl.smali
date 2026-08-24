.class public Lcom/jibo/apptoolkit/protocol/CommandLibrary$SimpleOnCommandResponseListenerImpl;
.super Ljava/lang/Object;
.source "CommandLibrary.java"

# interfaces
.implements Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/CommandLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnCommandResponseListenerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 617
    return-void
.end method

.method public onEvent(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    .prologue
    .line 623
    return-void
.end method

.method public onEventError(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "errorData"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;

    .prologue
    .line 619
    return-void
.end method

.method public onListen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "speech"    # Ljava/lang/String;

    .prologue
    .line 629
    return-void
.end method

.method public onParseError()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public onPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 625
    return-void
.end method

.method public onSocketError()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 615
    return-void
.end method

.method public onVideo(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 627
    return-void
.end method
