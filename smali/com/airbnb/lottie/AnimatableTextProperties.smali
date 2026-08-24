.class Lcom/airbnb/lottie/AnimatableTextProperties;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableTextProperties$Factory;
    }
.end annotation


# instance fields
.field final color:Lcom/airbnb/lottie/AnimatableColorValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final stroke:Lcom/airbnb/lottie/AnimatableColorValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final strokeWidth:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final tracking:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 0
    .param p1, "color"    # Lcom/airbnb/lottie/AnimatableColorValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "stroke"    # Lcom/airbnb/lottie/AnimatableColorValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "strokeWidth"    # Lcom/airbnb/lottie/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "tracking"    # Lcom/airbnb/lottie/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/AnimatableTextProperties;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    .line 18
    iput-object p2, p0, Lcom/airbnb/lottie/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/AnimatableColorValue;

    .line 19
    iput-object p3, p0, Lcom/airbnb/lottie/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 20
    iput-object p4, p0, Lcom/airbnb/lottie/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 21
    return-void
.end method
