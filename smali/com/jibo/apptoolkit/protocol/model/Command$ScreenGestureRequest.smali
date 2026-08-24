.class public Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenGestureRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;-><init>()V

    .line 293
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->ScreenGesture:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    invoke-virtual {p0, v0}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest;->setStreamType(Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;)V

    .line 294
    invoke-virtual {p0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest;->setStreamFilter(Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;)V

    .line 295
    return-void
.end method


# virtual methods
.method public getScreenGestureFilter()Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest;->StreamFilter:Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;

    return-object v0
.end method

.method public getStreamType()Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest;->StreamType:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    return-object v0
.end method
