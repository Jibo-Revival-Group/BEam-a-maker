.class public final Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;
.super Ljava/lang/Object;
.source "ErrorDialogCodes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;",
        "",
        "()V",
        "CONNECTION_DISRUPTED",
        "",
        "getCONNECTION_DISRUPTED",
        "()I",
        "HEAD_DIALOG",
        "getHEAD_DIALOG",
        "INACTIVITY_ERROR",
        "getINACTIVITY_ERROR",
        "NO_ERROR",
        "getNO_ERROR",
        "SOCKET_ERROR",
        "getSOCKET_ERROR",
        "UNKNOWN_ERROR",
        "getUNKNOWN_ERROR",
        "WIFI_ERROR",
        "getWIFI_ERROR",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final CONNECTION_DISRUPTED:I = 0xfa5

# The value of this static final field might be set in the static constructor
.field private static final HEAD_DIALOG:I = 0xfa0

# The value of this static final field might be set in the static constructor
.field private static final INACTIVITY_ERROR:I = 0xfa3

.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

# The value of this static final field might be set in the static constructor
.field private static final NO_ERROR:I = -0x1

# The value of this static final field might be set in the static constructor
.field private static final SOCKET_ERROR:I = 0xfa1

# The value of this static final field might be set in the static constructor
.field private static final UNKNOWN_ERROR:I = 0xfa2

# The value of this static final field might be set in the static constructor
.field private static final WIFI_ERROR:I = 0xfa4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    .line 10
    const/16 v0, 0xfa0

    sput v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->HEAD_DIALOG:I

    .line 11
    const/16 v0, 0xfa1

    sput v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->SOCKET_ERROR:I

    .line 12
    const/16 v0, 0xfa2

    sput v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->UNKNOWN_ERROR:I

    .line 13
    const/16 v0, 0xfa3

    sput v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INACTIVITY_ERROR:I

    .line 14
    const/16 v0, 0xfa4

    sput v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->WIFI_ERROR:I

    .line 15
    const/16 v0, 0xfa5

    sput v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->CONNECTION_DISRUPTED:I

    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->NO_ERROR:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCONNECTION_DISRUPTED()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->CONNECTION_DISRUPTED:I

    return v0
.end method

.method public final getHEAD_DIALOG()I
    .locals 1

    .prologue
    .line 10
    sget v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->HEAD_DIALOG:I

    return v0
.end method

.method public final getINACTIVITY_ERROR()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INACTIVITY_ERROR:I

    return v0
.end method

.method public final getNO_ERROR()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->NO_ERROR:I

    return v0
.end method

.method public final getSOCKET_ERROR()I
    .locals 1

    .prologue
    .line 11
    sget v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->SOCKET_ERROR:I

    return v0
.end method

.method public final getUNKNOWN_ERROR()I
    .locals 1

    .prologue
    .line 12
    sget v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->UNKNOWN_ERROR:I

    return v0
.end method

.method public final getWIFI_ERROR()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->WIFI_ERROR:I

    return v0
.end method
