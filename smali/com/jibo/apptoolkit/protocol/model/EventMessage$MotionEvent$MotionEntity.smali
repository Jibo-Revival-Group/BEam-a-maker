.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent$MotionEntity;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEntity"
.end annotation


# instance fields
.field public ScreenCoords:[F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ScreenCoords"
    .end annotation
.end field

.field public intensity:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Intensity"
    .end annotation
.end field

.field public worldCoords:[F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WorldCoords"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
