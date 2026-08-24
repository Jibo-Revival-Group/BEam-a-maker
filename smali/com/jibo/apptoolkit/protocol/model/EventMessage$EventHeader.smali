.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;
.super Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHeader"
.end annotation


# instance fields
.field private Timestamp:F

.field final synthetic this$0:Lcom/jibo/apptoolkit/protocol/model/EventMessage;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;->this$0:Lcom/jibo/apptoolkit/protocol/model/EventMessage;

    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimestamp()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventHeader;->Timestamp:F

    return v0
.end method
