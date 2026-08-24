.class public final enum Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;
.super Ljava/lang/Enum;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListenStopReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

.field public static final enum MaxNoSpeech:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxNoSpeech"
    .end annotation
.end field

.field public static final enum MaxSpeech:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxSpeech"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 417
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    const-string v1, "MaxNoSpeech"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;->MaxNoSpeech:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    .line 420
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    const-string v1, "MaxSpeech"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;->MaxSpeech:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;->MaxNoSpeech:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;->MaxSpeech:Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

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
    .line 415
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 415
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenStopEvent$ListenStopReason;

    return-object v0
.end method
