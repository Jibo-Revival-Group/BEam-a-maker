.class public Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$CameraTarget;
.super Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraTarget"
.end annotation


# instance fields
.field private ScreenCoords:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .param p1, "screenCoords"    # [I

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$CameraTarget;->ScreenCoords:[I

    .line 606
    return-void
.end method


# virtual methods
.method public getScreenCoords()[I
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$CameraTarget;->ScreenCoords:[I

    return-object v0
.end method
