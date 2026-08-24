.class final Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$4;
.super Ljava/lang/Object;
.source "CoolIdeaVideoDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->show(Lcom/everis/jibo/persistence/CoolIdea;Z)V
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
.field final synthetic $coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$4;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$4;->$coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$4;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->getMCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$4;->$coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;->go(Lcom/everis/jibo/persistence/CoolIdea;)V

    .line 117
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$4;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->hideOverlay()V

    .line 118
    return-void
.end method
