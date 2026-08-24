.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchAssetEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent$FetchAssetEvents;
    }
.end annotation


# instance fields
.field private detail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Detail"
    .end annotation
.end field

.field private event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent$FetchAssetEvents;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Event"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getFetchEvent()Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent$FetchAssetEvents;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent;->event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent$FetchAssetEvents;

    return-object v0
.end method
