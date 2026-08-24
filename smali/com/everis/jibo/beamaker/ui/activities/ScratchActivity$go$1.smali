.class final Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$1;
.super Ljava/lang/Object;
.source "ScratchActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->go(Lcom/everis/jibo/persistence/CoolIdea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 520
    sget-object v1, Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;->INSTANCE:Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$1;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->rlPreview:I

    invoke-virtual {v0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v2, "rlPreview"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;->close(Landroid/view/View;)V

    .line 521
    return-void
.end method
