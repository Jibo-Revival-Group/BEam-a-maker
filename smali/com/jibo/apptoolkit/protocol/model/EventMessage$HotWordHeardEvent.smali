.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotWordHeardEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$Speaker;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$SpeakerId;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$LPSPosition;
    }
.end annotation


# instance fields
.field private speaker:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$Speaker;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Speaker"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeaker()Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$Speaker;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent;->speaker:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$Speaker;

    return-object v0
.end method
