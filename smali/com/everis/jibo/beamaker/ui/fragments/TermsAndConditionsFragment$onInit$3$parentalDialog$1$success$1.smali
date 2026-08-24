.class public final Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1$success$1;
.super Ljava/lang/Object;
.source "TermsAndConditionsFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;->success()V
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1$success$1",
        "Ljava/lang/Runnable;",
        "(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;)V",
        "run",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1$success$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    sget-object v1, Lcom/everis/jibo/beamaker/utils/BAMSettingApp;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMSettingApp;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1$success$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;

    iget-object v0, v0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3$parentalDialog$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;

    iget-object v0, v0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->tvTermsInfo:I

    invoke-virtual {v0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "tvTermsInfo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "tvTermsInfo.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/BAMSettingApp;->openJibo(Landroid/content/Context;)V

    .line 109
    return-void
.end method
