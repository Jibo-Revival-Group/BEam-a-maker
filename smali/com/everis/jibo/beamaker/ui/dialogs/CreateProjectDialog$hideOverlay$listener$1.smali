.class public final Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;
.super Ljava/lang/Object;
.source "CreateProjectDialog.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->hideOverlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateProjectDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateProjectDialog.kt\ncom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1\n*L\n1#1,113:1\n*E\n"
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
        "com/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;Z)V",
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
.field final synthetic $canceled:Z

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;Z)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;
    .param p2, "$captured_local_variable$1"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    iput-boolean p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->$canceled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    iget-boolean v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->$canceled:Z

    if-nez v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->etName:I

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "etName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "etName.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->bSaveProject:I

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "bSaveProject"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 89
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->bSaveProject:I

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :goto_1
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    sget v3, Lcom/everis/jibo/beamaker/R$id;->etName:I

    invoke-virtual {v1, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v3, "etName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;->onAddProjectSubmit(Ljava/lang/String;)V

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->dismiss()V

    goto :goto_1

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;->onCloseCreateProjectDialog()V

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->dismiss()V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    return-void
.end method
