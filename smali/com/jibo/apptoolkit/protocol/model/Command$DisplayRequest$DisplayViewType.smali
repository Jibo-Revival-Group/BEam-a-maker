.class public final enum Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

.field public static final enum Eye:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Eye"
    .end annotation
.end field

.field public static final enum Image:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Image"
    .end annotation
.end field

.field public static final enum Text:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 817
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    const-string v1, "Eye"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Eye:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    .line 823
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    const-string v1, "Text"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Text:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    .line 829
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    const-string v1, "Image"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Image:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    .line 812
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Eye:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Text:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Image:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

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
    .line 812
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 812
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
    .locals 1

    .prologue
    .line 812
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    return-object v0
.end method
