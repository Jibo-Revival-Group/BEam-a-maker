.class public final Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;
.super Lcom/everis/jibo/beamaker/base/BaseActivity;
.source "PairingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingActivity.kt\ncom/everis/jibo/beamaker/ui/activities/PairingActivity\n*L\n1#1,44:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "()V",
        "getLayoutResource",
        "",
        "onBackPressed",
        "",
        "onInit",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f0a001e

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v3, Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 29
    .local v1, "robots":Ljava/util/ArrayList;
    :goto_0
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 30
    .local v0, "it":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 32
    const v4, 0x7f0800c0

    .line 33
    sget-object v2, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->Companion:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;

    invoke-virtual {v2, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;->newInstance(Ljava/util/ArrayList;)Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 34
    const-string v5, "PairingFragment"

    .line 32
    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    .end local v0    # "it":Ljava/util/ArrayList;
    :cond_0
    return-void

    .line 27
    .end local v1    # "robots":Ljava/util/ArrayList;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
