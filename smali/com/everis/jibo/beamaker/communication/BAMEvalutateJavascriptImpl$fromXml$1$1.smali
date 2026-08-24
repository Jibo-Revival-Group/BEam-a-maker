.class public final Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1$1;
.super Ljava/lang/Object;
.source "BAMEvalutateJavascriptImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;->run()V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1$1",
        "Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;",
        "(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;)V",
        "onHandler",
        "",
        "p0",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1$1;->this$0:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1$1;->this$0:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;

    iget-object v0, v0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;->$callback:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    if-eqz p1, :cond_0

    .end local p1    # "p0":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;->onResult(Ljava/lang/String;)V

    .line 143
    return-void

    .line 142
    .restart local p1    # "p0":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method
