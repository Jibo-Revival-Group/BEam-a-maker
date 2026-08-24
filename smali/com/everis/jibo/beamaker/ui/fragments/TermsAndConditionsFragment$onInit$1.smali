.class final Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$1;
.super Ljava/lang/Object;
.source "TermsAndConditionsFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
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

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 82
    if-eqz p2, :cond_1

    .line 83
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;->checkWifi()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->enabledButton(Z)V

    goto :goto_0
.end method
