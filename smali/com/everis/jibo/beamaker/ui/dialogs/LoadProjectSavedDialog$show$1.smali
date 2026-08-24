.class final Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$1;
.super Ljava/lang/Object;
.source "LoadProjectSavedDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->show(Lcom/everis/jibo/persistence/Project;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$show$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;

    invoke-static {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->access$showOverlay(Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;)V

    .line 49
    return-void
.end method
