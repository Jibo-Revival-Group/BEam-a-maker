.class public Lcom/airbnb/lottie/MergePaths;
.super Ljava/lang/Object;
.source "MergePaths.java"

# interfaces
.implements Lcom/airbnb/lottie/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/MergePaths$Factory;,
        Lcom/airbnb/lottie/MergePaths$MergePathsMode;
    }
.end annotation


# instance fields
.field private final mode:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/MergePaths$MergePathsMode;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/airbnb/lottie/MergePaths;->name:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/airbnb/lottie/MergePaths;->mode:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/MergePaths$MergePathsMode;Lcom/airbnb/lottie/MergePaths$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/MergePaths$MergePathsMode;
    .param p3, "x2"    # Lcom/airbnb/lottie/MergePaths$1;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/MergePaths$MergePathsMode;)V

    return-void
.end method


# virtual methods
.method getMode()Lcom/airbnb/lottie/MergePaths$MergePathsMode;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/MergePaths;->mode:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/MergePaths;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "LOTTIE"

    const-string v1, "Animation contains merge paths but they are disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/MergePathsContent;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/MergePathsContent;-><init>(Lcom/airbnb/lottie/MergePaths;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/MergePaths;->mode:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
