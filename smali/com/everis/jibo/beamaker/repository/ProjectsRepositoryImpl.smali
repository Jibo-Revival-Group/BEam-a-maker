.class public final Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;
.super Ljava/lang/Object;
.source "ProjectsRepositoryImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/repository/ProjectsRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0016J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;",
        "Lcom/everis/jibo/beamaker/repository/ProjectsRepository;",
        "projectDao",
        "Lcom/everis/jibo/persistence/ProjectDao;",
        "(Lcom/everis/jibo/persistence/ProjectDao;)V",
        "getProjectDao",
        "()Lcom/everis/jibo/persistence/ProjectDao;",
        "delete",
        "",
        "project",
        "Lcom/everis/jibo/persistence/Project;",
        "getProjects",
        "",
        "getSortedProjects",
        "insert",
        "update",
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
.field private final projectDao:Lcom/everis/jibo/persistence/ProjectDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/persistence/ProjectDao;)V
    .locals 1
    .param p1, "projectDao"    # Lcom/everis/jibo/persistence/ProjectDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "projectDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;->projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    return-void
.end method


# virtual methods
.method public delete(Lcom/everis/jibo/persistence/Project;)V
    .locals 1
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;->projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    invoke-interface {v0, p1}, Lcom/everis/jibo/persistence/ProjectDao;->delete(Lcom/everis/jibo/persistence/Project;)V

    .line 32
    return-void
.end method

.method public final getProjectDao()Lcom/everis/jibo/persistence/ProjectDao;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;->projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    return-object v0
.end method

.method public getProjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v1, p0, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;->projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    invoke-interface {v1}, Lcom/everis/jibo/persistence/ProjectDao;->getProjects()Ljava/util/List;

    move-result-object v0

    .line 13
    .local v0, "projects":Ljava/util/List;
    return-object v0
.end method

.method public getSortedProjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    iget-object v1, p0, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;->projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    invoke-interface {v1}, Lcom/everis/jibo/persistence/ProjectDao;->getSortedProjects()Ljava/util/List;

    move-result-object v0

    .line 18
    .local v0, "projects":Ljava/util/List;
    return-object v0
.end method

.method public insert(Lcom/everis/jibo/persistence/Project;)Lcom/everis/jibo/persistence/Project;
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;->projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    invoke-interface {v0, p1}, Lcom/everis/jibo/persistence/ProjectDao;->insert(Lcom/everis/jibo/persistence/Project;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/everis/jibo/persistence/Project;->setId(J)V

    .line 23
    return-object p1
.end method

.method public update(Lcom/everis/jibo/persistence/Project;)V
    .locals 1
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;->projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    invoke-interface {v0, p1}, Lcom/everis/jibo/persistence/ProjectDao;->update(Lcom/everis/jibo/persistence/Project;)V

    .line 28
    return-void
.end method
