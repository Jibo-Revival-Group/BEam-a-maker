.class public final Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;
.super Ljava/lang/Object;
.source "DeleteProjectDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;",
        "",
        "()V",
        "PROJECT",
        "",
        "TAG",
        "newInstance",
        "Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;",
        "project",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/everis/jibo/beamaker/data/ProjectEntity;)Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;
    .locals 3
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "project"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "project"

    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "project":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;

    invoke-direct {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;-><init>()V

    .line 37
    .local v1, "dialog":Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;
    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/DeleteProjectDialog;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method
