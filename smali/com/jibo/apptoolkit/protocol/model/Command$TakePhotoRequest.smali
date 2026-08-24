.class public Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TakePhotoRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;,
        Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;
    }
.end annotation


# instance fields
.field private Camera:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;

.field private Distortion:Ljava/lang/Boolean;

.field private Resolution:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "camera"    # Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;
    .param p2, "resolution"    # Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .param p3, "distortion"    # Ljava/lang/Boolean;

    .prologue
    .line 725
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->TakePhoto:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 726
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;->Camera:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;

    .line 727
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;->Resolution:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    .line 728
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;->Distortion:Ljava/lang/Boolean;

    .line 729
    return-void
.end method


# virtual methods
.method public getCamera()Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;->Camera:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;

    return-object v0
.end method

.method public getDistortion()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;->Distortion:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getResolution()Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;->Resolution:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    return-object v0
.end method
