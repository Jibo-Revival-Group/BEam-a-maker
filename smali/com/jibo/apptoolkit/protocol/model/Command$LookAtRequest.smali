.class public Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookAtRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$CameraTarget;,
        Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$EntityTarget;,
        Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;,
        Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$PositionTarget;,
        Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
    }
.end annotation


# instance fields
.field private LookAtTarget:Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;

.field private TrackFlag:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "lookAtTarget"    # Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
    .param p2, "trackFlag"    # Ljava/lang/Boolean;

    .prologue
    .line 512
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->LookAt:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 513
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;->LookAtTarget:Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;

    .line 514
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;->TrackFlag:Ljava/lang/Boolean;

    .line 515
    return-void
.end method


# virtual methods
.method public getLookAtTarget()Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;->LookAtTarget:Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;

    return-object v0
.end method

.method public getTrackFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;->TrackFlag:Ljava/lang/Boolean;

    return-object v0
.end method
