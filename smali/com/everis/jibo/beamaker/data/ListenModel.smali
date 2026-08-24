.class public final Lcom/everis/jibo/beamaker/data/ListenModel;
.super Ljava/lang/Object;
.source "ListenModel.kt"


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
        "Lcom/everis/jibo/beamaker/data/ListenModel;",
        "",
        "()V",
        "listen",
        "Lcom/everis/jibo/beamaker/data/Listen;",
        "getListen",
        "()Lcom/everis/jibo/beamaker/data/Listen;",
        "setListen",
        "(Lcom/everis/jibo/beamaker/data/Listen;)V",
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
.field private listen:Lcom/everis/jibo/beamaker/data/Listen;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listen"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getListen()Lcom/everis/jibo/beamaker/data/Listen;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ListenModel;->listen:Lcom/everis/jibo/beamaker/data/Listen;

    return-object v0
.end method

.method public final setListen(Lcom/everis/jibo/beamaker/data/Listen;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/data/Listen;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 15
    iput-object p1, p0, Lcom/everis/jibo/beamaker/data/ListenModel;->listen:Lcom/everis/jibo/beamaker/data/Listen;

    return-void
.end method
