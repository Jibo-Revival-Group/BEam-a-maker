.class public Lcom/jibo/apptoolkit/protocol/model/Command$EntityRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityRequest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;-><init>()V

    .line 427
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Entity:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$EntityRequest;->StreamType:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 428
    return-void
.end method
