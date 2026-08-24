.class public final Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PairingRobotsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;,
        Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingRobotsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingRobotsAdapter.kt\ncom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter\n*L\n1#1,127:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\"#B%\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0018\u001a\u00020\u0010H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0010H\u0016J\u0018\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0010H\u0016J\u0006\u0010!\u001a\u00020\u001aR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;",
        "robots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Lkotlin/collections/ArrayList;",
        "itemClick",
        "Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;",
        "(Ljava/util/ArrayList;Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;)V",
        "mRobots",
        "getMRobots",
        "()Ljava/util/ArrayList;",
        "setMRobots",
        "(Ljava/util/ArrayList;)V",
        "selectedLastPosition",
        "",
        "getSelectedLastPosition",
        "()I",
        "setSelectedLastPosition",
        "(I)V",
        "selectedPosition",
        "getSelectedPosition",
        "setSelectedPosition",
        "getItemCount",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "refresh",
        "OnItemClick",
        "ViewHolder",
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
.field private final itemClick:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;

.field private mRobots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedLastPosition:I

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;)V
    .locals 2
    .param p1, "robots"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "itemClick"    # Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;",
            "Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const-string v0, "robots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->itemClick:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;

    .line 29
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->mRobots:Ljava/util/ArrayList;

    .line 39
    iput v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedPosition:I

    .line 40
    iput v1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedLastPosition:I

    return-void
.end method

.method public static final synthetic access$getItemClick$p(Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;)Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;
    .locals 1
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->itemClick:Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$OnItemClick;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->mRobots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getMRobots()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->mRobots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSelectedLastPosition()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedLastPosition:I

    return v0
.end method

.method public final getSelectedPosition()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedPosition:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->mRobots:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jibo/apptoolkit/android/model/api/Robot;

    .line 48
    .local v8, "robot":Lcom/jibo/apptoolkit/android/model/api/Robot;
    const-string v0, "robot"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/jibo/apptoolkit/android/model/api/Robot;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "robot.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 49
    .local v7, "name":Ljava/util/List;
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->getTvName()Landroid/widget/TextView;

    move-result-object v1

    const-string v0, "holder.tvName"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->getTvSurname()Landroid/widget/TextView;

    move-result-object v1

    const-string v0, "holder.tvSurname"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "JIBO"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p1, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, v8, p2}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$onBindViewHolder$1;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;Lcom/jibo/apptoolkit/android/model/api/Robot;I)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p1, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedPosition:I

    if-ne v0, p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 69
    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedPosition:I

    if-ne v0, p2, :cond_3

    const/4 v0, 0x1

    .line 70
    :goto_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 74
    iget-object v0, p1, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 75
    .local v9, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v0, p1, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 77
    .local v10, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 78
    .local v11, "set":Landroid/animation/AnimatorSet;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    check-cast v9, Landroid/animation/Animator;

    .end local v9    # "scaleX":Landroid/animation/ObjectAnimator;
    aput-object v9, v0, v1

    const/4 v1, 0x1

    check-cast v10, Landroid/animation/Animator;

    .end local v10    # "scaleY":Landroid/animation/ObjectAnimator;
    aput-object v10, v0, v1

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 79
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 81
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 82
    .local v6, "blinkanimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0x3e8

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 83
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 84
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 85
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 86
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->getLlBackground()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v6, Landroid/view/animation/Animation;

    .end local v6    # "blinkanimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    .end local v11    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    :goto_2
    return-void

    .line 66
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 88
    :cond_4
    if-nez v0, :cond_1

    .line 92
    iget-object v0, p1, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedLastPosition:I

    if-ne v0, p2, :cond_5

    const-wide/16 v0, 0x12c

    :goto_3
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 93
    .restart local v9    # "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v0, p1, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedLastPosition:I

    if-ne v0, p2, :cond_6

    const-wide/16 v0, 0x12c

    :goto_4
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 95
    .restart local v10    # "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 96
    .restart local v11    # "set":Landroid/animation/AnimatorSet;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    check-cast v9, Landroid/animation/Animator;

    .end local v9    # "scaleX":Landroid/animation/ObjectAnimator;
    aput-object v9, v0, v1

    const/4 v1, 0x1

    check-cast v10, Landroid/animation/Animator;

    .end local v10    # "scaleY":Landroid/animation/ObjectAnimator;
    aput-object v10, v0, v1

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 97
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 92
    .end local v11    # "set":Landroid/animation/AnimatorSet;
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_3

    .line 93
    .restart local v9    # "scaleX":Landroid/animation/ObjectAnimator;
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_4

    .line 74
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data

    .line 92
    :array_2
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    .line 93
    :array_3
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "parent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;

    const-string v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final refresh()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedPosition:I

    .line 119
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public final setMRobots(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->mRobots:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSelectedLastPosition(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedLastPosition:I

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/everis/jibo/beamaker/ui/adapters/PairingRobotsAdapter;->selectedPosition:I

    return-void
.end method
