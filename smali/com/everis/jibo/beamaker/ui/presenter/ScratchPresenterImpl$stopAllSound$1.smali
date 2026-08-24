.class final Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;
.super Ljava/lang/Object;
.source "ScratchPresenterImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->stopAllSound(Lcom/everis/jibo/beamaker/data/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScratchPresenterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScratchPresenterImpl.kt\ncom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1\n*L\n1#1,956:1\n*E\n"
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
.field final synthetic $command:Lcom/everis/jibo/beamaker/data/Command;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->$command:Lcom/everis/jibo/beamaker/data/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 455
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->$command:Lcom/everis/jibo/beamaker/data/Command;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->$command:Lcom/everis/jibo/beamaker/data/Command;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_0

    .line 457
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMTransactionID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMTransactionID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->$command:Lcom/everis/jibo/beamaker/data/Command;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->$command:Lcom/everis/jibo/beamaker/data/Command;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/Command;->getBlockId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->setMCancelBlockID(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    sget-object v2, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->$command:Lcom/everis/jibo/beamaker/data/Command;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->cancel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->setMCancelTransactionID(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMBamJavascriptEvaluate()Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    move-result-object v2

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMCancelTransactionID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMCancelBlockID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_4
    invoke-interface {v2, v0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->transactionCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 455
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 457
    goto :goto_1

    .line 460
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 461
    :cond_4
    const-string v0, ""

    goto :goto_3

    :cond_5
    const-string v1, ""

    goto :goto_4
.end method
