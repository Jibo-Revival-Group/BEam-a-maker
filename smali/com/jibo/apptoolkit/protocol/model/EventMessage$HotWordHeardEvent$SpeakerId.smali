.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$SpeakerId;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeakerId"
.end annotation


# instance fields
.field confidence:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Confidence"
    .end annotation
.end field

.field type:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$EntityType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
