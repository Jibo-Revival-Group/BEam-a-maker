.class final Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;
.super Ljava/lang/Object;
.source "ParentalDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->show()V
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
.field final synthetic $problem:Lcom/everis/jibo/beamaker/data/Parental;

.field final synthetic $tvValueTwo:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;Lcom/everis/jibo/beamaker/data/Parental;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->$problem:Lcom/everis/jibo/beamaker/data/Parental;

    iput-object p3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->$tvValueTwo:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 78
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->$problem:Lcom/everis/jibo/beamaker/data/Parental;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/Parental;->getOptions()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->$problem:Lcom/everis/jibo/beamaker/data/Parental;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/Parental;->getSuccess()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->validate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->$tvValueTwo:Landroid/widget/TextView;

    const-string v2, "tvValueTwo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->anim(Landroid/widget/TextView;)V

    .line 80
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->$tvValueTwo:Landroid/widget/TextView;

    const-string v2, "tvValueTwo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->selected(Landroid/widget/TextView;)V

    .line 81
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->checkError()V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$show$3;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    invoke-virtual {v0, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->hideOverlay(Z)V

    goto :goto_0
.end method
