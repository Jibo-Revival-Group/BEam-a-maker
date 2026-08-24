.class public final Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;
.super Ljava/lang/Object;
.source "TermsAndConditionsFragment.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;->onClick(Landroid/view/View;)V
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
        "com/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1",
        "Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;",
        "(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;)V",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;-><init>()V

    .line 106
    .local v0, "main":Lcom/everis/jibo/beamaker/repository/MainThreadImpl;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1$success$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1$success$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;->post(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
