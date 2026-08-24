.class public final Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;
.super Lcom/everis/jibo/beamaker/base/BaseActivity;
.source "MyProjectsActivity.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0014J\u0012\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;",
        "()V",
        "mConnectivityReceiver",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;",
        "getMConnectivityReceiver",
        "()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;",
        "setMConnectivityReceiver",
        "(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;)V",
        "getLayoutResource",
        "",
        "onDestroy",
        "",
        "onInit",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onWifiConnected",
        "connected",
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


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0a001d

    return v0
.end method

.method public final getMConnectivityReceiver()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    if-nez v0, :cond_0

    const-string v1, "mConnectivityReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->onDestroy()V

    .line 48
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    if-nez v0, :cond_0

    const-string v1, "mConnectivityReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    new-instance v2, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    move-object v1, p0

    check-cast v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;

    invoke-direct {v2, v1}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;-><init>(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;)V

    iput-object v2, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "connectivityFilters":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    if-nez v1, :cond_0

    const-string v2, "mConnectivityReceiver"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 42
    const v3, 0x7f0800c7

    sget-object v1, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->Companion:Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$Companion;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$Companion;->newInstance()Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const-string v4, "MyProjectsFragment"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    return-void
.end method

.method public onWifiConnected(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "CODE"

    sget-object v2, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getWIFI_ERROR()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->finish()V

    .line 65
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public final setMConnectivityReceiver(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    return-void
.end method
