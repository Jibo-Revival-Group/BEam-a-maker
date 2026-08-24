.class public final Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown$initTimer$1;
.super Landroid/os/CountDownTimer;
.source "AndroidCountDown.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->initTimer()V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/everis/jibo/beamaker/utils/countdown/AndroidCountDown$initTimer$1",
        "Landroid/os/CountDownTimer;",
        "(Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;JJ)V",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;JJ)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;
    .param p2, "$super_call_param$1"    # J
    .param p4, "$super_call_param$2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    .prologue
    .line 15
    iput-object p1, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown$initTimer$1;->this$0:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown$initTimer$1;->this$0:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->getCallback()Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;->onFinish()V

    .line 18
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 19
    return-void
.end method
