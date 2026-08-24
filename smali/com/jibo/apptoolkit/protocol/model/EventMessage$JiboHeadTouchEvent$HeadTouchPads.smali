.class public final enum Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;
.super Ljava/lang/Enum;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadTouchPads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

.field public static final enum backLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

.field public static final enum backRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

.field public static final enum frontLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

.field public static final enum frontRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

.field public static final enum middleLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

.field public static final enum middleRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 580
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    const-string v1, "frontLeft"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->frontLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    .line 582
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    const-string v1, "middleLeft"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->middleLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    .line 584
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    const-string v1, "backLeft"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->backLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    .line 586
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    const-string v1, "frontRight"

    invoke-direct {v0, v1, v6}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->frontRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    .line 588
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    const-string v1, "middleRight"

    invoke-direct {v0, v1, v7}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->middleRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    .line 590
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    const-string v1, "backRight"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->backRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    .line 578
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->frontLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->middleLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->backLeft:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->frontRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->middleRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->backRight:Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

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
    .line 578
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 578
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;
    .locals 1

    .prologue
    .line 578
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent$HeadTouchPads;

    return-object v0
.end method
