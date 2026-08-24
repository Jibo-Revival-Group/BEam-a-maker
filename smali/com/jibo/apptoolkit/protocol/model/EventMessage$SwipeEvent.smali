.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwipeEvent"
.end annotation


# instance fields
.field private gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gesture"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    .line 631
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;->gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;

    .line 632
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;->gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 633
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;->gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 634
    return-void
.end method

.method synthetic constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;
    .param p2, "x1"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;-><init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;)V

    return-void
.end method


# virtual methods
.method public getGesture()Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;->gesture:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;

    return-object v0
.end method
