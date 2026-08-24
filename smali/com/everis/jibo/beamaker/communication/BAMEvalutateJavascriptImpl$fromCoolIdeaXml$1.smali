.class final Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;
.super Ljava/lang/Object;
.source "BAMEvalutateJavascriptImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;->fromCoolIdeaXml(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
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
.field final synthetic $callback:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

.field final synthetic $script:Ljava/lang/String;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;->this$0:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;->$script:Ljava/lang/String;

    iput-object p3, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;->$callback:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;->this$0:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;->$script:Ljava/lang/String;

    new-instance v1, Lcom/everis/jibo/beamaker/utils/JavaScriptResult;

    new-instance v0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;)V

    check-cast v0, Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;

    invoke-direct {v1, v0}, Lcom/everis/jibo/beamaker/utils/JavaScriptResult;-><init>(Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;)V

    move-object v0, v1

    check-cast v0, Landroid/webkit/ValueCallback;

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 162
    return-void
.end method
