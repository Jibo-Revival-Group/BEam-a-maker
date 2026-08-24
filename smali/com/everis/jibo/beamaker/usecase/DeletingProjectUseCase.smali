.class public final Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
.super Ljava/lang/Object;
.source "DeletingProjectUseCase.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/usecase/termsConditions/UseCase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeletingProjectUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeletingProjectUseCase.kt\ncom/everis/jibo/beamaker/usecase/DeletingProjectUseCase\n*L\n1#1,34:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u001bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0004R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;",
        "Lcom/everis/jibo/beamaker/usecase/termsConditions/UseCase;",
        "mProjectsRepository",
        "Lcom/everis/jibo/beamaker/repository/ProjectsRepository;",
        "(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V",
        "mCallback",
        "Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;",
        "setMCallback",
        "(Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;)V",
        "mProject",
        "Lcom/everis/jibo/persistence/Project;",
        "getMProject",
        "()Lcom/everis/jibo/persistence/Project;",
        "setMProject",
        "(Lcom/everis/jibo/persistence/Project;)V",
        "getMProjectsRepository",
        "()Lcom/everis/jibo/beamaker/repository/ProjectsRepository;",
        "setMProjectsRepository",
        "t",
        "",
        "getT",
        "()Ljava/lang/Throwable;",
        "cancel",
        "",
        "run",
        "DeletingProjectCallback",
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
.field private mCallback:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mProject:Lcom/everis/jibo/persistence/Project;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final t:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V
    .locals 3
    .param p1, "mProjectsRepository"    # Lcom/everis/jibo/beamaker/repository/ProjectsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "mProjectsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    .line 11
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Error when deleteing, project is null"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->t:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public final getMCallback()Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;

    return-object v0
.end method

.method public final getMProject()Lcom/everis/jibo/persistence/Project;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mProject:Lcom/everis/jibo/persistence/Project;

    return-object v0
.end method

.method public final getMProjectsRepository()Lcom/everis/jibo/beamaker/repository/ProjectsRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    return-object v0
.end method

.method public final getT()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->t:Ljava/lang/Throwable;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 15
    iget-object v1, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v1, :cond_2

    .line 17
    .local v1, "it":Lcom/everis/jibo/persistence/Project;
    iget-object v2, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    invoke-interface {v2, v1}, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;->delete(Lcom/everis/jibo/persistence/Project;)V

    .line 18
    iget-object v2, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;->onDeletingProjectSucces()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    :goto_0
    if-eqz v2, :cond_2

    .line 24
    .end local v1    # "it":Lcom/everis/jibo/persistence/Project;
    :cond_0
    :goto_1
    return-void

    .line 18
    .restart local v1    # "it":Lcom/everis/jibo/persistence/Project;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "it":Lcom/everis/jibo/persistence/Project;
    :cond_2
    move-object v0, p0

    .line 20
    check-cast v0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    .line 21
    .local v0, "$receiver":Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
    iget-object v2, v0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->t:Ljava/lang/Throwable;

    invoke-interface {v2, v3}, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;->onDeletingProjectError(Ljava/lang/Throwable;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1
.end method

.method public final setMCallback(Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mCallback:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;

    return-void
.end method

.method public final setMProject(Lcom/everis/jibo/persistence/Project;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mProject:Lcom/everis/jibo/persistence/Project;

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

    .line 7
    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->mProjectsRepository:Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    return-void
.end method
