.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeadTouchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    }
.end annotation


# instance fields
.field private headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HeadSensors"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    .line 665
    iget-object v1, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    iput-object v1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 667
    invoke-virtual {p1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;->getDetail()[Z

    move-result-object v0

    .line 668
    .local v0, "sensors":[Z
    new-instance v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    invoke-direct {v1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;-><init>()V

    iput-object v1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    .line 669
    iget-object v1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->access$002(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 670
    iget-object v1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->access$102(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 671
    iget-object v1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->access$202(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 672
    iget-object v1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->access$302(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 673
    iget-object v1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->access$402(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 674
    iget-object v1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    const/4 v2, 0x5

    aget-boolean v2, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->access$502(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 675
    return-void
.end method

.method synthetic constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;
    .param p2, "x1"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;-><init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;)V

    return-void
.end method


# virtual methods
.method public getHeadSensors()Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;->headSensors:Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;

    return-object v0
.end method
