.class public final enum Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;
.super Ljava/lang/Enum;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadTouchEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

.field public static final enum HeadTouched:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onHeadTouch"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 568
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    const-string v1, "HeadTouched"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;->HeadTouched:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    .line 566
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;->HeadTouched:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    aput-object v1, v0, v2

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 566
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;
    .locals 1

    .prologue
    .line 566
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchEvents;

    return-object v0
.end method
