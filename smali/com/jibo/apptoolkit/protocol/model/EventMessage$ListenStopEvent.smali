.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$StopEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenStopEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;
    }
.end annotation


# instance fields
.field private stopReason:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ListenStopReason"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;)V
    .locals 0
    .param p1, "reason"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$StopEvent;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent;->stopReason:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    .line 429
    return-void
.end method
