.class public interface abstract Lcom/everis/jibo/beamaker/ui/view/ScratchView;
.super Ljava/lang/Object;
.source "ScratchView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\n\u0010\t\u001a\u0004\u0018\u00010\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u0003H&J\u0008\u0010\u000e\u001a\u00020\u0003H&J\u0008\u0010\u000f\u001a\u00020\u0003H&J\u0008\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0008\u0010\u0014\u001a\u00020\u0003H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0007H&J\u0008\u0010\u0017\u001a\u00020\u0003H&J\u0008\u0010\u0018\u001a\u00020\u0003H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0008\u0010\u001d\u001a\u00020\u0003H&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 H&\u00a8\u0006!"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/view/ScratchView;",
        "",
        "closeCoolIdeas",
        "",
        "disableToolbarButtons",
        "disconnect",
        "code",
        "",
        "enableToolbarButtons",
        "getBaseActivity",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "getScrach",
        "Landroid/webkit/WebView;",
        "hideLoadingDialog",
        "hidePermissionDialog",
        "initScreen",
        "openCoolIdeas",
        "openEditProjectDialog",
        "project",
        "Lcom/everis/jibo/persistence/Project;",
        "openNewProjectDialog",
        "openNewVariableListDialog",
        "type",
        "showAddProjectAnim",
        "showDelProjectAnim",
        "showLoadSavedProjectDialog",
        "showNameProject",
        "projectName",
        "",
        "showPemissionDialog",
        "showPhoto",
        "file",
        "Ljava/io/File;",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# virtual methods
.method public abstract closeCoolIdeas()V
.end method

.method public abstract disableToolbarButtons()V
.end method

.method public abstract disconnect(I)V
.end method

.method public abstract enableToolbarButtons()V
.end method

.method public abstract getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getScrach()Landroid/webkit/WebView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract hideLoadingDialog()V
.end method

.method public abstract hidePermissionDialog()V
.end method

.method public abstract initScreen()V
.end method

.method public abstract openCoolIdeas()V
.end method

.method public abstract openEditProjectDialog(Lcom/everis/jibo/persistence/Project;)V
    .param p1    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract openNewProjectDialog()V
.end method

.method public abstract openNewVariableListDialog(I)V
.end method

.method public abstract showAddProjectAnim()V
.end method

.method public abstract showDelProjectAnim()V
.end method

.method public abstract showLoadSavedProjectDialog(Lcom/everis/jibo/persistence/Project;)V
    .param p1    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showNameProject(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showPemissionDialog()V
.end method

.method public abstract showPhoto(Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
