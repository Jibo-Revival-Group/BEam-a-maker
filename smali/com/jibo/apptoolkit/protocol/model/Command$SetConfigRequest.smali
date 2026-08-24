.class public Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetConfigRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;
    }
.end annotation


# instance fields
.field private options:Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Options"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;)V
    .locals 2
    .param p1, "options"    # Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;

    .prologue
    .line 469
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->SetConfig:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 470
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest;->options:Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;

    .line 471
    return-void
.end method
