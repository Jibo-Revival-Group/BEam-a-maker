.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TapEvent"
.end annotation


# instance fields
.field private gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gesture"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;->gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;

    .line 614
    iget-object v0, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 615
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;->gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 616
    return-void
.end method

.method synthetic constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;
    .param p2, "x1"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;-><init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;)V

    return-void
.end method


# virtual methods
.method public getGesture()Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;->gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;

    return-object v0
.end method
