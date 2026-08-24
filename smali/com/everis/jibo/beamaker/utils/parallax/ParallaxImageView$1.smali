.class Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView$1;
.super Ljava/lang/Object;
.source "ParallaxImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView$1;->this$0:Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView$1;->this$0:Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;

    invoke-static {v0}, Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;->access$000(Lcom/everis/jibo/beamaker/utils/parallax/ParallaxImageView;)V

    .line 109
    return-void
.end method
