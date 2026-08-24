.class Lcom/airbnb/lottie/TextLayer$2;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/TextLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/TextLayer;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/TextLayer;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/airbnb/lottie/TextLayer;
    .param p2, "x0"    # I

    .prologue
    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/TextLayer$2;->this$0:Lcom/airbnb/lottie/TextLayer;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 25
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/TextLayer$2;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    return-void
.end method
