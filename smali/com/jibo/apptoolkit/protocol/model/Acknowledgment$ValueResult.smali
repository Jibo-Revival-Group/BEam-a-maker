.class public final enum Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;
.super Ljava/lang/Enum;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

.field public static final enum Error:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Error"
    .end annotation
.end field

.field public static final enum Success:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Success"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;->Success:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    .line 62
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    const-string v1, "Error"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;->Error:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;->Success:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;->Error:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    return-object v0
.end method
