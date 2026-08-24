.class public Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest;
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
    name = "AttentionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    }
.end annotation


# instance fields
.field private Mode:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;)V
    .locals 2
    .param p1, "type"    # Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .param p2, "mode"    # Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .prologue
    .line 385
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->SetAttention:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 386
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest;->Mode:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 387
    return-void
.end method


# virtual methods
.method public getMode()Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest;->Mode:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    return-object v0
.end method
