.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;
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
    name = "TakePhotoEvent"
.end annotation


# instance fields
.field private AngleTarget:[I

.field private Name:Ljava/lang/String;

.field private PositionTarget:[I

.field private URI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngleTarget()[I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;->AngleTarget:[I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionTarget()[I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;->PositionTarget:[I

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;->URI:Ljava/lang/String;

    return-object v0
.end method
