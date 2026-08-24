.class public final Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;
.super Lcom/everis/jibo/beamaker/base/BaseActivity;
.source "SplashActivity.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/view/SplashView;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\n\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0014J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J \u0010\u0014\u001a\u00020\u000e2\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\u0008\u0012\u0004\u0012\u00020\u0017`\u0018H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "Lcom/everis/jibo/beamaker/ui/view/SplashView;",
        "()V",
        "mPresenter",
        "Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;",
        "getMPresenter",
        "()Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;",
        "setMPresenter",
        "(Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;)V",
        "getContextData",
        "getLayoutResource",
        "",
        "onInit",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "showError",
        "showTermsConditions",
        "startJiboConnect",
        "robots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Lkotlin/collections/ArrayList;",
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

.field public mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 22
    check-cast p0, Lcom/everis/jibo/beamaker/base/BaseActivity;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;
    return-object p0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0a0021

    return v0
.end method

.method public final getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/ui/view/SplashView;

    invoke-direct {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;-><init>(Lcom/everis/jibo/beamaker/ui/view/SplashView;)V

    iput-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    .line 30
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->onResume()V

    .line 64
    return-void
.end method

.method public final setMPresenter(Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    return-void
.end method

.method public showError()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "wifiDialog":Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;->hide()V

    .line 51
    new-instance v1, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity$showError$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity$showError$1;-><init>(Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    .line 56
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;->show(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    return-void
.end method

.method public showTermsConditions()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/everis/jibo/beamaker/ui/activities/TermsAndConditionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->finish()V

    .line 37
    return-void
.end method

.method public startJiboConnect(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "robots"    # Ljava/util/ArrayList;
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
    const-string v1, "robots"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->finish()V

    .line 44
    return-void
.end method
