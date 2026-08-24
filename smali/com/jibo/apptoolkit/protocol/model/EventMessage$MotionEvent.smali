.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent$MotionEntity;
    }
.end annotation


# instance fields
.field motions:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent$MotionEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Motions"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getMotions()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent$MotionEntity;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;->motions:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent$MotionEntity;

    return-object v0
.end method
