.class public final Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;
.super Ljava/lang/Object;
.source "ConnectivityLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectivityLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectivityLoader.kt\ncom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader\n*L\n1#1,45:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;",
        "",
        "()V",
        "getConnectivity",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;",
        "context",
        "Landroid/content/Context;",
        "isConnectedWifi",
        "",
        "NetworkType",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConnectivity(Landroid/content/Context;)Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 20
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 21
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_2

    .line 22
    :cond_1
    sget-object v3, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->NONE:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    .line 30
    :goto_0
    return-object v3

    .line 24
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 25
    .local v2, "type":I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_3

    .line 26
    sget-object v3, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->WIFI:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    goto :goto_0

    .line 27
    :cond_3
    if-nez v2, :cond_4

    .line 28
    sget-object v3, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->MOBILE:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    goto :goto_0

    .line 30
    :cond_4
    sget-object v3, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->OTHER:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    goto :goto_0
.end method

.method public final isConnectedWifi(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 39
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 40
    .local v0, "it":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader;->getConnectivity(Landroid/content/Context;)Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;->WIFI:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityLoader$NetworkType;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 43
    .end local v0    # "it":Landroid/content/Context;
    :cond_0
    return v1
.end method
