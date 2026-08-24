.class public final enum Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;
.super Ljava/lang/Enum;
.source "ConnectivityLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;",
        "",
        "(Ljava/lang/String;I)V",
        "WIFI",
        "MOBILE",
        "OTHER",
        "NONE",
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
.field private static final synthetic $VALUES:[Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

.field public static final enum MOBILE:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

.field public static final enum NONE:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

.field public static final enum OTHER:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

.field public static final enum WIFI:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    new-instance v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    const-string v2, "WIFI"

    invoke-direct {v1, v2, v3}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->WIFI:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    const-string v2, "MOBILE"

    invoke-direct {v1, v2, v4}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->MOBILE:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    const-string v2, "OTHER"

    invoke-direct {v1, v2, v5}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->OTHER:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    aput-object v1, v0, v5

    new-instance v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    const-string v2, "NONE"

    invoke-direct {v1, v2, v6}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->NONE:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->$VALUES:[Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;
    .locals 1

    const-class v0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;
    .locals 1

    sget-object v0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->$VALUES:[Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    invoke-virtual {v0}, [Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    return-object v0
.end method
