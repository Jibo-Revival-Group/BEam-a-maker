.class Lcom/airbnb/lottie/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/airbnb/lottie/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/Repeater$Factory;
    }
.end annotation


# instance fields
.field private final copies:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final transform:Lcom/airbnb/lottie/AnimatableTransform;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableTransform;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "copies"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p3, "offset"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p4, "transform"    # Lcom/airbnb/lottie/AnimatableTransform;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/Repeater;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/airbnb/lottie/Repeater;->copies:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 17
    iput-object p3, p0, Lcom/airbnb/lottie/Repeater;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 18
    iput-object p4, p0, Lcom/airbnb/lottie/Repeater;->transform:Lcom/airbnb/lottie/AnimatableTransform;

    .line 19
    return-void
.end method


# virtual methods
.method getCopies()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/Repeater;->copies:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/Repeater;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOffset()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/Repeater;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getTransform()Lcom/airbnb/lottie/AnimatableTransform;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/Repeater;->transform:Lcom/airbnb/lottie/AnimatableTransform;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;)Lcom/airbnb/lottie/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/airbnb/lottie/RepeaterContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/RepeaterContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/Repeater;)V

    return-object v0
.end method
