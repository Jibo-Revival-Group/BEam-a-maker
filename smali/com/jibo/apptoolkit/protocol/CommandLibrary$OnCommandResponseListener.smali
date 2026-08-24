.class public interface abstract Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;
.super Ljava/lang/Object;
.source "CommandLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/CommandLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCommandResponseListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onEvent(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
.end method

.method public abstract onEventError(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;)V
.end method

.method public abstract onListen(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onParseError()V
.end method

.method public abstract onPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V
.end method

.method public abstract onSocketError()V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method

.method public abstract onVideo(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;Ljava/io/InputStream;)V
.end method
