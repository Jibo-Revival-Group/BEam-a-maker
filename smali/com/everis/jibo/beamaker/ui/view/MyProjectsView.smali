.class public interface abstract Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;
.super Ljava/lang/Object;
.source "MyProjectsView.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/base/BaseView;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/view/MyProjectsView;",
        "Lcom/everis/jibo/beamaker/base/BaseView;",
        "disconnect",
        "",
        "code",
        "",
        "showProjects",
        "projects",
        "",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
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
.method public abstract disconnect(I)V
.end method

.method public abstract showProjects(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
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
.end method
