.class public final Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
.super Lcom/everis/jibo/beamaker/base/BaseFragment;
.source "PairingFragment.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/view/PairingView;
.implements Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;
.implements Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u0000 I2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001IB\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001fH\u0016J\n\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u001fH\u0016J\u0008\u0010&\u001a\u00020\u001fH\u0002J\"\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020$2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u001a\u0010,\u001a\u00020\u001f2\u0008\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020$H\u0016J\u0010\u0010,\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\u0015H\u0016J\u001a\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0008\u00106\u001a\u00020\u001fH\u0016J\u0008\u00107\u001a\u00020\u001fH\u0016J\u0010\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020:H\u0016J\u0008\u0010;\u001a\u00020\u001fH\u0016J\u0008\u0010<\u001a\u00020\u001fH\u0016J\u0008\u0010=\u001a\u00020\u001fH\u0016J\u0008\u0010>\u001a\u00020\u001fH\u0016J\u0006\u0010?\u001a\u00020\u001fJ\u0008\u0010@\u001a\u00020\u001fH\u0016J\u0010\u0010A\u001a\u00020\u001f2\u0006\u0010B\u001a\u00020CH\u0016J\u0008\u0010D\u001a\u00020\u001fH\u0016J\u0008\u0010E\u001a\u00020\u001fH\u0016J\u0008\u0010F\u001a\u00020\u001fH\u0002J \u0010G\u001a\u00020\u001f2\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u0016H\u0016J\u0008\u0010H\u001a\u00020\u001fH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;",
        "Lcom/everis/jibo/beamaker/base/BaseFragment;",
        "Lcom/everis/jibo/beamaker/ui/view/PairingView;",
        "Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "()V",
        "alertDialog",
        "Landroid/support/v7/app/AlertDialog;",
        "connectivityFilters",
        "Landroid/content/IntentFilter;",
        "connectivityReceiver",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;",
        "mAdapter",
        "Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;",
        "mHeadDialog",
        "Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;",
        "mPresenter",
        "Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;",
        "mRobots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Lkotlin/collections/ArrayList;",
        "mSocketDialog",
        "Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;",
        "mWifiDialog",
        "Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;",
        "pairingConnectDialog",
        "Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;",
        "wifiDialog",
        "changeToConnected",
        "",
        "closeConnectingDialog",
        "getContextData",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "getLayoutResource",
        "",
        "hideLoading",
        "initListeners",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onClick",
        "dialog",
        "Landroid/content/DialogInterface;",
        "which",
        "robot",
        "onInit",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onStop",
        "onWifiConnected",
        "connected",
        "",
        "openScratchView",
        "registerWifiBroadcast",
        "showConnectError",
        "showConnectingDialog",
        "showConnectionDisruptedError",
        "showDisabledRobotError",
        "showError",
        "message",
        "",
        "showErrorWIFI",
        "showLoading",
        "showLogoutDialog",
        "showRobots",
        "unregisterWifiBroadcast",
        "Companion",
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
.field public static final Companion:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "PairingFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private alertDialog:Landroid/support/v7/app/AlertDialog;

.field private connectivityFilters:Landroid/content/IntentFilter;

.field private connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

.field private mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

.field private mHeadDialog:Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;

.field private mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

.field private mRobots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;"
        }
    .end annotation
.end field

.field private mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

.field private mWifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

.field private pairingConnectDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

