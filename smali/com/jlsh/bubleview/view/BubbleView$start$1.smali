.class final Lcom/jlsh/bubleview/view/BubbleView$start$1;
.super Ljava/lang/Object;
.source "BubbleView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jlsh/bubleview/view/BubbleView;->start()V
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
.field final synthetic this$0:Lcom/jlsh/bubleview/view/BubbleView;


# direct methods
.method constructor <init>(Lcom/jlsh/bubleview/view/BubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/jlsh/bubleview/view/BubbleView$start$1;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView$start$1;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jlsh/bubleview/view/BubbleView;->setStop(Z)V

    .line 57
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView$start$1;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    iget-object v1, p0, Lcom/jlsh/bubleview/view/BubbleView$start$1;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    invoke-virtual {v1}, Lcom/jlsh/bubleview/view/BubbleView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jlsh/bubleview/view/BubbleView;->setMMaxX(I)V

    .line 58
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView$start$1;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    iget-object v1, p0, Lcom/jlsh/bubleview/view/BubbleView$start$1;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    invoke-virtual {v1}, Lcom/jlsh/bubleview/view/BubbleView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jlsh/bubleview/view/BubbleView;->setMMaxY(I)V

    .line 59
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView$start$1;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->generateViews()V

    .line 60
    return-void
.end method
