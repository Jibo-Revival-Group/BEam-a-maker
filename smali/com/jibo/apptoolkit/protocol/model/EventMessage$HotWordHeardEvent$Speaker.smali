.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$Speaker;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Speaker"
.end annotation


# instance fields
.field lpsPosition:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$LPSPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LPSPosition"
    .end annotation
.end field

.field speakerId:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$SpeakerId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SpeakerID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
