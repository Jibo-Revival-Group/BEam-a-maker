.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseEvent"
.end annotation


# instance fields
.field protected Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    return-object v0
.end method
