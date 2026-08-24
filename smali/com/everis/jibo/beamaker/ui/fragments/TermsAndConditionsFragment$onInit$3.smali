.class final Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;
.super Ljava/lang/Object;
.source "TermsAndConditionsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->onInit(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 102
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->tvTermsInfo:I

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "tvTermsInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "tvTermsInfo.context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;)V

    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;

    invoke-direct {v0, v2, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;-><init>(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;)V

    .line 116
    .local v0, "parentalDialog":Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->show()V

    .line 117
    return-void
.end method
