.class public final Lcom/everis/jibo/beamaker/data/MotionModel;
.super Ljava/lang/Object;
.source "MotionModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/data/MotionModel;",
        "",
        "()V",
        "motions",
        "Lcom/everis/jibo/beamaker/data/Motions;",
        "getMotions",
        "()Lcom/everis/jibo/beamaker/data/Motions;",
        "setMotions",
        "(Lcom/everis/jibo/beamaker/data/Motions;)V",
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
.field private motions:Lcom/everis/jibo/beamaker/data/Motions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "motions"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMotions()Lcom/everis/jibo/beamaker/data/Motions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/MotionModel;->motions:Lcom/everis/jibo/beamaker/data/Motions;

    return-object v0
.end method

.method public final setMotions(Lcom/everis/jibo/beamaker/data/Motions;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/data/Motions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    iput-object p1, p0, Lcom/everis/jibo/beamaker/data/MotionModel;->motions:Lcom/everis/jibo/beamaker/data/Motions;

    return-void
.end method
