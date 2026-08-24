.class public final Lcom/everis/jibo/beamaker/utils/JavaScriptResult;
.super Ljava/lang/Object;
.source "JavaScriptResult.kt"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/JavaScriptResult;",
        "Landroid/webkit/ValueCallback;",
        "",
        "callback",
        "Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;",
        "(Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;)V",
        "getCallback",
        "()Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;",
        "onReceiveValue",
        "",
        "p0",
        "OnCallback",
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
.field private final callback:Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/utils/JavaScriptResult;->callback:Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/JavaScriptResult;->callback:Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;

    return-object v0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/everis/jibo/beamaker/utils/JavaScriptResult;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/JavaScriptResult;->callback:Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/utils/JavaScriptResult$OnCallback;->onHandler(Ljava/lang/String;)V

    .line 14
    return-void
.end method
