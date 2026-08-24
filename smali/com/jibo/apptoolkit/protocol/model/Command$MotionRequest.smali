.class public Lcom/jibo/apptoolkit/protocol/model/Command$MotionRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionRequest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;-><init>()V

    .line 317
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Motion:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$MotionRequest;->StreamType:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 318
    return-void
.end method
