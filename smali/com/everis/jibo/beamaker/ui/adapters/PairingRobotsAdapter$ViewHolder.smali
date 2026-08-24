.class public final Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PairingRobotsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "llBackground",
        "Landroid/widget/RelativeLayout;",
        "kotlin.jvm.PlatformType",
        "getLlBackground",
        "()Landroid/widget/RelativeLayout;",
        "tvName",
        "Landroid/widget/TextView;",
        "getTvName",
        "()Landroid/widget/TextView;",
        "tvSurname",
        "getTvSurname",
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
.field private final llBackground:Landroid/widget/RelativeLayout;

.field private final tvName:Landroid/widget/TextView;

.field private final tvSurname:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/everis/jibo/beamaker/R$id;->tvJiboName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/everis/jibo/beamaker/R$id;->tvJiboSurname:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->tvSurname:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/everis/jibo/beamaker/R$id;->llBackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->llBackground:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public final getLlBackground()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->llBackground:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getTvName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvSurname()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->tvSurname:Landroid/widget/TextView;

    return-object v0
.end method
