.class final Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl$onResume$2;
.super Ljava/lang/Object;
.source "SplashPresenterImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl$onResume$2;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl$onResume$2;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/SplashPresenterImpl;->getMView()Lcom/everis/jibo/beamaker/ui/view/SplashView;

    move-result-object v0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/SplashView;->showTermsConditions()V

    .line 45
    return-void
.end method
