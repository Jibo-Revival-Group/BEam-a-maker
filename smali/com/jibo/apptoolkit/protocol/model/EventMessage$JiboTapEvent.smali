.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JiboTapEvent"
.end annotation


# instance fields
.field private coordinate:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Coordinate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordinate()[I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;->coordinate:[I

    return-object v0
.end method
