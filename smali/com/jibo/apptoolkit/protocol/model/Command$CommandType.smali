.class public final enum Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

.field public static final enum Cancel:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Cancel"
    .end annotation
.end field

.field public static final enum Display:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Display"
    .end annotation
.end field

.field public static final enum Entity:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Entity"
    .end annotation
.end field

.field public static final enum FetchAsset:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FetchAsset"
    .end annotation
.end field

.field public static final enum GetConfig:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GetConfig"
    .end annotation
.end field

.field public static final enum Listen:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Listen"
    .end annotation
.end field

.field public static final enum LookAt:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LookAt"
    .end annotation
.end field

.field public static final enum Motion:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Motion"
    .end annotation
.end field

.field public static final enum Say:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Say"
    .end annotation
.end field

.field public static final enum ScreenGesture:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ScreenGesture"
    .end annotation
.end field

.field public static final enum SetAttention:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SetAttention"
    .end annotation
.end field

.field public static final enum SetConfig:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SetConfig"
    .end annotation
.end field

.field public static final enum StartSession:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StartSession"
    .end annotation
.end field

.field public static final enum Subscribe:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Subscribe"
    .end annotation
.end field

.field public static final enum TakePhoto:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TakePhoto"
    .end annotation
.end field

.field public static final enum Video:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Video"
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

    .line 21
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "StartSession"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->StartSession:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 24
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "GetConfig"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->GetConfig:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 27
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "SetConfig"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->SetConfig:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 30
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v6}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Cancel:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 33
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "SetAttention"

    invoke-direct {v0, v1, v7}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->SetAttention:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 36
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "Say"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Say:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 39
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "Listen"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Listen:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 42
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "LookAt"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->LookAt:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 45
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "TakePhoto"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->TakePhoto:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 48
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "Video"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Video:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 51
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "Display"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Display:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 54
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "FetchAsset"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->FetchAsset:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 57
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "Motion"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Motion:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 60
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "ScreenGesture"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->ScreenGesture:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 63
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "Entity"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Entity:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 66
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const-string v1, "Subscribe"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Subscribe:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->StartSession:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->GetConfig:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->SetConfig:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Cancel:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->SetAttention:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Say:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Listen:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->LookAt:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->TakePhoto:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Video:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Display:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->FetchAsset:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Motion:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->ScreenGesture:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Entity:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Subscribe:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    return-object v0
.end method
