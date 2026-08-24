.class public Lcom/jibo/apptoolkit/protocol/model/Command$CancelRequest;
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
    name = "CancelRequest"
.end annotation


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 407
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Cancel:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 408
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$CancelRequest;->ID:Ljava/lang/String;

    .line 409
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$CancelRequest;->ID:Ljava/lang/String;

    return-object v0
.end method
