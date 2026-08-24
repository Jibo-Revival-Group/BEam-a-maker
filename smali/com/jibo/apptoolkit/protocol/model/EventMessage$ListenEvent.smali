.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;
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
    name = "ListenEvent"
.end annotation


# instance fields
.field private listen:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;


# direct methods
.method private constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;)V
    .locals 1
    .param p1, "listen"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;->listen:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;

    .line 649
    iget-object v0, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 650
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 651
    return-void
.end method

.method synthetic constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;
    .param p2, "x1"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;-><init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;)V

    return-void
.end method


# virtual methods
.method public getListen()Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;->listen:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;

    return-object v0
.end method
