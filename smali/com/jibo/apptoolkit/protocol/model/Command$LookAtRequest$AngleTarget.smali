.class public Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;
.super Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AngleTarget"
.end annotation


# instance fields
.field private Angle:[F


# direct methods
.method public constructor <init>([F)V
    .locals 0
    .param p1, "angle"    # [F

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;->Angle:[F

    .line 563
    return-void
.end method


# virtual methods
.method public getAngle()[F
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;->Angle:[F

    return-object v0
.end method
