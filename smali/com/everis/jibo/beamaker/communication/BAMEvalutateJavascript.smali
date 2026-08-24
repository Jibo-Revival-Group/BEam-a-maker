.class public interface abstract Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;
.super Ljava/lang/Object;
.source "BAMEvalutateJavascript.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008f\u0018\u00002\u00020\u0001:\u0001\u0017J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0006H&J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\u0012\u001a\u00020\u0003H&J\u0008\u0010\u0013\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H&\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;",
        "",
        "clearAll",
        "",
        "createList",
        "list",
        "",
        "createVariable",
        "variable",
        "eventCallback",
        "json",
        "callback",
        "Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;",
        "eventHandler",
        "blockId",
        "fromCoolIdeaXml",
        "xml",
        "fromXml",
        "greenFlag",
        "stopAll",
        "toXML",
        "transactionCallback",
        "transactionId",
        "EvaluateJavascriptCallback",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract createList(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract createVariable(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract eventCallback(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract eventCallback(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract eventHandler(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract fromCoolIdeaXml(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract fromXml(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract greenFlag()V
.end method

.method public abstract stopAll()V
.end method

.method public abstract toXML(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .param p1    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract transactionCallback(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
