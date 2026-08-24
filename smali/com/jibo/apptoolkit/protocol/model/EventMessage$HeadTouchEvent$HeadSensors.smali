.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeadSensors"
.end annotation


# instance fields
.field private leftBack:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "leftBack"
    .end annotation
.end field

.field private leftFront:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "leftFront"
    .end annotation
.end field

.field private leftMiddle:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "leftMiddle"
    .end annotation
.end field

.field private rightBack:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rightBack"
    .end annotation
.end field

.field private rightFront:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rightFront"
    .end annotation
.end field

.field private rightMiddle:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rightMiddle"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->leftFront:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->leftMiddle:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$202(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->leftBack:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$302(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->rightFront:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$402(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->rightMiddle:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$502(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent$HeadSensors;->rightBack:Ljava/lang/Boolean;

    return-object p1
.end method
