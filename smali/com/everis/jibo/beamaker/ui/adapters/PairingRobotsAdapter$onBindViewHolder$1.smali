.class final Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "PairingRobotsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;I)V
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
.field final synthetic $position:I

.field final synthetic $robot:Lcom/jibo/apptoolkit/android/model/api/Robot;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;Lcom/jibo/apptoolkit/android/model/api/Robot;I)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->this$0:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->$robot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    iput p3, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->this$0:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    invoke-static {v0}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->access$getItemClick$p(Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;)Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->$robot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    const-string v2, "robot"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;->onClick(Lcom/jibo/apptoolkit/android/model/api/Robot;)V

    .line 58
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->this$0:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->this$0:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->setSelectedLastPosition(I)V

    .line 59
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->this$0:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    iget v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->$position:I

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->setSelectedPosition(I)V

    .line 62
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;->this$0:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method
