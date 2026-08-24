.class public final Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;
.super Ljava/lang/Object;
.source "ParentalDialog.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->hideOverlay(Z)V
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
        "com/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;Z)V",
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
.field final synthetic $result:Z

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;Z)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;
    .param p2, "$captured_local_variable$1"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    iput-boolean p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;->$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->hide()V

    .line 156
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;->$result:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->getMCallback()Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;->success()V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->getMCallback()Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;->cancel()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 152
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    return-void
.end method
