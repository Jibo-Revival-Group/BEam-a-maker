.class final Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "MyProjectsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$ViewHolder;I)V
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
.field final synthetic $project:Lcom/everis/jibo/beamaker/data/ProjectEntity;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$1;->this$0:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$1;->$project:Lcom/everis/jibo/beamaker/data/ProjectEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$1;->this$0:Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter;->getListener()Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$onBindViewHolder$1;->$project:Lcom/everis/jibo/beamaker/data/ProjectEntity;

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/adapters/MyProjectsAdapter$OnProjectClickListener;->onClickTrash(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    .line 54
    return-void
.end method
