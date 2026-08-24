.class public final Lcom/everis/jibo/beamaker/data/HeadSensors;
.super Ljava/lang/Object;
.source "HeadSensors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/data/HeadSensors;",
        "",
        "()V",
        "leftBack",
        "",
        "getLeftBack",
        "()Z",
        "setLeftBack",
        "(Z)V",
        "leftFront",
        "getLeftFront",
        "setLeftFront",
        "leftMiddle",
        "getLeftMiddle",
        "setLeftMiddle",
        "rightBack",
        "getRightBack",
        "setRightBack",
        "rightFront",
        "getRightFront",
        "setRightFront",
        "rightMiddle",
        "getRightMiddle",
        "setRightMiddle",
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
.field private leftBack:Z

.field private leftFront:Z

.field private leftMiddle:Z

.field private rightBack:Z

.field private rightFront:Z

.field private rightMiddle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->leftFront:Z

    return-void
.end method


# virtual methods
.method public final getLeftBack()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->leftBack:Z

    return v0
.end method

.method public final getLeftFront()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->leftFront:Z

    return v0
.end method

.method public final getLeftMiddle()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->leftMiddle:Z

    return v0
.end method

.method public final getRightBack()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->rightBack:Z

    return v0
.end method

.method public final getRightFront()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->rightFront:Z

    return v0
.end method

.method public final getRightMiddle()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->rightMiddle:Z

    return v0
.end method

.method public final setLeftBack(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->leftBack:Z

    return-void
.end method

.method public final setLeftFront(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->leftFront:Z

    return-void
.end method

.method public final setLeftMiddle(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->leftMiddle:Z

    return-void
.end method

.method public final setRightBack(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->rightBack:Z

    return-void
.end method

.method public final setRightFront(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->rightFront:Z

    return-void
.end method

.method public final setRightMiddle(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/data/HeadSensors;->rightMiddle:Z

    return-void
.end method
