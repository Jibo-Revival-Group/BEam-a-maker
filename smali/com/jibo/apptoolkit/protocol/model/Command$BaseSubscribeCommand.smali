.class public Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSubscribeCommand"
.end annotation


# instance fields
.field StreamFilter:Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;

.field StreamType:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Subscribe:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 161
    return-void
.end method


# virtual methods
.method public getStreamFilter()Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;->StreamFilter:Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;

    return-object v0
.end method

.method public getStreamType()Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;->StreamType:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    return-object v0
.end method

.method public setStreamFilter(Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;->StreamFilter:Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;

    .line 181
    return-void
.end method

.method public setStreamType(Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;)V
    .locals 0
    .param p1, "type"    # Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;->StreamType:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 176
    return-void
.end method
