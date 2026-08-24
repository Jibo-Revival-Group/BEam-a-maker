.class public final Lcom/everis/jibo/beamaker/utils/CommandTypes;
.super Ljava/lang/Object;
.source "CommandTypes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/CommandTypes;",
        "",
        "()V",
        "CANCEL",
        "",
        "getCANCEL",
        "()Ljava/lang/String;",
        "GET_CONFIG",
        "getGET_CONFIG",
        "LISTEN",
        "getLISTEN",
        "LOOK_AT",
        "getLOOK_AT",
        "LOOK_AT_3D",
        "getLOOK_AT_3D",
        "SAY",
        "getSAY",
        "SET_CONFIG",
        "getSET_CONFIG",
        "TAKE_PHOTO",
        "getTAKE_PHOTO",
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
.field private static final CANCEL:Ljava/lang/String; = "cancel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final GET_CONFIG:Ljava/lang/String; = "get_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

# The value of this static final field might be set in the static constructor
.field private static final LISTEN:Ljava/lang/String; = "listen"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final LOOK_AT:Ljava/lang/String; = "lookat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final LOOK_AT_3D:Ljava/lang/String; = "lookat3d"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final SAY:Ljava/lang/String; = "say"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final SET_CONFIG:Ljava/lang/String; = "set_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final TAKE_PHOTO:Ljava/lang/String; = "takephoto"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/CommandTypes;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    .line 10
    const-string v0, "say"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->SAY:Ljava/lang/String;

    .line 11
    const-string v0, "takephoto"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->TAKE_PHOTO:Ljava/lang/String;

    .line 12
    const-string v0, "lookat3d"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->LOOK_AT_3D:Ljava/lang/String;

    .line 13
    const-string v0, "lookat"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->LOOK_AT:Ljava/lang/String;

    .line 14
    const-string v0, "listen"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->LISTEN:Ljava/lang/String;

    .line 15
    const-string v0, "get_config"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->GET_CONFIG:Ljava/lang/String;

    .line 16
    const-string v0, "set_config"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->SET_CONFIG:Ljava/lang/String;

    .line 17
    const-string v0, "cancel"

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->CANCEL:Ljava/lang/String;

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
.method public final getCANCEL()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->CANCEL:Ljava/lang/String;

    return-object v0
.end method

.method public final getGET_CONFIG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->GET_CONFIG:Ljava/lang/String;

    return-object v0
.end method

.method public final getLISTEN()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 14
    sget-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->LISTEN:Ljava/lang/String;

    return-object v0
.end method

.method public final getLOOK_AT()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->LOOK_AT:Ljava/lang/String;

    return-object v0
.end method

.method public final getLOOK_AT_3D()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->LOOK_AT_3D:Ljava/lang/String;

    return-object v0
.end method

.method public final getSAY()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 10
    sget-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->SAY:Ljava/lang/String;

    return-object v0
.end method

.method public final getSET_CONFIG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->SET_CONFIG:Ljava/lang/String;

    return-object v0
.end method

.method public final getTAKE_PHOTO()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 11
    sget-object v0, Lcom/everis/jibo/beamaker/utils/CommandTypes;->TAKE_PHOTO:Ljava/lang/String;

    return-object v0
.end method
