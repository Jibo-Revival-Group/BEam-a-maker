.class public final Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;
.super Lcom/everis/jibo/beamaker/base/BaseFragment;
.source "MyProjectsFragment.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;
.implements Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u0000 .2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0014H\u0016J\u0010\u0010!\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010\"\u001a\u00020\u0014H\u0016J\u0010\u0010#\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u001a\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0006\u0010)\u001a\u00020\u0014J\u0006\u0010*\u001a\u00020\u0014J\u0016\u0010+\u001a\u00020\u00142\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u001f0-H\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006/"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;",
        "Lcom/everis/jibo/beamaker/base/BaseFragment;",
        "Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;",
        "Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;",
        "()V",
        "mAdapter",
        "Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;",
        "getMAdapter",
        "()Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;",
        "setMAdapter",
        "(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;)V",
        "mPresenter",
        "Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;",
        "getMPresenter",
        "()Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;",
        "setMPresenter",
        "(Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;)V",
        "disconnect",
        "",
        "code",
        "",
        "getContextData",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "getLayoutResource",
        "onAddProjectSubmit",
        "projectName",
        "",
        "onClick",
        "project",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "onClickAdd",
        "onClickTrash",
        "onCloseCreateProjectDialog",
        "onDeleteProjectSubmit",
        "onInit",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showAddProjectAnim",
        "showDelProjectAnim",
        "showProjects",
        "projects",
        "",
        "Companion",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final Companion:Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "MyProjectsFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->Companion:Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public disconnect(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 170
    :cond_1
    return-void
.end method

.method public getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/everis/jibo/beamaker/base/BaseActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/everis/jibo/beamaker/base/BaseActivity;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0a0036

    return v0
.end method

