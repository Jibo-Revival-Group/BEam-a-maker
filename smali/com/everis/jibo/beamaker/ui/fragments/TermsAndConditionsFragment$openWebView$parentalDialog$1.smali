.class public final Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1;
.super Ljava/lang/Object;
.source "TermsAndConditionsFragment.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->openWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1",
        "Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;",
        "(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;Ljava/lang/String;)V",
        "cancel",
        "",
        "success",
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
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;
    .param p2, "$captured_local_variable$1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/everis/jibo/beamaker/ui/activities/GenericWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1;->$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method
