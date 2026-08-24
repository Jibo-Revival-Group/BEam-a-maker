.class final Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;
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
.field final synthetic $coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;->$coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 524
    sget-object v2, Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;->INSTANCE:Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    sget v3, Lcom/everis/jibo/beamaker/R$id;->rlPreview:I

    invoke-virtual {v1, v3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v3, "rlPreview"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;->close(Landroid/view/View;)V

    .line 525
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;->this$0:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;

    check-cast v2, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;

    invoke-direct {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;-><init>(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;)V

    .line 526
    .local v0, "coolIdeaDialog":Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;->$coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->show(Lcom/everis/jibo/persistence/CoolIdea;Z)V

    .line 527
    return-void
.end method
