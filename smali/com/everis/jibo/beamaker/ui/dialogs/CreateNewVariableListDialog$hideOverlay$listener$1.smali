.class public final Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;
.super Ljava/lang/Object;
.source "CreateNewVariableListDialog.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->hideOverlay(ZI)V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;ZI)V",
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

.field final synthetic $canceled:Z

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;ZI)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;
    .param p2, "$captured_local_variable$1"    # Z
    .param p3, "$captured_local_variable$2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    iput-boolean p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->$canceled:Z

    iput p3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->$canceled:Z

    if-nez v0, :cond_2

    .line 118
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->$action:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->dismiss()V

    .line 133
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getMType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->etName:I

    invoke-virtual {v0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v2, "etName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;->onCreateList(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->etName:I

    invoke-virtual {v0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v2, "etName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;->onCreateVar(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;->onCreateVar(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
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
