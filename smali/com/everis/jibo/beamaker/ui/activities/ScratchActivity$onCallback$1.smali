.class final Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;
.super Ljava/lang/Object;
.source "ScratchActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->onCallback(Lcom/everis/jibo/persistence/CoolIdea;)V
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
.field final synthetic $coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->$coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->stopAllBlocks()V

    .line 489
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->clearProject(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->changeProyect(Z)V

    .line 491
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->enableCoolIdea(Z)V

    .line 493
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    check-cast v2, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;

    invoke-direct {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;-><init>(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;)V

    .line 494
    .local v0, "coolIdeaDialog":Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;->$coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->show(Lcom/everis/jibo/persistence/CoolIdea;Z)V

    .line 495
    return-void
.end method