.method public final getMAdapter()Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;

    if-nez v0, :cond_0

    const-string v1, "mAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onAddProjectSubmit(Ljava/lang/String;)V
    .locals 2
    .param p1, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "projectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->showAddProjectAnim()V

    .line 115
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;->saveProject(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onClick(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 3
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "project"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PROJECT"

    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "project":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 90
    :cond_1
    return-void
.end method

.method public onClickAdd()V
    .locals 3

    .prologue
    .line 100
    sget-object v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$Companion;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$Companion;->newInstance()Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    move-result-object v0

    .line 101
    .local v0, "dialog":Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;
    const/4 v1, 0x1

    const v2, 0x7f0f00ad

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->setStyle(II)V

    move-object v1, p0

    .line 102
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->setCallback(Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CreateProjectDialog"

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onClickTrash(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 3
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "project"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;

    invoke-virtual {v1, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;->newInstance(Lcom/everis/jibo/beamaker/data/ProjectEntity;)Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;

    move-result-object v0

    .line 94
    .local v0, "dialog":Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;
    const/4 v1, 0x1

    const v2, 0x7f0f00ad

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->setStyle(II)V

    move-object v1, p0

    .line 95
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->setCallback(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DeleteProjectDialog"

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onCloseCreateProjectDialog()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onDeleteProjectSubmit(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->showDelProjectAnim()V

    .line 141
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;->deleteProyect(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    .line 142
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onInit(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v4, "view"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    check-cast v4, Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/everis/jibo/beamaker/R$id;->tBarProjects:I

    invoke-virtual {p0, v5}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    check-cast v5, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    check-cast v4, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    check-cast v4, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    :cond_5
    sget v4, Lcom/everis/jibo/beamaker/R$id;->tBarProjects:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/support/v7/widget/Toolbar;

    if-nez v5, :cond_6

    const/4 v4, 0x0

    :cond_6
    check-cast v4, Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_7

    new-instance v5, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$onInit$1;

    invoke-direct {v5, p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$onInit$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_7
    new-instance v2, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    .line 64
    new-instance v4, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;

    sget-object v5, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    invoke-virtual {v5}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;->getAppDatabase()Lcom/everis/jibo/persistence/BeAMakerDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->projectDao()Lcom/everis/jibo/persistence/ProjectDao;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;-><init>(Lcom/everis/jibo/persistence/ProjectDao;)V

    check-cast v4, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    .line 63
    invoke-direct {v2, v4}, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;-><init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V

    .line 67
    .local v2, "gettingProjectsUseCase":Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
    new-instance v0, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    .line 68
    new-instance v4, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;

    sget-object v5, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    invoke-virtual {v5}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;->getAppDatabase()Lcom/everis/jibo/persistence/BeAMakerDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->projectDao()Lcom/everis/jibo/persistence/ProjectDao;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;-><init>(Lcom/everis/jibo/persistence/ProjectDao;)V

    check-cast v4, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    .line 67
    invoke-direct {v0, v4}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;-><init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V

    .line 71
    .local v0, "creatingProjectUseCase":Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
    new-instance v1, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    .line 72
    new-instance v4, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;

    sget-object v5, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    invoke-virtual {v5}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;->getAppDatabase()Lcom/everis/jibo/persistence/BeAMakerDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->projectDao()Lcom/everis/jibo/persistence/ProjectDao;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;-><init>(Lcom/everis/jibo/persistence/ProjectDao;)V

    check-cast v4, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    .line 71
    invoke-direct {v1, v4}, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;-><init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V

    .line 74
    .local v1, "deletingProjectUseCase":Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
    new-instance v5, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;

    move-object v4, p0

    check-cast v4, Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;

    invoke-direct {v5, v4, v2, v0, v1}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenterImpl;-><init>(Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;)V

    move-object v4, v5

    check-cast v4, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;

    iput-object v4, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;

    .line 75
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;

    if-nez v4, :cond_8

    const-string v5, "mPresenter"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-interface {v4, p2}, Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v5, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v4, p0

    check-cast v4, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;

    invoke-direct {v5, v6, v4}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;-><init>(Ljava/util/List;Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;)V

    iput-object v5, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;

    .line 79
    sget v4, Lcom/everis/jibo/beamaker/R$id;->rvProjects:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    const-string v5, "rvProjects"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;

    if-nez v5, :cond_9

    const-string v6, "mAdapter"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    check-cast v5, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 80
    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 81
    .local v3, "mProjectsLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    sget v4, Lcom/everis/jibo/beamaker/R$id;->rvProjects:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    const-string v5, "rvProjects"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .end local v3    # "mProjectsLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    return-void
.end method

.method public final setMAdapter(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;

    return-void
.end method

.method public final setMPresenter(Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;

    return-void
.end method

.method public final showAddProjectAnim()V
    .locals 4

    .prologue
    .line 122
    sget v2, Lcom/everis/jibo/beamaker/R$id;->rlAnimAdd:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    :cond_0
    new-instance v1, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    invoke-direct {v1}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;-><init>()V

    .line 124
    .local v1, "lottieLoading":Lcom/everisbank/jibobank/utils/LottieAnimationLoading;
    sget v2, Lcom/everis/jibo/beamaker/R$id;->laAddProj:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "laAddProj"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;->show(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 126
    new-instance v0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$showAddProjectAnim$introListener$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$showAddProjectAnim$introListener$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;)V

    .line 136
    .local v0, "introListener":Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$showAddProjectAnim$introListener$1;
    sget v2, Lcom/everis/jibo/beamaker/R$id;->laAddProj:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .end local v0    # "introListener":Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$showAddProjectAnim$introListener$1;
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    return-void
.end method

.method public final showDelProjectAnim()V
    .locals 4

    .prologue
    .line 146
    sget v2, Lcom/everis/jibo/beamaker/R$id;->rlAnimDel:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    :cond_0
    new-instance v1, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    invoke-direct {v1}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;-><init>()V

    .line 148
    .local v1, "lottieLoading":Lcom/everisbank/jibobank/utils/LottieAnimationLoading;
    sget v2, Lcom/everis/jibo/beamaker/R$id;->laDeleteProj:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "laDeleteProj"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;->show(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 150
    new-instance v0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$showDelProjectAnim$introListener$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$showDelProjectAnim$introListener$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;)V

    .line 160
    .local v0, "introListener":Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$showDelProjectAnim$introListener$1;
    sget v2, Lcom/everis/jibo/beamaker/R$id;->laDeleteProj:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .end local v0    # "introListener":Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment$showDelProjectAnim$introListener$1;
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    return-void
.end method

.method public showProjects(Ljava/util/List;)V
    .locals 2
    .param p1, "projects"    # Ljava/util/List;
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
    const-string v0, "projects"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/MyProjectsFragment;->mAdapter:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;

    if-nez v0, :cond_0

    const-string v1, "mAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->refresh(Ljava/util/List;)V

    .line 108
    return-void
.end method
