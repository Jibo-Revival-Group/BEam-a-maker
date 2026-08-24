.class Lcom/airbnb/lottie/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/Mask$Factory;,
        Lcom/airbnb/lottie/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final maskMode:Lcom/airbnb/lottie/Mask$MaskMode;

.field private final maskPath:Lcom/airbnb/lottie/AnimatableShapeValue;

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/Mask$MaskMode;Lcom/airbnb/lottie/AnimatableShapeValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V
    .locals 0
    .param p1, "maskMode"    # Lcom/airbnb/lottie/Mask$MaskMode;
    .param p2, "maskPath"    # Lcom/airbnb/lottie/AnimatableShapeValue;
    .param p3, "opacity"    # Lcom/airbnb/lottie/AnimatableIntegerValue;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/Mask;->maskMode:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 19
    iput-object p2, p0, Lcom/airbnb/lottie/Mask;->maskPath:Lcom/airbnb/lottie/AnimatableShapeValue;

    .line 20
    iput-object p3, p0, Lcom/airbnb/lottie/Mask;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/Mask$MaskMode;Lcom/airbnb/lottie/AnimatableShapeValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/Mask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/airbnb/lottie/Mask$MaskMode;
    .param p2, "x1"    # Lcom/airbnb/lottie/AnimatableShapeValue;
    .param p3, "x2"    # Lcom/airbnb/lottie/AnimatableIntegerValue;
    .param p4, "x3"    # Lcom/airbnb/lottie/Mask$1;

    .prologue
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/Mask;-><init>(Lcom/airbnb/lottie/Mask$MaskMode;Lcom/airbnb/lottie/AnimatableShapeValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V

    return-void
.end method


# virtual methods
.method getMaskMode()Lcom/airbnb/lottie/Mask$MaskMode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/Mask;->maskMode:Lcom/airbnb/lottie/Mask$MaskMode;

    return-object v0
.end method

.method getMaskPath()Lcom/airbnb/lottie/AnimatableShapeValue;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/Mask;->maskPath:Lcom/airbnb/lottie/AnimatableShapeValue;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/Mask;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method
