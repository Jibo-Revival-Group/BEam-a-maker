.class final Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectError$1;
.super Ljava/lang/Object;
.source "PairingFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->showConnectError()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "<anonymous parameter 1>",
        "",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectError$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "$noName_1"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$showConnectError$1;->this$0:Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    const/4 v0, 0x0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    invoke-static {v1, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->access$setAlertDialog$p(Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;Landroid/support/v7/app/AlertDialog;)V

    return-void
.end method
