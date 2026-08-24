.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"

# interfaces
.implements Lcom/jibo/apptoolkit/protocol/model/EventMessage$FinalisingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;
    }
.end annotation


# instance fields
.field private EventError:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventError()Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent;->EventError:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;

    return-object v0
.end method
