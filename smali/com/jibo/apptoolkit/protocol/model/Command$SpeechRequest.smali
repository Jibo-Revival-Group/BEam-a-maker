.class public Lcom/jibo/apptoolkit/protocol/model/Command$SpeechRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeechRequest"
.end annotation


# instance fields
.field listen:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Listen"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;-><init>()V

    .line 331
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Speech:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$SpeechRequest;->StreamType:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 332
    iput-boolean p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$SpeechRequest;->listen:Z

    .line 333
    return-void
.end method
