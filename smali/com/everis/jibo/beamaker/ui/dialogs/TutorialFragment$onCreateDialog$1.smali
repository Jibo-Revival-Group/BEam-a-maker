.class public final Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$onCreateDialog$1;
.super Ljava/lang/Object;
.source "TutorialFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/dialogs/TutorialFragment$onCreateDialog$1",
        "Landroid/content/DialogInterface$OnKeyListener;",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;)V",
        "onKey",
        "",
        "dialogInterface",
        "Landroid/content/DialogInterface;",
        "keyCode",
        "",
        "keyEvent",
        "Landroid/view/KeyEvent;",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$onCreateDialog$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "dialogInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$onCreateDialog$1;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->getMCallback()Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;->onCancel()V

    .line 45
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
