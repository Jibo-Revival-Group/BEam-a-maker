.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent$LPSPosition;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LPSPosition"
.end annotation


# instance fields
.field private angleVector:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AngleVector"
    .end annotation
.end field

.field confidence:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Confidence"
    .end annotation
.end field

.field private position:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Position"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
