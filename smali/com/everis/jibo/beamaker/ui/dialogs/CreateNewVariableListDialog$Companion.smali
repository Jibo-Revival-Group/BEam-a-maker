.class public final Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;
.super Ljava/lang/Object;
.source "CreateNewVariableListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;",
        "",
        "()V",
        "CLOSE_DIALOG",
        "",
        "LIST",
        "SAVE",
        "TAG",
        "",
        "VAR",
        "newInstance",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;",
        "type",
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(I)Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;
    .locals 3
    .param p1, "type"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    new-instance v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    invoke-direct {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;-><init>()V

    .line 39
    .local v1, "f":Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;
    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method
