.class public final Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;
.super Ljava/lang/Object;
.source "EnvironmentUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;",
        "",
        "()V",
        "init",
        "",
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
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;->INSTANCE:Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "portal.jibo.com"

    invoke-static {v0}, Lcom/jibo/apptoolkit/protocol/utils/Commons;->setRootEndpoint(Ljava/lang/String;)V

    .line 14
    return-void
.end method