.field private wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->Companion:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mRobots:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getAlertDialog$p(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method public static final synthetic access$getMPresenter$p(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;
    .locals 2
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setAlertDialog$p(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
    .param p1, "<set-?>"    # Landroid/support/v7/app/AlertDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public static final synthetic access$setMPresenter$p(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 34
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    return-void
.end method

.method public static final synthetic access$showLogoutDialog(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->showLogoutDialog()V

    return-void
.end method

.method private final initListeners()V
    .locals 2

    .prologue
    .line 114
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bRefresh:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$initListeners$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$initListeners$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    sget v0, Lcom/everis/jibo/beamaker/R$id;->tBar:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$initListeners$2;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$initListeners$2;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method private final showLogoutDialog()V
    .locals 5

    .prologue
    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0062

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 121
    const v2, 0x7f0e0063

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 122
    const v2, 0x7f0e0024

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$1;->INSTANCE:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$1;

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 125
    const v2, 0x7f0e0061

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$2;

    invoke-direct {v3, p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$2;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 133
    .local v1, "warningDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 134
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public changeToConnected()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->pairingConnectDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->change()V

    .line 228
    :cond_0
    return-void
.end method

.method public closeConnectingDialog()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->pairingConnectDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->dismissAllowingStateLoss()V

    .line 224
    :cond_0
    return-void
.end method

.method public getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/everis/jibo/beamaker/base/BaseActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/everis/jibo/beamaker/base/BaseActivity;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0a0038

    return v0
.end method

.method public hideLoading()V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->hideLoading()V

    .line 278
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/everis/jibo/beamaker/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_0

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->hide()V

    .line 294
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mHeadDialog:Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;

    if-nez v1, :cond_1

    const-string v2, "mHeadDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;->hide()V

    .line 295
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mWifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    if-nez v1, :cond_2

    const-string v2, "mWifiDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;->hide()V

    .line 297
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v1, :cond_3

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->clearCommander()V

    .line 298
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v1, :cond_4

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->unpairedAnalytics()V

    .line 300
    if-eqz p3, :cond_a

    .line 302
    const-string v1, "CODE"

    sget-object v2, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getUNKNOWN_ERROR()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 303
    .local v0, "code":I
    sget-object v1, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 307
    sget-object v1, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getHEAD_DIALOG()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 308
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mHeadDialog:Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;

    if-nez v1, :cond_5

    const-string v2, "mHeadDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;->getMDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mHeadDialog:Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;

    if-nez v1, :cond_7

    const-string v2, "mHeadDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;->getMDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_a

    .line 309
    :cond_8
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mHeadDialog:Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;

    if-nez v1, :cond_9

    const-string v2, "mHeadDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;->show()V

    .line 333
    .end local v0    # "code":I
    :cond_a
    :goto_0
    return-void

    .line 312
    .restart local v0    # "code":I
    :cond_b
    sget-object v1, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getWIFI_ERROR()I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 316
    sget-object v1, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getSOCKET_ERROR()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 318
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_c

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->getMDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_e

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->getMDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_a

    .line 319
    :cond_f
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_10

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->show()V

    goto :goto_0

    .line 322
    :cond_11
    sget-object v1, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getUNKNOWN_ERROR()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 324
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_12

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->getMDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_13
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_14

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->getMDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_a

    .line 325
    :cond_15
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_16

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->show()V

    goto :goto_0

    .line 328
    :cond_17
    sget-object v1, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getINACTIVITY_ERROR()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 330
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_18

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->getMDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_19
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_1a

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->getMDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_a

    .line 331
    :cond_1b
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    if-nez v1, :cond_1c

    const-string v2, "mSocketDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;->show()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "which"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->openSetting()V

    .line 270
    return-void
.end method

.method public onClick(Lcom/jibo/apptoolkit/android/model/api/Robot;)V
    .locals 2
    .param p1, "robot"    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "robot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bConnect:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$onClick$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$onClick$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;Lcom/jibo/apptoolkit/android/model/api/Robot;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bConnect:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bConnect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onInit(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v3, "view"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v4, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mRobots:Ljava/util/ArrayList;

    move-object v3, p0

    check-cast v3, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;

    invoke-direct {v4, v5, v3}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;-><init>(Ljava/util/ArrayList;Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;)V

    iput-object v4, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    .line 76
    sget v3, Lcom/everis/jibo/beamaker/R$id;->rvRobots:I

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    const-string v4, "rvRobots"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    if-nez v4, :cond_0

    const-string v5, "mAdapter"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v4, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    new-instance v4, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    move-object v3, p0

    check-cast v3, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;

    invoke-direct {v4, v3}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;-><init>(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;)V

    iput-object v4, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    .line 82
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->connectivityFilters:Landroid/content/IntentFilter;

    .line 83
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->connectivityFilters:Landroid/content/IntentFilter;

    if-eqz v3, :cond_1

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    :cond_1
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 87
    .local v2, "lManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 89
    new-instance v1, Lcom/everis/jibo/beamaker/utils/ItemOffsetDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "view.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0600a5

    invoke-direct {v1, v3, v4}, Lcom/everis/jibo/beamaker/utils/ItemOffsetDecoration;-><init>(Landroid/content/Context;I)V

    .line 90
    .local v1, "itemDecoration":Lcom/everis/jibo/beamaker/utils/ItemOffsetDecoration;
    sget v3, Lcom/everis/jibo/beamaker/R$id;->rvRobots:I

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .end local v1    # "itemDecoration":Lcom/everis/jibo/beamaker/utils/ItemOffsetDecoration;
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 92
    sget v3, Lcom/everis/jibo/beamaker/R$id;->rvRobots:I

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    const-string v4, "rvRobots"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .end local v2    # "lManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 93
    sget v3, Lcom/everis/jibo/beamaker/R$id;->rvRobots:I

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    const-string v4, "rvRobots"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->initListeners()V

    .line 97
    new-instance v3, Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "view.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mHeadDialog:Lcom/everis/jibo/beamaker/ui/dialogs/HeadTouchedDialog;

    .line 98
    new-instance v3, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "view.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mSocketDialog:Lcom/everis/jibo/beamaker/ui/dialogs/SocketDialog;

    .line 99
    new-instance v3, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "view.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mWifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    .line 101
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "CODE"

    sget-object v5, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v5}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getNO_ERROR()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    .local v0, "errorCode":Ljava/lang/Integer;
    :goto_0
    sget-object v3, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getCONNECTION_DISRUPTED()I

    move-result v3

    if-nez v0, :cond_5

    .line 107
    :cond_2
    :goto_1
    new-instance v4, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;

    move-object v3, p0

    check-cast v3, Lcom/everis/jibo/beamaker/ui/view/PairingView;

    invoke-direct {v4, v3}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenterImpl;-><init>(Lcom/everis/jibo/beamaker/ui/view/PairingView;)V

    move-object v3, v4

    check-cast v3, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    .line 108
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v3, :cond_3

    const-string v4, "mPresenter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 109
    return-void

    .line 101
    .end local v0    # "errorCode":Ljava/lang/Integer;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    .restart local v0    # "errorCode":Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->showConnectionDisruptedError()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;->onStart()V

    .line 282
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bView:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jlsh/bubleview/view/BubbleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->start()V

    .line 283
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;->onStop()V

    .line 287
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bView:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jlsh/bubleview/view/BubbleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->stop()V

    .line 288
    :cond_0
    return-void
.end method

.method public onWifiConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 246
    if-nez p1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->errorWifiAnalytics()V

    .line 248
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->showErrorWIFI()V

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;->hide()V

    goto :goto_0
.end method

.method public openScratchView()V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 204
    return-void
.end method

.method public registerWifiBroadcast()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->connectivityFilters:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    :cond_0
    return-void
.end method

.method public showConnectError()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V

    :cond_0
    move-object v0, v1

    .line 175
    check-cast v0, Landroid/support/v7/app/AlertDialog;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 178
    :cond_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 179
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    const v3, 0x7f0e0081

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    const v3, 0x7f0e0080

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    :cond_3
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v3, :cond_4

    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    const v2, 0x7f0e008c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectError$1;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectError$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v0, v2}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    :cond_4
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_5

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    const v1, 0x7f0e008d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectError$2;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectError$2;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v0, :cond_7

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->pairErrorAnalytics()V

    .line 185
    :cond_8
    return-void

    :cond_9
    move-object v0, v1

    .line 179
    goto :goto_0

    :cond_a
    move-object v0, v1

    .line 180
    goto :goto_1

    :cond_b
    move-object v0, v1

    .line 181
    goto :goto_2

    :cond_c
    move-object v0, v1

    .line 182
    goto :goto_3
.end method

.method public showConnectingDialog()V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$Companion;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$Companion;->newInstance()Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->pairingConnectDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

    .line 218
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->pairingConnectDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->setCancelable(Z)V

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->pairingConnectDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    :goto_0
    const-string v2, "PairingConnectDialog"

    invoke-virtual {v1, v0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 220
    :cond_1
    return-void

    .line 219
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final showConnectionDisruptedError()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V

    :cond_0
    move-object v0, v1

    .line 191
    check-cast v0, Landroid/support/v7/app/AlertDialog;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 194
    :cond_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 195
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    const v3, 0x7f0e008a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    const v3, 0x7f0e0088

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectionDisruptedError$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectionDisruptedError$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 199
    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    .line 195
    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 196
    goto :goto_1

    :cond_8
    move-object v0, v1

    .line 197
    goto :goto_2
.end method

.method public showDisabledRobotError()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V

    .line 160
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 162
    :cond_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 163
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_2

    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_3

    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_4

    const/4 v2, -0x1

    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showDisabledRobotError$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showDisabledRobotError$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v0, :cond_6

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->pairErrorAnalytics()V

    .line 169
    :cond_7
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-string v1, "message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 208
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    const v3, 0x7f0e007f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "message":Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 210
    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    const v2, 0x7f0e007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showError$1;->INSTANCE:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showError$1;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 211
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 213
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    if-nez v1, :cond_0

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->errorLoginAnalytics()V

    .line 214
    .end local v0    # "alert":Landroid/support/v7/app/AlertDialog;
    :cond_1
    return-void

    .restart local v0    # "alert":Landroid/support/v7/app/AlertDialog;
    .restart local p1    # "message":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 208
    goto :goto_0

    .end local p1    # "message":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .line 210
    goto :goto_1
.end method

.method public showErrorWIFI()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;->hide()V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/content/DialogInterface$OnClickListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;->show(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 266
    :cond_2
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->showLoading()V

    .line 274
    :cond_0
    return-void
.end method

.method public showRobots(Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "mRobots"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "mRobots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bConnect:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bConnect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mRobots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mRobots:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    .end local p1    # "mRobots":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    if-nez v0, :cond_0

    const-string v1, "mAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->notifyDataSetChanged()V

    .line 153
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    if-nez v0, :cond_1

    const-string v1, "mAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->refresh()V

    .line 154
    return-void
.end method

.method public unregisterWifiBroadcast()V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    :cond_0
    return-void
.end method
