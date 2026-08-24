.class public final Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;
.super Ljava/lang/Object;
.source "BAMEvalutateJavascriptImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBAMEvalutateJavascriptImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BAMEvalutateJavascriptImpl.kt\ncom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl\n*L\n1#1,189:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0018\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000fH\u0016J\u0018\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0019\u001a\u00020\u000cH\u0016J\u0008\u0010\u001a\u001a\u00020\u000cH\u0016J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;",
        "Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;",
        "webView",
        "Landroid/webkit/WebView;",
        "callback",
        "Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;",
        "(Landroid/webkit/WebView;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V",
        "getCallback",
        "()Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;",
        "getWebView",
        "()Landroid/webkit/WebView;",
        "clearAll",
        "",
        "createList",
        "list",
        "",
        "createVariable",
        "variable",
        "eventCallback",
        "json",
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
.field private final callback:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;->webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;->callback:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 6

    .prologue
    .line 120
    const-string v1, "javascript:window.fromXml(\"<xml xmlns=\\\"http://www.w3.org/1999/xhtml\\\"><variables></variables></xml>\");"

    .line 122
    .local v1, "script":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$clearAll$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$clearAll$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 130
    const-wide/16 v4, 0x0

    .line 123
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method

.method public createList(Ljava/lang/String;)V
    .locals 6
    .param p1, "list"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.setVariableValue(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "script":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$createList$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$createList$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 187
    const-wide/16 v4, 0x1

    .line 185
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void
.end method

.method public createVariable(Ljava/lang/String;)V
    .locals 6
    .param p1, "variable"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.setVariableValue(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "script":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$createVariable$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$createVariable$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 175
    const-wide/16 v4, 0x1

    .line 173
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void
.end method

.method public eventCallback(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "json"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.jibo.eventCallback(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "script":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$eventCallback$2;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$eventCallback$2;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 70
    const-wide/16 v4, 0x0

    .line 68
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    return-void
.end method

.method public eventCallback(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "json"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.jibo.eventCallback(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "script":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$eventCallback$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$eventCallback$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 58
    const-wide/16 v4, 0x0

    .line 51
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method public eventHandler(Ljava/lang/String;)V
    .locals 6
    .param p1, "blockId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "blockId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.jibo.eventHandler(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "script":Ljava/lang/String;
    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$eventHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$eventHandler$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 28
    const-wide/16 v4, 0x0

    .line 26
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method

.method public fromCoolIdeaXml(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .locals 9
    .param p1, "xml"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "xml"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.fromXml(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v1, "\'"

    const-string v2, "&apos;"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "script":Ljava/lang/String;
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;

    invoke-direct {v0, p0, v7, p2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromCoolIdeaXml$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 162
    const-wide/16 v2, 0x0

    .line 155
    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method

.method public fromXml(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .locals 9
    .param p1, "xml"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "xml"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.fromXml(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v1, "\'"

    const-string v2, "&apos;"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "script":Ljava/lang/String;
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;

    invoke-direct {v0, p0, v7, p2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$fromXml$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 146
    const-wide/16 v2, 0x0

    .line 139
    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    return-void
.end method

.method public final getCallback()Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;->callback:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public greenFlag()V
    .locals 6

    .prologue
    .line 76
    const-string v1, "javascript:window.greenFlag();"

    .line 78
    .local v1, "script":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$greenFlag$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$greenFlag$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 85
    const-wide/16 v4, 0x0

    .line 79
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method

.method public stopAll()V
    .locals 6

    .prologue
    .line 91
    const-string v1, "javascript:window.stopAll();"

    .line 94
    .local v1, "script":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$stopAll$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$stopAll$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 97
    const-wide/16 v4, 0x0

    .line 95
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method

.method public toXML(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "callback"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const-string v1, "javascript:window.toXml();"

    .line 106
    .local v1, "script":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$toXML$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$toXML$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 114
    const-wide/16 v4, 0x0

    .line 107
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method

.method public transactionCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "blockId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "transactionId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "blockId"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.jibo.transactionCallback(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "script":Ljava/lang/String;
    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$transactionCallback$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl$transactionCallback$1;-><init>(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 41
    const-wide/16 v4, 0x0

    .line 39
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    return-void
.end method
