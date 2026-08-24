.class public final enum Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

.field public static final enum Debug:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DEBUG"
    .end annotation
.end field

.field public static final enum Normal:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NORMAL"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 762
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;->Normal:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    .line 767
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    const-string v1, "Debug"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;->Debug:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    .line 758
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;->Normal:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;->Debug:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

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
    .line 758
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 758
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
    .locals 1

    .prologue
    .line 758
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    return-object v0
.end method
