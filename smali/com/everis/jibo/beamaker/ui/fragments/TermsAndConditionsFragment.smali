.class public final Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;
.super Lcom/everis/jibo/beamaker/base/BaseFragment;
.source "TermsAndConditionsFragment.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;
.implements Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 D2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001DB\u0005\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u001fH\u0002J\n\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\u001fH\u0016J\u001a\u0010(\u001a\u00020\u001f2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020&H\u0016J\u001a\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0008\u00101\u001a\u00020\u001fH\u0016J\u0008\u00102\u001a\u00020\u001fH\u0016J\u0010\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u00020!H\u0016J\u0010\u00105\u001a\u00020\u001f2\u0006\u00106\u001a\u000207H\u0002J\u0008\u00108\u001a\u00020\u001fH\u0016J\u0008\u00109\u001a\u00020\u001fH\u0016J\u0008\u0010:\u001a\u00020\u001fH\u0016J\u0008\u0010;\u001a\u00020\u001fH\u0016J\u0008\u0010<\u001a\u00020\u001fH\u0016J\u0008\u0010=\u001a\u00020\u001fH\u0016J \u0010>\u001a\u00020\u001f2\u0016\u0010?\u001a\u0012\u0012\u0004\u0012\u00020A0@j\u0008\u0012\u0004\u0012\u00020A`BH\u0016J\u0008\u0010C\u001a\u00020\u001fH\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006E"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;",
        "Lcom/everis/jibo/beamaker/base/BaseFragment;",
        "Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "()V",
        "connectivityFilters",
        "Landroid/content/IntentFilter;",
        "getConnectivityFilters",
        "()Landroid/content/IntentFilter;",
        "setConnectivityFilters",
        "(Landroid/content/IntentFilter;)V",
        "connectivityReceiver",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;",
        "getConnectivityReceiver",
        "()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;",
        "setConnectivityReceiver",
        "(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;)V",
        "mPresenter",
        "Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;",
        "getMPresenter",
        "()Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;",
        "setMPresenter",
        "(Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;)V",
        "wifiDialog",
        "Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;",
        "getWifiDialog",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;",
        "setWifiDialog",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;)V",
        "enabledButton",
        "",
        "boolean",
        "",
        "formatTextTermsConditions",
        "getContextData",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "getLayoutResource",
        "",
        "hideLoading",
        "onClick",
        "dialog",
        "Landroid/content/DialogInterface;",
        "which",
        "onInit",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onStop",
        "onWifiConnected",
        "connected",
        "openWebView",
        "url",
        "",
        "registerWifiBroadcast",
        "revertChecked",
        "showDisabledRobotError",
        "showError",
        "showErrorWIFI",
        "showLoading",
        "startJiboConnect",
        "robots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Lkotlin/collections/ArrayList;",
        "unregisterWifiBroadcast",
        "Companion",
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
.field public static final Companion:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "TermsAndConditionsFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private connectivityFilters:Landroid/content/IntentFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->Companion:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$openWebView(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method private final formatTextTermsConditions()V
    .locals 13

    .prologue
    const/16 v12, 0x21

    const/4 v5, 0x0

    const v11, 0x7f0e00a2

    const/4 v4, 0x6

    const/4 v2, 0x0

    .line 121
    const v1, 0x7f0e0071

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "termsAndConditionStr":Ljava/lang/String;
    new-instance v6, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$privacySpan$1;

    invoke-direct {v6, p0, v8}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$privacySpan$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;Ljava/lang/String;)V

    .line 137
    .local v6, "privacySpan":Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$privacySpan$1;
    new-instance v9, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;

    invoke-direct {v9, p0, v8}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;Ljava/lang/String;)V

    .line 151
    .local v9, "termsCondSpan":Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$formatTextTermsConditions$termsCondSpan$1;
    const v1, 0x7f0e00a3

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    .local v0, "text":Ljava/lang/CharSequence;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    .local v7, "ssBuilder":Landroid/text/SpannableStringBuilder;
    const-string v1, "text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.tv_terms_conditions_privacy)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v10

    .line 157
    invoke-virtual {p0, v11}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.tv_terms_conditions_privacy)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v11}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 154
    invoke-virtual {v7, v6, v10, v1, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    const-string v1, "terms"

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 164
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 161
    invoke-virtual {v7, v9, v1, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 168
    sget v1, Lcom/everis/jibo/beamaker/R$id;->tvTermsAccept:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "tvTermsAccept"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    .end local v7    # "ssBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget v1, Lcom/everis/jibo/beamaker/R$id;->tvTermsAccept:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "tvTermsAccept"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 170
    sget v1, Lcom/everis/jibo/beamaker/R$id;->tvTermsAccept:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "tvTermsAccept"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 171
    return-void
.end method

.method private final openWebView(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$openWebView$parentalDialog$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;Ljava/lang/String;)V

    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;

    invoke-direct {v0, v2, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;-><init>(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog$OnParentalCallback;)V

    .line 185
    .local v0, "parentalDialog":Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;->show()V

    .line 186
    .end local v0    # "parentalDialog":Lcom/everis/jibo/beamaker/ui/dialogs/ParentalDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public enabledButton(Z)V
    .locals 1
    .param p1, "boolean"    # Z

    .prologue
    .line 281
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bTermsConnect:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    :cond_0
    return-void
.end method

.method public final getConnectivityFilters()Landroid/content/IntentFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityFilters:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final getConnectivityReceiver()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    return-object v0
.end method

.method public getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/everis/jibo/beamaker/base/BaseActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/everis/jibo/beamaker/base/BaseActivity;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f0a003b

    return v0
.end method

.method public final getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    return-object v0
.end method

.method public final getWifiDialog()Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    return-object v0
.end method

.method public hideLoading()V
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->hideLoading()V

    .line 268
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "which"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;->openSetting()V

    .line 260
    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onInit(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;

    invoke-direct {v1, v0}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;-><init>(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;)V

    iput-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityFilters:Landroid/content/IntentFilter;

    .line 73
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityFilters:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;

    invoke-direct {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPresenterImpl;-><init>(Lcom/everis/jibo/beamaker/ui/view/TermsConditionView;)V

    move-object v0, v1

    check-cast v0, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    .line 76
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;->onCreate(Landroid/os/Bundle;)V

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->formatTextTermsConditions()V

    .line 80
    sget v0, Lcom/everis/jibo/beamaker/R$id;->switchTerms:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$1;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bTermsConnect:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$2;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$2;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v0, Lcom/everis/jibo/beamaker/R$id;->tvTermsInfo:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$onInit$3;-><init>(Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;->onStart()V

    .line 272
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bView:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jlsh/bubleview/view/BubbleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->start()V

    .line 273
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseFragment;->onStop()V

    .line 277
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bView:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jlsh/bubleview/view/BubbleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jlsh/bubleview/view/BubbleView;->stop()V

    .line 278
    :cond_0
    return-void
.end method

.method public onWifiConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->showErrorWIFI()V

    .line 256
    :cond_0
    return-void
.end method

.method public registerWifiBroadcast()V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityFilters:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    :cond_0
    return-void
.end method

.method public revertChecked()V
    .locals 2

    .prologue
    .line 285
    sget v0, Lcom/everis/jibo/beamaker/R$id;->switchTerms:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public final setConnectivityFilters(Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/content/IntentFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityFilters:Landroid/content/IntentFilter;

    return-void
.end method

.method public final setConnectivityReceiver(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    return-void
.end method

.method public final setMPresenter(Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    return-void
.end method

.method public final setWifiDialog(Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    return-void
.end method

.method public showDisabledRobotError()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;->errorLoginAnalytics()V

    .line 195
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 196
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const v1, 0x7f0e0091

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    const v1, 0x7f0e008f

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v2, -0x1

    const v1, 0x7f0e0090

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v1, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$showDisabledRobotError$1;->INSTANCE:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$showDisabledRobotError$1;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 200
    .end local v0    # "alert":Landroid/support/v7/app/AlertDialog;
    :cond_1
    return-void
.end method

.method public showError()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;->errorLoginAnalytics()V

    .line 207
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 208
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const v1, 0x7f0e00ae

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    const v1, 0x7f0e00ac

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 210
    const/4 v2, -0x1

    const v1, 0x7f0e00ad

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v1, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$showError$1;->INSTANCE:Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment$showError$1;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 211
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 212
    .end local v0    # "alert":Landroid/support/v7/app/AlertDialog;
    :cond_1
    return-void
.end method

.method public showErrorWIFI()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->hideLoading()V

    .line 240
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;->hide()V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->wifiDialog:Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/content/DialogInterface$OnClickListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/WifiDialog;->show(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 250
    :cond_2
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContextData()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->showLoading()V

    .line 264
    :cond_0
    return-void
.end method

.method public startJiboConnect(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "robots"    # Ljava/util/ArrayList;
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
    const-string v1, "robots"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/TermsAndConditionsPesenter;->loginAnalytics()V

    .line 219
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/everis/jibo/beamaker/ui/activities/PairingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public unregisterWifiBroadcast()V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/fragments/TermsAndConditionsFragment;->connectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    :cond_0
    return-void
.end method
