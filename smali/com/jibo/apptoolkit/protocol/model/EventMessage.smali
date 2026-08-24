.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.super Lcom/jibo/apptoolkit/protocol/model/BaseResponse;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$ScreenGestureEvents;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$LookAtTrackLostEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$LookAtAchievedEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$StopEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$StartEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$FinalisingEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    }
.end annotation


# instance fields
.field private EventBody:Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

.field private EventHeader:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
    .locals 0
    .param p1, "eventHeader"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;
    .param p2, "eventBody"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/BaseResponse;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->EventHeader:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;

    .line 86
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->EventBody:Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    .line 87
    return-void
.end method

.method static synthetic access$600(Lcom/jibo/apptoolkit/protocol/model/EventMessage;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    .locals 1
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->EventBody:Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    return-object v0
.end method


# virtual methods
.method public getEventBody()Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->EventBody:Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    return-object v0
.end method

.method public getEventHeader()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->EventHeader:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;

    return-object v0
.end method

.method public setEventBody(Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
    .locals 0
    .param p1, "eventBody"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->EventBody:Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    .line 99
    return-void
.end method
