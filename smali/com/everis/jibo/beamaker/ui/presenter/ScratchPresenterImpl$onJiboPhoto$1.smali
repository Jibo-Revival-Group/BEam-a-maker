.class final Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboPhoto$1;
.super Ljava/lang/Object;
.source "ScratchPresenterImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->onJiboPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V
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
.field final synthetic $file:Ljava/io/File;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboPhoto$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboPhoto$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboPhoto$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMView()Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboPhoto$1;->$file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showPhoto(Ljava/io/File;)V

    .line 617
    return-void
.end method
