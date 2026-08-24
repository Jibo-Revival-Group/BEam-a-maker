.class abstract Lcom/airbnb/lottie/CompositionLoader;
.super Landroid/os/AsyncTask;
.source "CompositionLoader.java"

# interfaces
.implements Lcom/airbnb/lottie/Cancellable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;",
        "Ljava/lang/Void;",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;",
        "Lcom/airbnb/lottie/Cancellable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Lcom/airbnb/lottie/CompositionLoader;, "Lcom/airbnb/lottie/CompositionLoader<TParams;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/airbnb/lottie/CompositionLoader;, "Lcom/airbnb/lottie/CompositionLoader<TParams;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/CompositionLoader;->cancel(Z)Z

    .line 9
    return-void
.end method
