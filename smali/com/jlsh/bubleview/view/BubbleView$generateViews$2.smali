.class final Lcom/jlsh/bubleview/view/BubbleView$generateViews$2;
.super Ljava/lang/Object;
.source "BubbleView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jlsh/bubleview/view/BubbleView;->generateViews()V
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

    iput-object p1, p0, Lcom/jlsh/bubleview/view/BubbleView$generateViews$2;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView$generateViews$2;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->getStop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView$generateViews$2;->this$0:Lcom/jlsh/bubleview/view/BubbleView;

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->generateViews()V

    .line 122
    :cond_0
    return-void
.end method
