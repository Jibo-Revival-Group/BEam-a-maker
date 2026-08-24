.class public interface abstract Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;
.super Ljava/lang/Object;
.source "MyProjectsPresenter.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/base/BasePresenter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/presenter/MyProjectsPresenter;",
        "Lcom/everis/jibo/beamaker/base/BasePresenter;",
        "deleteProyect",
        "",
        "project",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "saveProject",
        "projectName",
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


# virtual methods
.method public abstract deleteProyect(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract saveProject(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
