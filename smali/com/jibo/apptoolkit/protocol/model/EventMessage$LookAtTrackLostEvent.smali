.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$LookAtTrackLostEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"

# interfaces
.implements Lcom/jibo/apptoolkit/protocol/model/EventMessage$FinalisingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookAtTrackLostEvent"
.end annotation


# instance fields
.field private AngleTarget:[I

.field private EntityTarget:J

.field private PositionTarget:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngleTarget()[I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$LookAtTrackLostEvent;->AngleTarget:[I

    return-object v0
.end method

.method public getEntityTarget()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$LookAtTrackLostEvent;->EntityTarget:J

    return-wide v0
.end method

.method public getPositionTarget()[I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$LookAtTrackLostEvent;->PositionTarget:[I

    return-object v0
.end method
