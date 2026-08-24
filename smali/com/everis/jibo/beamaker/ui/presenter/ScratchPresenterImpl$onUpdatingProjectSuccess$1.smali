.class final Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onUpdatingProjectSuccess$1;
.super Ljava/lang/Object;
.source "ScratchPresenterImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->onUpdatingProjectSuccess(Lcom/everis/jibo/persistence/Project;)V
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onUpdatingProjectSuccess$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onUpdatingProjectSuccess$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMView()Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    move-result-object v0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showAddProjectAnim()V

    .line 260
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onUpdatingProjectSuccess$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMView()Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    move-result-object v1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onUpdatingProjectSuccess$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-static {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->access$getMProject$p(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)Lcom/everis/jibo/persistence/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showNameProject(Ljava/lang/String;)V

    .line 261
    return-void

    .line 260
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
