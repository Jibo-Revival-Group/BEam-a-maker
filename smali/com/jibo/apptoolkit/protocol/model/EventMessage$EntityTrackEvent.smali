.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityTrackEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$EntityType;
    }
.end annotation


# instance fields
.field private Tracks:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;

.field private type:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method

.method static synthetic access$1102(Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;
    .param p1, "x1"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;->type:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    return-object p1
.end method


# virtual methods
.method public getTracks()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;->Tracks:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;

    return-object v0
.end method

.method public getType()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;->type:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    return-object v0
.end method
