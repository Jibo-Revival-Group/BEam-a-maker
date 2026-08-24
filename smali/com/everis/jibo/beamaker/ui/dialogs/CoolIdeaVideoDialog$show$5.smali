.class final Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;
.super Ljava/lang/Object;
.source "CoolIdeaVideoDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->show(Lcom/everis/jibo/persistence/CoolIdea;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoolIdeaVideoDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoolIdeaVideoDialog.kt\ncom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5\n*L\n1#1,182:1\n*E\n"
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
.field final synthetic $bDoIt:Landroid/widget/Button;

.field final synthetic $bPlayAgain:Landroid/widget/Button;

.field final synthetic $bReDoIt:Landroid/widget/Button;

.field final synthetic $coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

.field final synthetic $introListener:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;

.field final synthetic $laVideo:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;Lcom/everis/jibo/persistence/CoolIdea;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/airbnb/lottie/LottieAnimationView;Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    iput-object p3, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$bDoIt:Landroid/widget/Button;

    iput-object p4, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$bPlayAgain:Landroid/widget/Button;

    iput-object p5, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$bReDoIt:Landroid/widget/Button;

    iput-object p6, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$laVideo:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p7, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$introListener:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "it"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 122
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 123
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 124
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$coolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    invoke-virtual {v4}, Lcom/everis/jibo/persistence/CoolIdea;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->getMContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 127
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$bDoIt:Landroid/widget/Button;

    const-string v2, "bDoIt"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$bPlayAgain:Landroid/widget/Button;

    const-string v2, "bPlayAgain"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$bReDoIt:Landroid/widget/Button;

    const-string v2, "bReDoIt"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->this$0:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog;->getMLottieLoading()Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    move-result-object v1

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$laVideo:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "laVideo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;->show(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 132
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$laVideo:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$5;->$introListener:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$show$introListener$1;

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    return-void
.end method
