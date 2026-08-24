.class public final enum Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
.super Ljava/lang/Enum;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

.field public static final enum Accepted:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "202"
    .end annotation
.end field

.field public static final enum BadRequest:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "400"
    .end annotation
.end field

.field public static final enum Conflict:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "409"
    .end annotation
.end field

.field public static final enum Created:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "201"
    .end annotation
.end field

.field public static final enum Forbidden:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "403"
    .end annotation
.end field

.field public static final enum InternalError:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "500"
    .end annotation
.end field

.field public static final enum NotAcceptable:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "406"
    .end annotation
.end field

.field public static final enum NotFound:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "404"
    .end annotation
.end field

.field public static final enum OK:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "200"
    .end annotation
.end field

.field public static final enum PreconditionFailed:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "412"
    .end annotation
.end field

.field public static final enum RequestTimeout:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "407"
    .end annotation
.end field

.field public static final enum ServiceUnavailable:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "503"
    .end annotation
.end field

.field public static final enum VersionNotSupported:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "505"
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

    .line 19
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->OK:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 22
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "Created"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->Created:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 25
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "Accepted"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->Accepted:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 28
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "BadRequest"

    invoke-direct {v0, v1, v6}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->BadRequest:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 31
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "Forbidden"

    invoke-direct {v0, v1, v7}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->Forbidden:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 34
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "NotFound"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->NotFound:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 37
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "NotAcceptable"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->NotAcceptable:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 40
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "RequestTimeout"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->RequestTimeout:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 43
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "Conflict"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->Conflict:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 46
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "PreconditionFailed"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->PreconditionFailed:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 49
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "InternalError"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->InternalError:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 52
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "ServiceUnavailable"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->ServiceUnavailable:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 55
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    const-string v1, "VersionNotSupported"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->VersionNotSupported:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    .line 17
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->OK:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->Created:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->Accepted:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->BadRequest:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->Forbidden:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->NotFound:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->NotAcceptable:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->RequestTimeout:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->Conflict:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->PreconditionFailed:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->InternalError:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->ServiceUnavailable:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->VersionNotSupported:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    return-object v0
.end method
