.class public final Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;
.super Ljava/lang/Object;
.source "EditProjectDialog.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->hideOverlay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditProjectDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditProjectDialog.kt\ncom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1\n*L\n1#1,147:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;I)V",
        "onAnimationEnd",
        "",
        "p0",
        "Landroid/view/animation/Animation;",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field final synthetic $action:I

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;I)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;
    .param p2, "$captured_local_variable$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    iput p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 112
    iget v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->$action:I

    packed-switch v2, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "project"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    :goto_1
    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v3, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;->onDeleteProjectSubmit(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 114
    goto :goto_1

    .line 118
    :pswitch_1
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    sget v3, Lcom/everis/jibo/beamaker/R$id;->etProjectName:I

    invoke-virtual {v2, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "etProjectName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "etProjectName.text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    sget v3, Lcom/everis/jibo/beamaker/R$id;->etProjectName:I

    invoke-virtual {v2, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "etProjectName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010015

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 120
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    sget v3, Lcom/everis/jibo/beamaker/R$id;->bSaveProject:I

    invoke-virtual {v2, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 118
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "project"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    move-object v1, v2

    .line 123
    .local v1, "projectEntity":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    sget v3, Lcom/everis/jibo/beamaker/R$id;->etProjectName:I

    invoke-virtual {v2, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "etProjectName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setProjectName(Ljava/lang/String;)V

    .line 124
    :cond_6
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;

    move-result-object v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-interface {v2, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;->onSaveProjectSubmit(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    .line 125
    :cond_8
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->dismissAllowingStateLoss()V

    goto/16 :goto_0

    .line 129
    .end local v1    # "projectEntity":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :pswitch_2
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;->onClosingEditDialog()V

    .line 130
    :cond_9
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->dismissAllowingStateLoss()V

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    return-void
.end method
