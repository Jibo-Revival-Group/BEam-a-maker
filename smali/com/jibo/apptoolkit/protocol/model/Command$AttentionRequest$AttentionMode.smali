.class public final enum Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttentionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

.field public static final enum Attractable:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ATTRACTABLE"
    .end annotation
.end field

.field public static final enum Command:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "COMMAND"
    .end annotation
.end field

.field public static final enum Disengage:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DISENGAGE"
    .end annotation
.end field

.field public static final enum Engaged:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ENGAGED"
    .end annotation
.end field

.field public static final enum Fixated:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FIXATED"
    .end annotation
.end field

.field public static final enum Idle:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDLE"
    .end annotation
.end field

.field public static final enum Menu:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MENU"
    .end annotation
.end field

.field public static final enum Off:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OFF"
    .end annotation
.end field

.field public static final enum Speaking:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SPEAKING"
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

    .line 361
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Off"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Off:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 363
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Idle:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 365
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Disengage"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Disengage:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 367
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Engaged"

    invoke-direct {v0, v1, v6}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Engaged:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 369
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Speaking"

    invoke-direct {v0, v1, v7}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Speaking:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 371
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Fixated"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Fixated:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 373
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Attractable"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Attractable:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 375
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Menu"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Menu:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 377
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    const-string v1, "Command"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Command:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    .line 360
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Off:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Idle:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Disengage:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Engaged:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Speaking:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Fixated:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Attractable:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Menu:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->Command:Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

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
    .line 360
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 360
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest$AttentionMode;

    return-object v0
.end method
