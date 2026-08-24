.class public final Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;
.super Landroid/text/style/ClickableSpan;
.source "TermsAndConditionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->formatTextTermsConditions()V
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1",
        "Landroid/text/style/ClickableSpan;",
        "(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;Ljava/lang/String;)V",
        "onClick",
        "",
        "view",
        "Landroid/view/View;",
        "updateDrawState",
        "ds",
        "Landroid/text/TextPaint;",
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
.field final synthetic $termsAndConditionStr:Ljava/lang/String;

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
    .line 137
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;->$termsAndConditionStr:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;->$termsAndConditionStr:Ljava/lang/String;

    const-string v2, "termsAndConditionStr"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->access$openWebView(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "ds"    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "ds"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 144
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f050036

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 145
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 148
    .end local v0    # "color":I
    :cond_0
    return-void
.end method
