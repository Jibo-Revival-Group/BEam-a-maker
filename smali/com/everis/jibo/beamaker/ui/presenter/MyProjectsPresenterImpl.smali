.class public final Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;
.super Ljava/lang/Object;
.source "MyProjectsPresenterImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;
.implements Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
.implements Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;
.implements Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;
.implements Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B%\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0017H\u0016J\u0012\u0010\"\u001a\u00020 2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020 2\u0006\u0010!\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020 2\u0006\u0010&\u001a\u00020\'H\u0016J\u0008\u0010+\u001a\u00020 H\u0016J\u0008\u0010,\u001a\u00020 H\u0016J\u0010\u0010-\u001a\u00020 2\u0006\u0010&\u001a\u00020\'H\u0016J\u0016\u0010.\u001a\u00020 2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020)0\u0016H\u0016J\u0010\u00100\u001a\u00020 2\u0006\u00101\u001a\u000202H\u0016J\u001c\u00103\u001a\u00020 2\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u00106\u001a\u0004\u0018\u000105H\u0016J\u001c\u00107\u001a\u00020 2\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u00108\u001a\u0004\u0018\u000109H\u0016J\u001c\u0010:\u001a\u00020 2\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u001c\u0010=\u001a\u00020 2\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u0010>\u001a\u0004\u0018\u000105H\u0016J\u0008\u0010?\u001a\u00020 H\u0016J$\u0010@\u001a\u00020 2\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u00108\u001a\u0004\u0018\u00010A2\u0006\u0010B\u001a\u00020CH\u0016J\u0008\u0010D\u001a\u00020 H\u0016J\u0012\u0010E\u001a\u00020 2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0008\u0010F\u001a\u00020 H\u0016J\u0008\u0010G\u001a\u00020 H\u0016J\u0008\u0010H\u001a\u00020 H\u0016J\u0008\u0010I\u001a\u00020 H\u0016J\u0010\u0010J\u001a\u00020 2\u0006\u0010K\u001a\u000205H\u0016J\u0008\u0010L\u001a\u00020 H\u0002R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006M"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;",
        "Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;",
        "Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;",
        "Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;",
        "Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;",
        "Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;",
        "view",
        "Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;",
        "mGettingProjectsUseCase",
        "Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;",
        "mCreatingProjectUseCase",
        "Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;",
        "mDeletingProjectUseCase",
        "Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;",
        "(Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;)V",
        "getMCreatingProjectUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;",
        "getMDeletingProjectUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;",
        "getMGettingProjectsUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;",
        "mProjects",
        "",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "getMProjects",
        "()Ljava/util/List;",
        "setMProjects",
        "(Ljava/util/List;)V",
        "mView",
        "getMView",
        "()Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;",
        "deleteProyect",
        "",
        "project",
        "onCreate",
        "bundle",
        "Landroid/os/Bundle;",
        "onCreatingProjectError",
        "throwable",
        "",
        "onCreatingProjectSuccess",
        "Lcom/everis/jibo/persistence/Project;",
        "onDeletingProjectError",
        "onDeletingProjectSucces",
        "onDestroy",
        "onGettingLatestProjectError",
        "onGettingLatestProjectSuccess",
        "sortedProjects",
        "onJiboDisconnect",
        "code",
        "",
        "onJiboError",
        "transactionID",
        "",
        "errorMessage",
        "onJiboEvent",
        "event",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;",
        "onJiboEventError",
        "errorData",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;",
        "onJiboListen",
        "result",
        "onJiboParseError",
        "onJiboPhoto",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;",
        "inputStream",
        "Ljava/io/InputStream;",
        "onJiboSocketError",
        "onJiboSuccess",
        "onPause",
        "onResume",
        "onStart",
        "onStop",
        "saveProject",
        "projectName",
        "updateProjects",
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
.field private final mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mView:Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;)V
    .locals 2
    .param p1, "view"    # Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "mGettingProjectsUseCase"    # Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "mCreatingProjectUseCase"    # Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "mDeletingProjectUseCase"    # Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mGettingProjectsUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCreatingProjectUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDeletingProjectUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    iput-object p3, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    iput-object p4, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    .line 35
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;

    .line 41
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->initListener(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;)V

    .line 42
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;->setMCallback(Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;)V

    .line 43
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;->setMCallback(Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;)V

    .line 44
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    check-cast p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;
    invoke-virtual {v0, p0}, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->setMCallback(Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;)V

    return-void
.end method

.method private final updateProjects()V
    .locals 2

    .prologue
    .line 160
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$updateProjects$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$updateProjects$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 163
    return-void
.end method


# virtual methods
.method public deleteProyect(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$deleteProyect$1;

    invoke-direct {v0, p0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$deleteProyect$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method public final getMCreatingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    return-object v0
.end method

.method public final getMDeletingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    return-object v0
.end method

.method public final getMGettingProjectsUseCase()Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    return-object v0
.end method

.method public final getMProjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mProjects:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "mProjects"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMView()Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->updateProjects()V

    .line 49
    return-void
.end method

.method public onCreatingProjectError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onCreatingProjectSuccess(Lcom/everis/jibo/persistence/Project;)V
    .locals 1
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->updateProjects()V

    .line 147
    return-void
.end method

.method public onDeletingProjectError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onDeletingProjectSucces()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->updateProjects()V

    .line 154
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onGettingLatestProjectError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onGettingLatestProjectSuccess(Ljava/util/List;)V
    .locals 2
    .param p1, "sortedProjects"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v1, "sortedProjects"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$onGettingLatestProjectSuccess$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$onGettingLatestProjectSuccess$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;Ljava/util/List;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method public onJiboDisconnect(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;->disconnect(I)V

    .line 99
    return-void
.end method

.method public onJiboError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "errorMessage"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    if-eqz p1, :cond_0

    .end local p1    # "transactionID":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 82
    return-void

    .line 81
    .restart local p1    # "transactionID":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public onJiboEvent(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    return-void
.end method

.method public onJiboEventError(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "errorData"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    if-eqz p1, :cond_0

    .end local p1    # "transactionID":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 93
    return-void

    .line 92
    .restart local p1    # "transactionID":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public onJiboListen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    return-void
.end method

.method public onJiboParseError()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    const-string v1, "onJiboParseError"

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onJiboPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "inputStream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onJiboSocketError()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    const-string v1, "onJiboSocketError"

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;

    sget-object v1, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getSOCKET_ERROR()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;->disconnect(I)V

    .line 87
    return-void
.end method

.method public onJiboSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    if-eqz p1, :cond_0

    .end local p1    # "transactionID":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 72
    return-void

    .line 71
    .restart local p1    # "transactionID":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public saveProject(Ljava/lang/String;)V
    .locals 6
    .param p1, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v4, "projectName"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 107
    .local v2, "time":J
    sget-object v4, Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;->INSTANCE:Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;

    invoke-virtual {v4}, Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;->getImage()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "randomImage":Ljava/lang/String;
    new-instance v0, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/data/ProjectEntity;-><init>()V

    .line 110
    .local v0, "projectEntity":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setId(J)V

    .line 111
    invoke-virtual {v0, v2, v3}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setCreationDate(J)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setProjectName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setImgName(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v2, v3}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setModificationDate(J)V

    .line 115
    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setXmlString(Ljava/lang/String;)V

    .line 117
    new-instance v5, Ljava/lang/Thread;

    new-instance v4, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$saveProject$1;

    invoke-direct {v4, p0, v0}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl$saveProject$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method

.method public final setMProjects(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;->mProjects:Ljava/util/List;

    return-void
.end method
