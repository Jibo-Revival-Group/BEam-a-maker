.class public final Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
.super Ljava/lang/Object;
.source "GettingLatestProjectUseCase.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/usecase/termsConditions/UseCase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/UseCase;",
        "mProjectsRepository",
        "Lcom/everis/jibo/beamaker/repository/ProjectsRepository;",
        "(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V",
        "mCallback",
        "Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;",
        "setMCallback",
        "(Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;)V",
        "getMProjectsRepository",
        "()Lcom/everis/jibo/beamaker/repository/ProjectsRepository;",
        "setMProjectsRepository",
        "cancel",
        "",
        "run",
        "GettingLatestProjectCallback",
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
.field public mCallback:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V
    .locals 1
    .param p1, "mProjectsRepository"    # Lcom/everis/jibo/beamaker/repository/ProjectsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "mProjectsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;->mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public final getMCallback()Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;

    if-nez v0, :cond_0

    const-string v1, "mCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMProjectsRepository()Lcom/everis/jibo/beamaker/repository/ProjectsRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;->mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 16
    iget-object v2, p0, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;->mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    invoke-interface {v2}, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;->getSortedProjects()Ljava/util/List;

    move-result-object v1

    .line 17
    .local v1, "sortedProjects":Ljava/util/List;
    new-instance v0, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;-><init>()V

    .line 18
    .local v0, "mainThread":Lcom/everis/jibo/beamaker/repository/MainThreadImpl;
    new-instance v2, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$run$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$run$1;-><init>(Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;Ljava/util/List;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;->post(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public final setMCallback(Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;

    return-void
.end method

.method public final setMProjectsRepository(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/repository/ProjectsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;->mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    return-void
.end method
