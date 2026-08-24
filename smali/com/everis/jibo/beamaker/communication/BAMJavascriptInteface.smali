.class public final Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;
.super Ljava/lang/Object;
.source "BAMJavascriptInteface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;",
        "",
        "listener",
        "Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;",
        "(Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;)V",
        "getListener",
        "()Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;",
        "blockMoved",
        "",
        "json",
        "",
        "callbackHandler",
        "commandHandler",
        "finishScript",
        "promptEvent",
        "scratchLoaded",
        "startScript",
        "OnJavaScriptHandler",
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
.field private final listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;)V
    .locals 1
    .param p1, "listener"    # Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    return-void
.end method


# virtual methods
.method public final blockMoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;->blockMoved(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public final callbackHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;->callbackHandler(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public final commandHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;->commandHandler(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final finishScript(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;->finishScript(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public final getListener()Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    return-object v0
.end method

.method public final promptEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;->promptEvent(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public final scratchLoaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;->scratchLoaded(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final startScript(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;->listener:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;->startScript(Ljava/lang/String;)V

    .line 25
    return-void
.end method
