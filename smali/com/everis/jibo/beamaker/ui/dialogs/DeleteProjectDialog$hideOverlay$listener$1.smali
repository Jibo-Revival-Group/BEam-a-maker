.class public final Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;
.super Ljava/lang/Object;
.source "DeleteProjectDialog.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->hideOverlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteProjectDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteProjectDialog.kt\ncom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1\n*L\n1#1,130:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;Z)V",
        "onAnimationEnd",
        "",
        "p0",
        "Landroid/view/animation/Animation;",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field final synthetic $canceled:Z

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;Z)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;
    .param p2, "$captured_local_variable$1"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;

    iput-boolean p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;->$canceled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    iget-boolean v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;->$canceled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "project"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    :goto_0
    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "project"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    if-eqz v0, :cond_0

    .line 112
    .local v0, "it":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->getCallback()Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$OnDeleteProjectListener;->onDeleteProjectSubmit(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    .line 116
    .end local v0    # "it":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$hideOverlay$listener$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->dismiss()V

    .line 117
    return-void

    .line 110
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "p0"    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    return-void
.end method
