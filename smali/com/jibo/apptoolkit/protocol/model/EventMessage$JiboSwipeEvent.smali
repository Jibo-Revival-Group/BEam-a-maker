.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JiboSwipeEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;
    }
.end annotation


# instance fields
.field private direction:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Direction"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwipeDirection()Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;->direction:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    return-object v0
.end method
