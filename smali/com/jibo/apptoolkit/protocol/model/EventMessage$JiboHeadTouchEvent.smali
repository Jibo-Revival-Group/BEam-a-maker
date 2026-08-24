.class Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JiboHeadTouchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;,
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;
    }
.end annotation


# instance fields
.field private pads:[Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Pads"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()[Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;->pads:[Z

    return-object v0
.end method
