.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;
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
    name = "VideoReadyEvent"
.end annotation


# instance fields
.field private URI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;->URI:Ljava/lang/String;

    return-object v0
.end method
