.class public final Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1;
.super Ljava/lang/Object;
.source "PairingConnectDialog.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->change()V
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
        "com/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;)V",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

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
    .line 85
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .local v0, "fadeAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 87
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 88
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 89
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->tvConnected:I

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "fadeAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void
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
    .locals 2
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog$change$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;

    sget v1, Lcom/everis/jibo/beamaker/R$id;->rlConnected:I

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/PairingConnectDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 94
    :cond_0
    return-void
.end method
