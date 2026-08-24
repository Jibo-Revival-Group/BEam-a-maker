.class public final Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CoolIdeaWallpaperFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;,
        Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;",
        "Landroid/support/v4/app/DialogFragment;",
        "()V",
        "mCallback",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;",
        "getMCallback",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;",
        "setMCallback",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;)V",
        "mCoolIdea",
        "Lcom/everis/jibo/persistence/CoolIdea;",
        "getMCoolIdea",
        "()Lcom/everis/jibo/persistence/CoolIdea;",
        "setMCoolIdea",
        "(Lcom/everis/jibo/persistence/CoolIdea;)V",
        "mILoader",
        "Lcom/everis/jibo/beamaker/utils/image/ImageLoader;",
        "getMILoader",
        "()Lcom/everis/jibo/beamaker/utils/image/ImageLoader;",
        "setMILoader",
        "(Lcom/everis/jibo/beamaker/utils/image/ImageLoader;)V",
        "dismiss",
        "",
        "dismissAllowingStateLoss",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Companion",
        "OnCoolIdeaCallback",
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
.field public static final Companion:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "CoolIdeaWallpaperFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mILoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;

    if-nez v0, :cond_0

    const-string v1, "mCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;->onCancelCallback()V

    .line 82
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 83
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;

    if-nez v0, :cond_0

    const-string v1, "mCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    if-nez v1, :cond_1

    const-string v2, "mCoolIdea"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;->onCallback(Lcom/everis/jibo/persistence/CoolIdea;)V

    .line 87
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 88
    return-void
.end method

.method public final getMCallback()Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;

    if-nez v0, :cond_0

    const-string v1, "mCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMCoolIdea()Lcom/everis/jibo/persistence/CoolIdea;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    if-nez v0, :cond_0

    const-string v1, "mCoolIdea"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMILoader()Lcom/everis/jibo/beamaker/utils/image/ImageLoader;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mILoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoader;

    if-nez v0, :cond_0

    const-string v1, "mILoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const v0, 0x7f0a0035

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v4, "view"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    sget v4, Lcom/everis/jibo/beamaker/R$id;->ivClose:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$onViewCreated$1;

    invoke-direct {v5, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$onViewCreated$1;-><init>(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v4, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    invoke-direct {v4}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;-><init>()V

    check-cast v4, Lcom/everis/jibo/beamaker/utils/image/ImageLoader;

    iput-object v4, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mILoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoader;

    .line 55
    iget-object v6, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mILoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoader;

    if-nez v6, :cond_0

    const-string v4, "mILoader"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v4, Lcom/everis/jibo/beamaker/R$id;->ivBackground:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string v5, "ivBackground"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->INSTANCE:Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;

    sget v5, Lcom/everis/jibo/beamaker/R$id;->ivClose:I

    invoke-virtual {p0, v5}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v8, "ivClose"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "ivClose.context"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    if-nez v8, :cond_1

    const-string v9, "mCoolIdea"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v8}, Lcom/everis/jibo/persistence/CoolIdea;->getCommandTutorialImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->getMipmapResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v4, v5, v10}, Lcom/everis/jibo/beamaker/utils/image/ImageLoader;->load(Landroid/widget/ImageView;IZ)V

    .line 56
    iget-object v6, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mILoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoader;

    if-nez v6, :cond_2

    const-string v4, "mILoader"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget v4, Lcom/everis/jibo/beamaker/R$id;->ivJibo:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string v5, "ivJibo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->INSTANCE:Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;

    sget v5, Lcom/everis/jibo/beamaker/R$id;->ivClose:I

    invoke-virtual {p0, v5}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v8, "ivClose"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "ivClose.context"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    if-nez v8, :cond_3

    const-string v9, "mCoolIdea"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8}, Lcom/everis/jibo/persistence/CoolIdea;->getImageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->getMipmapResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v4, v5, v10}, Lcom/everis/jibo/beamaker/utils/image/ImageLoader;->load(Landroid/widget/ImageView;IZ)V

    .line 59
    sget v4, Lcom/everis/jibo/beamaker/R$id;->tvTitle:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "tvTitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->INSTANCE:Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;

    sget v5, Lcom/everis/jibo/beamaker/R$id;->ivClose:I

    invoke-virtual {p0, v5}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v7, "ivClose"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "ivClose.context"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    if-nez v7, :cond_4

    const-string v8, "mCoolIdea"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v7}, Lcom/everis/jibo/persistence/CoolIdea;->getCommandTutorialText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/everis/jibo/beamaker/utils/image/ResourcesByName;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 63
    .local v2, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v12, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 64
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 65
    invoke-virtual {v0, v11}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 66
    invoke-virtual {v0, v10}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 67
    invoke-virtual {v0, v10}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 68
    check-cast v0, Landroid/view/animation/Animation;

    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 69
    sget v4, Lcom/everis/jibo/beamaker/R$id;->ivJibo:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string v5, "ivJibo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 70
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->start()V

    .line 72
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 73
    .local v3, "viewHeight":I
    sget v4, Lcom/everis/jibo/beamaker/R$id;->ivJibo:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string v5, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    int-to-float v7, v3

    aput v7, v6, v10

    aput v12, v6, v11

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 74
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    const-string v4, "animator"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 78
    return-void
.end method

.method public final setMCallback(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCallback:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;

    return-void
.end method

.method public final setMCoolIdea(Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    return-void
.end method

.method public final setMILoader(Lcom/everis/jibo/beamaker/utils/image/ImageLoader;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/utils/image/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->mILoader:Lcom/everis/jibo/beamaker/utils/image/ImageLoader;

    return-void
.end method
