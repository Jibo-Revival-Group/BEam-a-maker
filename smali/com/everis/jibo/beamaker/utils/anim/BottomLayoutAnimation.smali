.class public final Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;
.super Ljava/lang/Object;
.source "BottomLayoutAnimation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006J6\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;",
        "",
        "()V",
        "close",
        "",
        "button",
        "Landroid/view/View;",
        "box",
        "laOpen",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "laClose",
        "llOverlay",
        "rlPreview",
        "open",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;->INSTANCE:Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close(Landroid/view/View;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Landroid/view/View;)V
    .locals 13
    .param p1, "button"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "box"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "laOpen"    # Lcom/airbnb/lottie/LottieAnimationView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "laClose"    # Lcom/airbnb/lottie/LottieAnimationView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "llOverlay"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "rlPreview"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v9, "button"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "box"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "laOpen"

    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "laClose"

    move-object/from16 v0, p4

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "llOverlay"

    move-object/from16 v0, p5

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "rlPreview"

    move-object/from16 v0, p6

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/LottieAnimationView;->reverseAnimation()V

    .line 70
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    const/16 v9, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 73
    new-instance v5, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v5, v0, p1, v1}, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 88
    .local v5, "introListener":Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;
    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    .end local v5    # "introListener":Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$close$introListener$1;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    invoke-virtual/range {p4 .. p4}, Lcom/airbnb/lottie/LottieAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06009b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 92
    .local v6, "viewHeight":I
    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    int-to-float v12, v6

    aput v12, v10, v11

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 93
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v9, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    const-string v9, "animator"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06009b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 98
    .local v7, "yPosition":I
    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    int-to-float v12, v7

    neg-float v12, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {p1, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 99
    .local v3, "animatorButton":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v9, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    const-string v9, "animatorButton"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 103
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06009b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 105
    .local v8, "yPositionPreview":I
    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    int-to-float v12, v8

    neg-float v12, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    move-object/from16 v0, p6

    invoke-static {v0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 106
    .local v4, "animatorButtonPreview":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v9, Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    const-string v9, "animatorButtonPreview"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 108
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 110
    .end local v4    # "animatorButtonPreview":Landroid/animation/ObjectAnimator;
    .end local v8    # "yPositionPreview":I
    :cond_0
    return-void
.end method

.method public final open(Landroid/view/View;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Landroid/view/View;)V
    .locals 14
    .param p1, "button"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "box"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "laOpen"    # Lcom/airbnb/lottie/LottieAnimationView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "laClose"    # Lcom/airbnb/lottie/LottieAnimationView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "llOverlay"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "rlPreview"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v10, "button"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "box"

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "laOpen"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "laClose"

    move-object/from16 v0, p4

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "llOverlay"

    move-object/from16 v0, p5

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "rlPreview"

    move-object/from16 v0, p6

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 24
    const/16 v10, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 25
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v2, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 28
    .local v2, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v10, 0x12c

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 29
    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 30
    check-cast v2, Landroid/view/animation/Animation;

    .end local v2    # "animation1":Landroid/view/animation/AlphaAnimation;
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    new-instance v6, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$open$introListener$1;

    invoke-direct {v6, p1}, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$open$introListener$1;-><init>(Landroid/view/View;)V

    .line 41
    .local v6, "introListener":Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$open$introListener$1;
    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    .end local v6    # "introListener":Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation$open$introListener$1;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06009b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 45
    .local v7, "viewHeight":I
    const-string v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    int-to-float v13, v7

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 46
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v10, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    const-string v10, "animator"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 48
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06009b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 51
    .local v8, "yPosition":I
    const-string v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    int-to-float v13, v8

    neg-float v13, v13

    aput v13, v11, v12

    invoke-static {p1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 52
    .local v4, "animatorButton":Landroid/animation/ObjectAnimator;
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v10, Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    const-string v10, "animatorButton"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 57
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_0

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06009b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 59
    .local v9, "yPositionPreview":I
    const-string v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    int-to-float v13, v9

    neg-float v13, v13

    aput v13, v11, v12

    move-object/from16 v0, p6

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 60
    .local v5, "animatorButtonPreview":Landroid/animation/ObjectAnimator;
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v10, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    const-string v10, "animatorButtonPreview"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 64
    .end local v5    # "animatorButtonPreview":Landroid/animation/ObjectAnimator;
    .end local v9    # "yPositionPreview":I
    :cond_0
    return-void
.end method
