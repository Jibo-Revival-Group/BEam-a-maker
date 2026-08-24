.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackedEntity"
.end annotation


# instance fields
.field private Confidence:F

.field private EntityID:Ljava/lang/Long;

.field private ScreenCoords:[I

.field private Type:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$EntityType;

.field private WorldCoords:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;->Confidence:F

    return v0
.end method

.method public getEntityID()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;->EntityID:Ljava/lang/Long;

    return-object v0
.end method

.method public getScreenCoords()[I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;->ScreenCoords:[I

    return-object v0
.end method

.method public getType()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$EntityType;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;->Type:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$EntityType;

    return-object v0
.end method

.method public getWorldCoords()[F
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;->WorldCoords:[F

    return-object v0
.end method
