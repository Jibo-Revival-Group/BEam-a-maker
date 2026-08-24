.class Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatableTextFrame.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableTextFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue$Factory",
        "<",
        "Lcom/airbnb/lottie/DocumentData;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;

    invoke-direct {v0}, Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;

    return-object v0
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/DocumentData;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 40
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Lcom/airbnb/lottie/DocumentData$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/DocumentData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableTextFrame$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/DocumentData;

    move-result-object v0

    return-object v0
.end method
