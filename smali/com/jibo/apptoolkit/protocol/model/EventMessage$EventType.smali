.class public final enum Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
.super Ljava/lang/Enum;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

.field public static final enum AssetFailed:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onAssetFailed"
    .end annotation
.end field

.field public static final enum AssetReady:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onAssetReady"
    .end annotation
.end field

.field public static final enum Error:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onError"
    .end annotation
.end field

.field public static final enum HeadTouched:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onHeadTouch"
    .end annotation
.end field

.field public static final enum HotWordHeard:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onHotWordHeard"
    .end annotation
.end field

.field public static final enum ListenResult:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onListenResult"
    .end annotation
.end field

.field public static final enum LookAtAchieved:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onLookAtAchieved"
    .end annotation
.end field

.field public static final enum MotionDetected:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onMotionDetected"
    .end annotation
.end field

.field public static final enum Start:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onStart"
    .end annotation
.end field

.field public static final enum Stop:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onStop"
    .end annotation
.end field

.field public static final enum Swipe:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onSwipe"
    .end annotation
.end field

.field public static final enum TakePhoto:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onTakePhoto"
    .end annotation
.end field

.field public static final enum Tap:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onTap"
    .end annotation
.end field

.field public static final enum TrackEntityLost:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onTrackEntityLost"
    .end annotation
.end field

.field public static final enum TrackGained:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onEntityGained"
    .end annotation
.end field

.field public static final enum TrackLost:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onEntityLost"
    .end annotation
.end field

.field public static final enum TrackUpdate:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onEntityUpdate"
    .end annotation
.end field

.field public static final enum VideoReady:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onVideoReady"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "Start"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Start:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 26
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "Stop"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Stop:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 29
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "Error"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Error:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 32
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "LookAtAchieved"

    invoke-direct {v0, v1, v6}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->LookAtAchieved:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 35
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "TrackEntityLost"

    invoke-direct {v0, v1, v7}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackEntityLost:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 38
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "VideoReady"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->VideoReady:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 41
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "TrackUpdate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackUpdate:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 44
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "TrackLost"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackLost:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 47
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "TrackGained"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackGained:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 50
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "TakePhoto"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TakePhoto:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 53
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "Tap"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Tap:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 56
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "Swipe"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Swipe:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 59
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "HotWordHeard"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->HotWordHeard:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 62
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "ListenResult"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->ListenResult:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 65
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "MotionDetected"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->MotionDetected:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 68
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "AssetFailed"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->AssetFailed:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 71
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "AssetReady"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->AssetReady:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 74
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-string v1, "HeadTouched"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->HeadTouched:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    .line 21
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Start:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Stop:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Error:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->LookAtAchieved:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackEntityLost:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->VideoReady:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackUpdate:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackLost:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackGained:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TakePhoto:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Tap:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Swipe:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->HotWordHeard:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->ListenResult:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->MotionDetected:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->AssetFailed:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->AssetReady:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->HeadTouched:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    return-object v0
.end method
