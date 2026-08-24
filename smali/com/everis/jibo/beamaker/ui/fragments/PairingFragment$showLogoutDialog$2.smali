.class final Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$2;
.super Ljava/lang/Object;
.source "PairingFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->showLogoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$2;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$2;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    invoke-static {v1}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->access$getMPresenter$p(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/PairingPresenter;->logout()V

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$2;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/everis/jibo/beamaker/ui/activities/TermsAndConditionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$2;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showLogoutDialog$2;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 131
    :cond_1
    return-void
.end method
