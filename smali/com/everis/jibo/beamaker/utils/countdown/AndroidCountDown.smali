.class public final Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;
.super Ljava/lang/Object;
.source "AndroidCountDown.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/utils/countdown/CountDown;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;",
        "Lcom/everis/jibo/beamaker/utils/countdown/CountDown;",
        "countDownTime",
        "",
        "countDownUpdate",
        "callback",
        "Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;",
        "(JJLcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;)V",
        "TAG",
        "",
        "getCallback",
        "()Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;",
        "timer",
        "Landroid/os/CountDownTimer;",
        "initTimer",
        "",
        "restart",
        "stop",
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
.field private TAG:Ljava/lang/String;

.field private final callback:Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final countDownTime:J

.field private final countDownUpdate:J

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(JJLcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;)V
    .locals 1
    .param p1, "countDownTime"    # J
    .param p3, "countDownUpdate"    # J
    .param p5, "callback"    # Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->countDownTime:J

    iput-wide p3, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->countDownUpdate:J

    iput-object p5, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->callback:Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;

    .line 11
    const-string v0, "AndroidCountDown"

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .prologue
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    .line 9
    const-wide/16 v4, 0x3e8

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;-><init>(JJLcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;)V

    return-void

    :cond_0
    move-wide v4, p3

    goto :goto_0
.end method


# virtual methods
.method public final getCallback()Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->callback:Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;

    return-object v0
.end method

.method public initTimer()V
    .locals 6

    .prologue
    .line 15
    new-instance v0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown$initTimer$1;

    iget-wide v2, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->countDownTime:J

    iget-wide v4, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->countDownUpdate:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown$initTimer$1;-><init>(Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;JJ)V

    .line 20
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown$initTimer$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->timer:Landroid/os/CountDownTimer;

    .line 21
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 25
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->timer:Landroid/os/CountDownTimer;

    .line 26
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->initTimer()V

    .line 27
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 31
    :cond_0
    return-void
.end method
