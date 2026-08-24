.class public final Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;
.super Ljava/lang/Object;
.source "ScratchActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;-><init>()V
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1",
        "Ljava/lang/Runnable;",
        "(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V",
        "run",
        "",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 741
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMCoolIdeaWallpaperHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 745
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->enableCoolIdea(Z)V

    .line 746
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMCurrentCoolIdea()Lcom/everis/jibo/persistence/CoolIdea;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->initCoolIdea(Lcom/everis/jibo/persistence/CoolIdea;)V

    .line 747
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getMCurrentCoolIdea()Lcom/everis/jibo/persistence/CoolIdea;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->initCoolIdeaAnalytics(Lcom/everis/jibo/persistence/CoolIdea;)V

    .line 748
    return-void
.end method
