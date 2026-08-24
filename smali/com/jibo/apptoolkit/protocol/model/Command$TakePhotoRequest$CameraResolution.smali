.class public final enum Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

.field public static final enum HighRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "highRes"
    .end annotation
.end field

.field public static final enum LowRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lowRes"
    .end annotation
.end field

.field public static final enum MedRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "medRes"
    .end annotation
.end field

.field public static final enum MicroRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "microRes"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 694
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    const-string v1, "HighRes"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->HighRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    .line 699
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    const-string v1, "MedRes"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->MedRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    .line 704
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    const-string v1, "LowRes"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->LowRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    .line 709
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    const-string v1, "MicroRes"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->MicroRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    .line 690
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->HighRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->MedRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->LowRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->MicroRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

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
    .line 690
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 690
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
    .locals 1

    .prologue
    .line 690
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    return-object v0
.end method
