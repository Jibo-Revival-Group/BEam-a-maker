.class public final Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter$DefaultImpls;
.super Ljava/lang/Object;
.source "ScratchPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public static synthetic saveProject$default(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    .prologue
    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: saveProject"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 55
    const-string p2, ""

    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->saveProject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
