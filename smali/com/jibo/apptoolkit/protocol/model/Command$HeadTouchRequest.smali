.class public Lcom/jibo/apptoolkit/protocol/model/Command$HeadTouchRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeadTouchRequest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;-><init>()V

    .line 346
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->HeadTouch:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$HeadTouchRequest;->StreamType:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 347
    return-void
.end method
