.class public interface abstract Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;
.super Ljava/lang/Object;
.source "EditProjectDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEditProjectListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;",
        "",
        "onClosingEditDialog",
        "",
        "onDeleteProjectSubmit",
        "project",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "onSaveProjectSubmit",
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
.method public abstract onClosingEditDialog()V
.end method

.method public abstract onDeleteProjectSubmit(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSaveProjectSubmit(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
