.class public Lcom/jibo/apptoolkit/protocol/model/Command$SessionRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"

# interfaces
.implements Lcom/jibo/apptoolkit/protocol/model/Command$AtomicCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionRequest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 664
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->StartSession:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 665
    return-void
.end method
