.class final Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$saveProject$1;
.super Ljava/lang/Object;
.source "MyProjectsPresenterImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->saveProject(Ljava/lang/String;)V
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
.field final synthetic $projectEntity:Lcom/everis/jibo/beamaker/data/ProjectEntity;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$saveProject$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$saveProject$1;->$projectEntity:Lcom/everis/jibo/beamaker/data/ProjectEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$saveProject$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->getMCreatingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    move-result-object v0

    sget-object v1, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$saveProject$1;->$projectEntity:Lcom/everis/jibo/beamaker/data/ProjectEntity;

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->fromParcelableProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)Lcom/everis/jibo/persistence/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;->setMProject(Lcom/everis/jibo/persistence/Project;)V

    .line 119
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$saveProject$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->getMCreatingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;->run()V

    .line 120
    return-void
.end method
