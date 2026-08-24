.class public final Lcom/everis/jibo/beamaker/ui/activities/SplashActivity$showError$1;
.super Ljava/lang/Object;
.source "SplashActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->showError()V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/activities/SplashActivity$showError$1",
        "Landroid/content/DialogInterface$OnClickListener;",
        "(Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;)V",
        "onClick",
        "",
        "p0",
        "Landroid/content/DialogInterface;",
        "p1",
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


# instance fields
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity$showError$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "p0"    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity$showError$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/activities/SplashActivity;->getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->openSetting()V

    .line 54
    return-void
.end method
