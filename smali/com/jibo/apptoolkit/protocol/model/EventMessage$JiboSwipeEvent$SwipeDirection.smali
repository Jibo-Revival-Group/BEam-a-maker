.class public final enum Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;
.super Ljava/lang/Enum;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

.field public static final enum Down:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

.field public static final enum Left:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

.field public static final enum Right:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

.field public static final enum Up:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    const-string v1, "Up"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->Up:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    .line 391
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    const-string v1, "Down"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->Down:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    .line 393
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    const-string v1, "Right"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->Right:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    .line 395
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    const-string v1, "Left"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->Left:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    .line 387
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->Up:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->Down:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->Right:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->Left:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

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
    .line 387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 387
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent$SwipeDirection;

    return-object v0
.end method
