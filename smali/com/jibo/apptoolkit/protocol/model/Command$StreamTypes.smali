.class public final enum Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

.field public static final enum Entity:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Entity"
    .end annotation
.end field

.field public static final enum HeadTouch:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HeadTouch"
    .end annotation
.end field

.field public static final enum Motion:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Motion"
    .end annotation
.end field

.field public static final enum ScreenGesture:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ScreenGesture"
    .end annotation
.end field

.field public static final enum Speech:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Speech"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    const-string v1, "Entity"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Entity:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 130
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    const-string v1, "Motion"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Motion:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 135
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    const-string v1, "Speech"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Speech:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 140
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    const-string v1, "HeadTouch"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->HeadTouch:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 145
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    const-string v1, "ScreenGesture"

    invoke-direct {v0, v1, v6}, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->ScreenGesture:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Entity:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Motion:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->Speech:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->HeadTouch:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->ScreenGesture:Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;

    return-object v0
.end method
