.class public final Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;
.super Lcom/everis/jibo/beamaker/base/BaseActivity;
.source "ScratchActivity.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/view/ScratchView;
.implements Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;
.implements Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;
.implements Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;
.implements Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScratchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScratchActivity.kt\ncom/everis/jibo/beamaker/ui/activities/ScratchActivity\n*L\n1#1,751:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u00f6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b2\u00020\u000c2\u00020\r2\u00020\u000e2\u00020\u000fB\u0005\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0008\u0010Z\u001a\u00020VH\u0016J\u0010\u0010[\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010\\\u001a\u00020V2\u0006\u0010]\u001a\u00020^H\u0016J\u0008\u0010_\u001a\u00020VH\u0016J\u0008\u0010`\u001a\u00020VH\u0016J\u0010\u0010a\u001a\u00020V2\u0006\u0010b\u001a\u00020cH\u0016J\u0008\u0010d\u001a\u00020VH\u0016J\u0010\u0010e\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\n\u0010f\u001a\u0004\u0018\u00010\u0001H\u0016J\u0008\u0010g\u001a\u00020cH\u0016J\u0008\u0010h\u001a\u00020iH\u0016J\u0010\u0010j\u001a\u00020V2\u0006\u0010k\u001a\u000202H\u0016J\u0008\u0010l\u001a\u00020VH\u0016J\u0008\u0010m\u001a\u00020VH\u0016J\u0008\u0010n\u001a\u00020VH\u0016J\u0008\u0010o\u001a\u00020VH\u0016J\"\u0010p\u001a\u00020V2\u0006\u0010q\u001a\u00020c2\u0006\u0010r\u001a\u00020c2\u0008\u0010s\u001a\u0004\u0018\u00010tH\u0014J\u0010\u0010u\u001a\u00020V2\u0006\u0010v\u001a\u00020XH\u0016J\u0008\u0010w\u001a\u00020VH\u0016J\u0010\u0010x\u001a\u00020V2\u0006\u0010k\u001a\u000202H\u0016J\u0008\u0010y\u001a\u00020VH\u0016J\u0008\u0010z\u001a\u00020VH\u0016J\u001a\u0010{\u001a\u00020V2\u0008\u0010|\u001a\u0004\u0018\u00010}2\u0006\u0010~\u001a\u00020cH\u0016J\u0012\u0010{\u001a\u00020V2\u0008\u0010|\u001a\u0004\u0018\u00010\u007fH\u0016J\u0010\u0010{\u001a\u00020V2\u0006\u0010k\u001a\u000202H\u0016J\t\u0010\u0080\u0001\u001a\u00020VH\u0016J\t\u0010\u0081\u0001\u001a\u00020VH\u0016J\t\u0010\u0082\u0001\u001a\u00020VH\u0016J\t\u0010\u0083\u0001\u001a\u00020VH\u0016J\t\u0010\u0084\u0001\u001a\u00020VH\u0016J\u0014\u0010\u0085\u0001\u001a\u00020V2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010XH\u0016J\u0014\u0010\u0087\u0001\u001a\u00020V2\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010XH\u0016J\u0012\u0010\u0089\u0001\u001a\u00020V2\u0007\u0010]\u001a\u00030\u008a\u0001H\u0016J\t\u0010\u008b\u0001\u001a\u00020VH\u0014J\u0015\u0010\u008c\u0001\u001a\u00020V2\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0017J\t\u0010\u008f\u0001\u001a\u00020VH\u0014J\u0012\u0010\u0090\u0001\u001a\u00020V2\u0007\u0010]\u001a\u00030\u008a\u0001H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020V2\u0007\u0010\u0092\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u0093\u0001\u001a\u00020VH\u0016J\u0011\u0010\u0094\u0001\u001a\u00020V2\u0006\u0010]\u001a\u00020^H\u0016J\t\u0010\u0095\u0001\u001a\u00020VH\u0016J\u0012\u0010\u0096\u0001\u001a\u00020V2\u0007\u0010\u0097\u0001\u001a\u00020cH\u0016J\u0011\u0010\u0098\u0001\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0011\u0010\u0099\u0001\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\t\u0010\u009a\u0001\u001a\u00020VH\u0016J\t\u0010\u009b\u0001\u001a\u00020VH\u0016J\t\u0010\u009c\u0001\u001a\u00020VH\u0002J\u0011\u0010\u009d\u0001\u001a\u00020V2\u0006\u0010]\u001a\u00020^H\u0016J\t\u0010\u009e\u0001\u001a\u00020VH\u0002J\u0011\u0010\u009f\u0001\u001a\u00020V2\u0006\u0010v\u001a\u00020XH\u0016J\t\u0010\u00a0\u0001\u001a\u00020VH\u0016J\u0013\u0010\u00a1\u0001\u001a\u00020V2\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u0001H\u0016J\u0011\u0010\u00a4\u0001\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020,X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u00101\u001a\u000202X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001a\u00107\u001a\u000208X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001a\u0010=\u001a\u00020>X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010C\u001a\u00020DX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u001a\u0010I\u001a\u00020JX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u001a\u0010O\u001a\u00020PX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010T\u00a8\u0006\u00a5\u0001"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;",
        "Lcom/everis/jibo/beamaker/base/BaseActivity;",
        "Lcom/everis/jibo/beamaker/ui/view/ScratchView;",
        "Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;",
        "Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaVideoDialog$DoItYourSelfCallback;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;",
        "Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;",
        "()V",
        "isScratchLoaded",
        "",
        "mBamJavascriptInteface",
        "Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;",
        "getMBamJavascriptInteface",
        "()Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;",
        "setMBamJavascriptInteface",
        "(Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;)V",
        "mConnectivityReceiver",
        "Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;",
        "getMConnectivityReceiver",
        "()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;",
        "setMConnectivityReceiver",
        "(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;)V",
        "mCoolIdeaRunnable",
        "Ljava/lang/Runnable;",
        "getMCoolIdeaRunnable",
        "()Ljava/lang/Runnable;",
        "setMCoolIdeaRunnable",
        "(Ljava/lang/Runnable;)V",
        "mCoolIdeaWallpaperHandler",
        "Landroid/os/Handler;",
        "getMCoolIdeaWallpaperHandler",
        "()Landroid/os/Handler;",
        "setMCoolIdeaWallpaperHandler",
        "(Landroid/os/Handler;)V",
        "mCreatingProjectUseCase",
        "Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;",
        "getMCreatingProjectUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;",
        "setMCreatingProjectUseCase",
        "(Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;)V",
        "mCurrentCoolIdea",
        "Lcom/everis/jibo/persistence/CoolIdea;",
        "getMCurrentCoolIdea",
        "()Lcom/everis/jibo/persistence/CoolIdea;",
        "setMCurrentCoolIdea",
        "(Lcom/everis/jibo/persistence/CoolIdea;)V",
        "mDeletingProjectUseCase",
        "Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;",
        "getMDeletingProjectUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;",
        "setMDeletingProjectUseCase",
        "(Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;)V",
        "mGettingProjectsUseCase",
        "Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;",
        "getMGettingProjectsUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;",
        "setMGettingProjectsUseCase",
        "(Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;)V",
        "mPermissionDialog",
        "Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;",
        "getMPermissionDialog",
        "()Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;",
        "setMPermissionDialog",
        "(Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;)V",
        "mPresenter",
        "Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;",
        "getMPresenter",
        "()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;",
        "setMPresenter",
        "(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;)V",
        "mUpdatingProjectUseCase",
        "Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;",
        "getMUpdatingProjectUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;",
        "setMUpdatingProjectUseCase",
        "(Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;)V",
        "blockMoved",
        "",
        "json",
        "",
        "callbackHandler",
        "closeCoolIdeas",
        "commandHandler",
        "continueWorking",
        "project",
        "Lcom/everis/jibo/persistence/Project;",
        "createNewProject",
        "disableToolbarButtons",
        "disconnect",
        "code",
        "",
        "enableToolbarButtons",
        "finishScript",
        "getBaseActivity",
        "getLayoutResource",
        "getScrach",
        "Landroid/webkit/WebView;",
        "go",
        "coolIdea",
        "hideLoadingDialog",
        "hidePermissionDialog",
        "initScreen",
        "onAccept",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAddProjectSubmit",
        "projectName",
        "onBackPressed",
        "onCallback",
        "onCancel",
        "onCancelCallback",
        "onClick",
        "p0",
        "Landroid/content/DialogInterface;",
        "p1",
        "Landroid/view/View;",
        "onClickAbout",
        "onClickHelp",
        "onClickMyProjects",
        "onCloseCreateProjectDialog",
        "onClosingEditDialog",
        "onCreateList",
        "list",
        "onCreateVar",
        "variable",
        "onDeleteProjectSubmit",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "onDestroy",
        "onInit",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "onSaveProjectSubmit",
        "onWifiConnected",
        "connected",
        "openCoolIdeas",
        "openEditProjectDialog",
        "openNewProjectDialog",
        "openNewVariableListDialog",
        "type",
        "promptEvent",
        "scratchLoaded",
        "showAddProjectAnim",
        "showDelProjectAnim",
        "showDisconnectDialog",
        "showLoadSavedProjectDialog",
        "showLogoutDialog",
        "showNameProject",
        "showPemissionDialog",
        "showPhoto",
        "file",
        "Ljava/io/File;",
        "startScript",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private isScratchLoaded:Z

.field public mBamJavascriptInteface:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCoolIdeaRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mCoolIdeaWallpaperHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mCurrentCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mPermissionDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/base/BaseActivity;-><init>()V

    .line 741
    new-instance v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$mCoolIdeaRunnable$1;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final showDisconnectDialog()V
    .locals 5

    .prologue
    .line 251
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e002a

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 253
    const v2, 0x7f0e002b

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 254
    const v2, 0x7f0e0024

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showDisconnectDialog$1;->INSTANCE:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showDisconnectDialog$1;

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 257
    const v2, 0x7f0e0029

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showDisconnectDialog$2;

    invoke-direct {v3, p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showDisconnectDialog$2;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 261
    .local v1, "warningDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 262
    return-void
.end method

.method private final showLogoutDialog()V
    .locals 5

    .prologue
    .line 265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 266
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0062

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 267
    const v2, 0x7f0e0063

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 268
    const v2, 0x7f0e0024

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showLogoutDialog$1;->INSTANCE:Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showLogoutDialog$1;

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 271
    const v2, 0x7f0e0061

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showLogoutDialog$2;

    invoke-direct {v3, p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showLogoutDialog$2;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 281
    .local v1, "warningDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 282
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public blockMoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->requestXMLProject()V

    .line 406
    return-void
.end method

.method public callbackHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/everis/jibo/beamaker/data/Command;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everis/jibo/beamaker/data/Command;

    .line 363
    .local v0, "command":Lcom/everis/jibo/beamaker/data/Command;
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/Command;->getBlockType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    :goto_0
    sget-object v2, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/CommandTypes;->getCANCEL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_1

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v2, "command"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->stopAllSound(Lcom/everis/jibo/beamaker/data/Command;)V

    .line 401
    :cond_2
    :goto_1
    return-void

    .line 363
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 369
    :cond_4
    sget-object v2, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/CommandTypes;->getSAY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 370
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_5

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const-string v2, "command"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->sayCommand(Lcom/everis/jibo/beamaker/data/Command;)V

    .line 371
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_6

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->sayCommandAnalytics(Lcom/everis/jibo/beamaker/data/Command;)V

    goto :goto_1

    .line 374
    :cond_7
    sget-object v2, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/CommandTypes;->getLOOK_AT_3D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 375
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_8

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const-string v2, "command"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->lookAt3D(Lcom/everis/jibo/beamaker/data/Command;)V

    .line 376
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_9

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->lookAt3DCommandAnalytics()V

    goto :goto_1

    .line 379
    :cond_a
    sget-object v2, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/CommandTypes;->getLOOK_AT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 380
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_b

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    const-string v2, "command"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->lookAt(Lcom/everis/jibo/beamaker/data/Command;)V

    .line 381
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_c

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->lookAtCommandAnalytics()V

    goto :goto_1

    .line 384
    :cond_d
    sget-object v2, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/CommandTypes;->getTAKE_PHOTO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 385
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_e

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    const-string v2, "command"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->takePhoto(Lcom/everis/jibo/beamaker/data/Command;)V

    .line 386
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_f

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->takePhotoCommandAnalytics(Lcom/everis/jibo/beamaker/data/Command;)V

    goto/16 :goto_1

    .line 389
    :cond_10
    sget-object v2, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/CommandTypes;->getLISTEN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 390
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_11

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    const-string v2, "command"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->listen(Lcom/everis/jibo/beamaker/data/Command;)V

    .line 391
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_12

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->listenCommandAnalytics()V

    goto/16 :goto_1

    .line 394
    :cond_13
    sget-object v2, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/CommandTypes;->getGET_CONFIG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 395
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_14

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->getConfig()V

    goto/16 :goto_1

    .line 398
    :cond_15
    sget-object v2, Lcom/everis/jibo/beamaker/utils/CommandTypes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CommandTypes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/CommandTypes;->getSET_CONFIG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_16

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    const-string v2, "command"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->setConfig(Lcom/everis/jibo/beamaker/data/Command;)V

    goto/16 :goto_1
.end method

.method public closeCoolIdeas()V
    .locals 8

    .prologue
    .line 462
    sget-object v0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;->INSTANCE:Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;

    sget v1, Lcom/everis/jibo/beamaker/R$id;->rlOpenPerformances:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v2, "rlOpenPerformances"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->llPerformances:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "llPerformances"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/everis/jibo/beamaker/R$id;->laOpen:I

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "laOpen"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/everis/jibo/beamaker/R$id;->laClose:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "laClose"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/everis/jibo/beamaker/R$id;->llContent:I

    invoke-virtual {p0, v5}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const-string v6, "llContent"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    sget v6, Lcom/everis/jibo/beamaker/R$id;->rlPreview:I

    invoke-virtual {p0, v6}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const-string v7, "rlPreview"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-virtual/range {v0 .. v6}, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;->close(Landroid/view/View;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Landroid/view/View;)V

    .line 463
    return-void
.end method

.method public commandHandler(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->hideLoading()V

    .line 435
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->isCoolideaEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 436
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_1

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->haveProjects()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_2

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->currentProjectDeleted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_4

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->createInitialProject(Ljava/lang/String;)V

    .line 440
    :cond_5
    :goto_0
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 444
    return-void

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_7

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->update(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public continueWorking(Lcom/everis/jibo/persistence/Project;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->loadProject(Lcom/everis/jibo/persistence/Project;Z)V

    .line 353
    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->showNameProject(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public createNewProject()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f0e0028

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.default_name_project)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2, v3}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter$DefaultImpls;->saveProject$default(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 349
    return-void
.end method

.method public disableToolbarButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bEdit:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bEdit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bSave:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bSave"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 344
    return-void
.end method

.method public disconnect(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 579
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->setResult(ILandroid/content/Intent;)V

    .line 583
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->finish()V

    .line 584
    return-void
.end method

.method public enableToolbarButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 337
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bEdit:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bEdit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bSave:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bSave"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    return-void
.end method

.method public finishScript(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CoolIdeaWallpaperFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 424
    .local v0, "coolWallpaper":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    instance-of v1, v0, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->dismissAllowingStateLoss()V

    .line 426
    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 546
    check-cast p0, Lcom/everis/jibo/beamaker/base/BaseActivity;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;
    return-object p0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f0a001f

    return v0
.end method

.method public final getMBamJavascriptInteface()Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mBamJavascriptInteface:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;

    if-nez v0, :cond_0

    const-string v1, "mBamJavascriptInteface"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMConnectivityReceiver()Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    if-nez v0, :cond_0

    const-string v1, "mConnectivityReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMCoolIdeaRunnable()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getMCoolIdeaWallpaperHandler()Landroid/os/Handler;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaWallpaperHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v1, "mCoolIdeaWallpaperHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMCreatingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    if-nez v0, :cond_0

    const-string v1, "mCreatingProjectUseCase"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMCurrentCoolIdea()Lcom/everis/jibo/persistence/CoolIdea;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCurrentCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    if-nez v0, :cond_0

    const-string v1, "mCurrentCoolIdea"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMDeletingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    if-nez v0, :cond_0

    const-string v1, "mDeletingProjectUseCase"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMGettingProjectsUseCase()Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    if-nez v0, :cond_0

    const-string v1, "mGettingProjectsUseCase"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMPermissionDialog()Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPermissionDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;

    if-nez v0, :cond_0

    const-string v1, "mPermissionDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMPresenter()Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMUpdatingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    if-nez v0, :cond_0

    const-string v1, "mUpdatingProjectUseCase"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getScrach()Landroid/webkit/WebView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 447
    sget v0, Lcom/everis/jibo/beamaker/R$id;->scratchWebView:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "scratchWebView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public go(Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 4
    .param p1, "coolIdea"    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "coolIdea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    sget-object v1, Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;->INSTANCE:Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;

    sget v0, Lcom/everis/jibo/beamaker/R$id;->rlPreview:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v2, "rlPreview"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;->open(Landroid/view/View;)V

    .line 516
    sget v0, Lcom/everis/jibo/beamaker/R$id;->ivPreview:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/CoolIdea;->getJsonName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;->getImagePreview(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    sget v0, Lcom/everis/jibo/beamaker/R$id;->tvCoolPreview:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvCoolPreview"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/CoolIdea;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    sget v0, Lcom/everis/jibo/beamaker/R$id;->ivClosePreview:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$1;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    sget v0, Lcom/everis/jibo/beamaker/R$id;->tvCoolPreview:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$go$2;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;Lcom/everis/jibo/persistence/CoolIdea;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->hideLoading()V

    .line 209
    :cond_0
    return-void
.end method

.method public hidePermissionDialog()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPermissionDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;

    if-nez v0, :cond_0

    const-string v1, "mPermissionDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;->hide()V

    .line 718
    return-void
.end method

.method public initScreen()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->registerTouchHead()V

    .line 452
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_1

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->registerScreenTouch()V

    .line 453
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_2

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->registerMotion()V

    .line 454
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_3

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->registerGetEntity()V

    .line 455
    return-void
.end method

.method public onAccept()V
    .locals 4

    .prologue
    .line 641
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_0

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->init()V

    .line 642
    sget-object v2, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->INSTANCE:Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->accepted(Landroid/content/Context;)V

    .line 645
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "TutorialFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 646
    .local v0, "dialog":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->dismissAllowingStateLoss()V

    .line 647
    :cond_1
    iget-boolean v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->isScratchLoaded:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->showLoading()V

    .line 648
    :cond_2
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_3

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const v2, 0x7f0e0060

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.lets_play)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->say(Ljava/lang/String;)V

    .line 649
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, -0x1

    .line 663
    invoke-super {p0, p1, p2, p3}, Lcom/everis/jibo/beamaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 665
    if-eqz p3, :cond_2

    .line 667
    const-string v3, "PROJECT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    .line 669
    .local v2, "projectEntity":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    if-eqz v2, :cond_1

    .line 670
    sget-object v3, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;

    invoke-virtual {v3, v2}, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->fromParcelableProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)Lcom/everis/jibo/persistence/Project;

    move-result-object v1

    .line 671
    .local v1, "project":Lcom/everis/jibo/persistence/Project;
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v3, :cond_0

    const-string v4, "mPresenter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->loadProject(Lcom/everis/jibo/persistence/Project;Z)V

    .line 674
    .end local v1    # "project":Lcom/everis/jibo/persistence/Project;
    :cond_1
    const-string v3, "CODE"

    sget-object v4, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v4}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getNO_ERROR()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 676
    .local v0, "code":I
    sget-object v3, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 680
    sget-object v3, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getHEAD_DIALOG()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 681
    invoke-virtual {p0, v5, p3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->setResult(ILandroid/content/Intent;)V

    .line 682
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->finish()V

    .line 706
    .end local v0    # "code":I
    .end local v2    # "projectEntity":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :cond_2
    :goto_0
    return-void

    .line 685
    .restart local v0    # "code":I
    .restart local v2    # "projectEntity":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :cond_3
    sget-object v3, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getWIFI_ERROR()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 686
    invoke-virtual {p0, v5, p3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->setResult(ILandroid/content/Intent;)V

    .line 687
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->finish()V

    goto :goto_0

    .line 691
    :cond_4
    sget-object v3, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getSOCKET_ERROR()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 692
    invoke-virtual {p0, v5, p3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->setResult(ILandroid/content/Intent;)V

    .line 693
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->finish()V

    goto :goto_0

    .line 697
    :cond_5
    sget-object v3, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getUNKNOWN_ERROR()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 698
    invoke-virtual {p0, v5, p3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->setResult(ILandroid/content/Intent;)V

    .line 699
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->finish()V

    goto :goto_0

    .line 702
    :cond_6
    sget-object v3, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getINACTIVITY_ERROR()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 703
    invoke-virtual {p0, v5, p3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->setResult(ILandroid/content/Intent;)V

    .line 704
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->finish()V

    goto :goto_0
.end method

.method public onAddProjectSubmit(Ljava/lang/String;)V
    .locals 3
    .param p1, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-string v0, "projectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bNew:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bNew"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 611
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    invoke-static {v0, p1, v2, v1, v2}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter$DefaultImpls;->saveProject$default(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 612
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public onCallback(Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 2
    .param p1, "coolIdea"    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "coolIdea"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 486
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCallback$1;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;Lcom/everis/jibo/persistence/CoolIdea;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "TutorialFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 655
    .local v0, "dialog":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->dismissAllowingStateLoss()V

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_1

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->disconnect()V

    .line 659
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_2

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->disconnectAnalytics()V

    .line 660
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public onCancelCallback()V
    .locals 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_0

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->stopAllBlocks()V

    .line 501
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_1

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->clearProject(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaWallpaperHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    const-string v2, "mCoolIdeaWallpaperHandler"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 505
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCancelCallback$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onCancelCallback$1;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 509
    const-wide/16 v2, 0x1f4

    .line 505
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "p0"    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->goPermissionSetting()V

    .line 722
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "p0"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 215
    :goto_0
    const v1, 0x7f080084

    if-nez v0, :cond_8

    .line 219
    :cond_0
    const v1, 0x7f080027

    if-nez v0, :cond_9

    .line 223
    :cond_1
    const v1, 0x7f080126

    if-nez v0, :cond_a

    .line 227
    :cond_2
    const v1, 0x7f0800c9

    if-nez v0, :cond_b

    .line 231
    :cond_3
    const v1, 0x7f08002f

    if-nez v0, :cond_d

    .line 237
    :cond_4
    const v1, 0x7f080029

    if-nez v0, :cond_f

    .line 242
    :cond_5
    const v1, 0x7f08002b

    if-nez v0, :cond_11

    .line 247
    :cond_6
    :goto_1
    return-void

    .line 213
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 216
    sget v0, Lcom/everis/jibo/beamaker/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_1

    .line 219
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->showDisconnectDialog()V

    goto :goto_1

    .line 223
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->showLogoutDialog()V

    goto :goto_1

    .line 227
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 228
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_c

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->coolIdeasLayout()V

    goto :goto_1

    .line 231
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 232
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->disableToolbarButtons()V

    .line 233
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_e

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->requestXMLProject()V

    .line 234
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->showAddProjectAnim()V

    goto :goto_1

    .line 237
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 238
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->disableToolbarButtons()V

    .line 239
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_10

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->editProject()V

    goto :goto_1

    .line 242
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 243
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->disableToolbarButtons()V

    .line 244
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bNew:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bNew"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->openNewProjectDialog()V

    goto/16 :goto_1
.end method

.method public onClick(Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 6
    .param p1, "coolIdea"    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const-string v1, "coolIdea"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_0

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->coolIdeasLayout()V

    .line 469
    sget-object v1, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$Companion;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$Companion;->newInstance()Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;

    move-result-object v0

    .line 470
    .local v0, "coolWallaper":Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;
    const v1, 0x7f0f00ad

    invoke-virtual {v0, v3, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->setStyle(II)V

    .line 471
    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->setMCoolIdea(Lcom/everis/jibo/persistence/CoolIdea;)V

    move-object v1, p0

    .line 472
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->setMCallback(Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment$OnCoolIdeaCallback;)V

    .line 473
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CoolIdeaWallpaperFragment"

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CoolIdeaWallpaperFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_1

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->stopAllBlocks()V

    .line 476
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_2

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v1, v3}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->changeProyect(Z)V

    .line 477
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v1, :cond_3

    const-string v2, "mPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->clearProject(Ljava/lang/String;)V

    .line 479
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCurrentCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    .line 480
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaWallpaperHandler:Landroid/os/Handler;

    if-nez v1, :cond_4

    const-string v2, "mCoolIdeaWallpaperHandler"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    return-void
.end method

.method public onClickAbout()V
    .locals 5

    .prologue
    .line 317
    sget v1, Lcom/everis/jibo/beamaker/R$id;->drawer_layout:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 320
    sget-object v1, Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog$Companion;

    const v2, 0x7f0e00b0

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.url_about)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0e0066

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.menu_item_about)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;

    move-result-object v0

    .line 321
    .local v0, "aboutDialog":Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;
    const/4 v1, 0x1

    const v2, 0x7f0f00ad

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;->setStyle(II)V

    .line 322
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "AboutHelpDialog"

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public onClickHelp()V
    .locals 5

    .prologue
    .line 328
    sget v1, Lcom/everis/jibo/beamaker/R$id;->drawer_layout:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 331
    sget-object v1, Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog$Companion;

    const v2, 0x7f0e00b1

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.url_help)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0e0067

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.menu_item_help)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;

    move-result-object v0

    .line 332
    .local v0, "helpDialog":Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;
    const/4 v1, 0x1

    const v2, 0x7f0f00ad

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;->setStyle(II)V

    .line 333
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "AboutHelpDialog"

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/AboutHelpDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onClickMyProjects()V
    .locals 3

    .prologue
    .line 309
    sget v1, Lcom/everis/jibo/beamaker/R$id;->drawer_layout:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 310
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;

    invoke-direct {v2}, Lcom/everis/jibo/beamaker/ui/activities/MyProjectsActivity;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 312
    return-void
.end method

.method public onCloseCreateProjectDialog()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->haveProjects()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->enableToolbarButtons()V

    .line 616
    :cond_1
    sget v0, Lcom/everis/jibo/beamaker/R$id;->bNew:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bNew"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 617
    return-void
.end method

.method public onClosingEditDialog()V
    .locals 0

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->enableToolbarButtons()V

    .line 634
    return-void
.end method

.method public onCreateList(Ljava/lang/String;)V
    .locals 2
    .param p1, "list"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 733
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->createList(Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method public onCreateVar(Ljava/lang/String;)V
    .locals 2
    .param p1, "variable"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 737
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->createVar(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method public onDeleteProjectSubmit(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->enableToolbarButtons()V

    .line 624
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->deleteProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    .line 625
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 588
    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->onDestroy()V

    .line 589
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    if-nez v0, :cond_0

    const-string v1, "mConnectivityReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 590
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/everis/jibo/beamaker/services/ClosingService;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v7, "closingServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    sget-object v2, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->INSTANCE:Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;

    move-object/from16 v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->isTutorialAccepted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 105
    sget-object v1, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$Companion;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$Companion;->newInstance()Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;

    move-result-object v15

    .line 106
    .local v15, "tutorialFragment":Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;
    const/4 v1, 0x1

    const v2, 0x7f0f00ad

    invoke-virtual {v15, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->setStyle(II)V

    move-object/from16 v1, p0

    .line 107
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;

    invoke-virtual {v15, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->setMCallback(Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment$OnTutorialListener;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "TutorialFragment"

    invoke-virtual {v15, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 111
    .end local v15    # "tutorialFragment":Lcom/everis/jibo/beamaker/ui/dialogs/TutorialFragment;
    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaWallpaperHandler:Landroid/os/Handler;

    .line 117
    new-instance v2, Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;

    move-object/from16 v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPermissionDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;

    .line 120
    new-instance v2, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;

    move-object/from16 v1, p0

    check-cast v1, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;

    invoke-direct {v2, v1}, Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;-><init>(Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface$OnJavaScriptHandler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mBamJavascriptInteface:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;

    .line 123
    new-instance v2, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    .line 124
    new-instance v1, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;

    sget-object v3, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;->getAppDatabase()Lcom/everis/jibo/persistence/BeAMakerDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->projectDao()Lcom/everis/jibo/persistence/ProjectDao;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;-><init>(Lcom/everis/jibo/persistence/ProjectDao;)V

    check-cast v1, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    .line 123
    invoke-direct {v2, v1}, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;-><init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    .line 127
    new-instance v2, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    .line 128
    new-instance v1, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;

    sget-object v3, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;->getAppDatabase()Lcom/everis/jibo/persistence/BeAMakerDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->projectDao()Lcom/everis/jibo/persistence/ProjectDao;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;-><init>(Lcom/everis/jibo/persistence/ProjectDao;)V

    check-cast v1, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    .line 127
    invoke-direct {v2, v1}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;-><init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    .line 131
    new-instance v2, Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    .line 132
    new-instance v1, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;

    sget-object v3, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;->getAppDatabase()Lcom/everis/jibo/persistence/BeAMakerDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->projectDao()Lcom/everis/jibo/persistence/ProjectDao;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;-><init>(Lcom/everis/jibo/persistence/ProjectDao;)V

    check-cast v1, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    .line 131
    invoke-direct {v2, v1}, Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;-><init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    .line 135
    new-instance v2, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    .line 136
    new-instance v1, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;

    sget-object v3, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;->getAppDatabase()Lcom/everis/jibo/persistence/BeAMakerDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->projectDao()Lcom/everis/jibo/persistence/ProjectDao;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/everis/jibo/beamaker/repository/ProjectsRepositoryImpl;-><init>(Lcom/everis/jibo/persistence/ProjectDao;)V

    check-cast v1, Lcom/everis/jibo/beamaker/repository/ProjectsRepository;

    .line 135
    invoke-direct {v2, v1}, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;-><init>(Lcom/everis/jibo/beamaker/repository/ProjectsRepository;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    .line 140
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    move-object/from16 v2, p0

    check-cast v2, Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    if-nez v3, :cond_1

    const-string v4, "mGettingProjectsUseCase"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    if-nez v4, :cond_2

    const-string v5, "mCreatingProjectUseCase"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 141
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    if-nez v5, :cond_3

    const-string v6, "mUpdatingProjectUseCase"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    if-nez v6, :cond_4

    const-string v16, "mDeletingProjectUseCase"

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    :cond_4
    invoke-direct/range {v1 .. v6}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;-><init>(Lcom/everis/jibo/beamaker/ui/view/ScratchView;Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;)V

    check-cast v1, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    .line 144
    sget v1, Lcom/everis/jibo/beamaker/R$id;->tBarScratch:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->showLoading()V

    goto/16 :goto_0

    .line 144
    :cond_6
    check-cast v1, Landroid/support/v7/widget/Toolbar;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 146
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 149
    :cond_8
    sget v1, Lcom/everis/jibo/beamaker/R$id;->rvMenu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 150
    new-instance v14, Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v14, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 151
    .local v14, "mLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    sget v1, Lcom/everis/jibo/beamaker/R$id;->rvMenu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "rvMenu"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .end local v14    # "mLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v14}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 152
    new-instance v12, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;

    move-object/from16 v1, p0

    check-cast v1, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;

    invoke-direct {v12, v1}, Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;-><init>(Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter$OnMenuClickListener;)V

    .line 153
    .local v12, "mAdapter":Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;
    sget v1, Lcom/everis/jibo/beamaker/R$id;->rvMenu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "rvMenu"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroid/support/v7/widget/RecyclerView$Adapter;

    .end local v12    # "mAdapter":Lcom/everis/jibo/beamaker/ui/adapters/MenuListAdapter;
    invoke-virtual {v1, v12}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 156
    new-instance v9, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;

    sget-object v1, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;->getCoolIdeas()Ljava/util/List;

    move-result-object v2

    move-object/from16 v1, p0

    check-cast v1, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;

    invoke-direct {v9, v2, v1}, Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;-><init>(Ljava/util/List;Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter$OnCoolIdeaClickListener;)V

    .line 157
    .local v9, "coolAdapter":Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;
    sget v1, Lcom/everis/jibo/beamaker/R$id;->rvCoolIdeas:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "rvCoolIdeas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/support/v7/widget/RecyclerView$Adapter;

    .end local v9    # "coolAdapter":Lcom/everis/jibo/beamaker/ui/adapters/CoolIdeasAdapter;
    invoke-virtual {v1, v9}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 158
    new-instance v13, Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v13, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 159
    .local v13, "mCoolLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 160
    sget v1, Lcom/everis/jibo/beamaker/R$id;->rvCoolIdeas:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "rvCoolIdeas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .end local v13    # "mCoolLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v13}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 163
    sget v1, Lcom/everis/jibo/beamaker/R$id;->iv_menu_close_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    sget v1, Lcom/everis/jibo/beamaker/R$id;->bDisconectJibo:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v1, Lcom/everis/jibo/beamaker/R$id;->tvSignOut:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget v1, Lcom/everis/jibo/beamaker/R$id;->bNew:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget v1, Lcom/everis/jibo/beamaker/R$id;->bEdit:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget v1, Lcom/everis/jibo/beamaker/R$id;->bSave:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    sget v1, Lcom/everis/jibo/beamaker/R$id;->rlOpenPerformances:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    sget v1, Lcom/everis/jibo/beamaker/R$id;->tBarScratch:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/support/v7/widget/Toolbar;

    if-nez v2, :cond_9

    const/4 v1, 0x0

    :cond_9
    check-cast v1, Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_a

    new-instance v2, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onInit$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$onInit$1;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_a
    sget v1, Lcom/everis/jibo/beamaker/R$id;->scratchWebView:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    .local v10, "it":Landroid/webkit/WebView;
    move-object/from16 v1, p0

    .line 173
    check-cast v1, Landroid/content/Context;

    const v2, 0x7f050067

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 174
    const-string v1, "it"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    .line 175
    .local v11, "it":Landroid/webkit/WebSettings;
    const-string v1, "it"

    .end local v10    # "it":Landroid/webkit/WebView;
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 180
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 181
    nop

    .line 174
    nop

    .line 183
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v10, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 184
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v10, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mBamJavascriptInteface:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;

    if-nez v1, :cond_b

    const-string v2, "mBamJavascriptInteface"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    const v2, 0x7f0e005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const v1, 0x7f0e00af

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 187
    nop

    .line 172
    nop

    .line 190
    new-instance v2, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    move-object/from16 v1, p0

    check-cast v1, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;

    invoke-direct {v2, v1}, Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;-><init>(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    .line 193
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v8, "connectivityFilters":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    if-nez v1, :cond_c

    const-string v2, "mConnectivityReceiver"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    check-cast v1, Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->onResume()V

    .line 203
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->onResume()V

    .line 204
    return-void
.end method

.method public onSaveProjectSubmit(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->enableToolbarButtons()V

    .line 629
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->updateProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V

    .line 630
    return-void
.end method

.method public onWifiConnected(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 597
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "CODE"

    sget-object v2, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getWIFI_ERROR()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->setResult(ILandroid/content/Intent;)V

    .line 602
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->finish()V

    .line 604
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public openCoolIdeas()V
    .locals 8

    .prologue
    .line 458
    sget-object v0, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;->INSTANCE:Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;

    sget v1, Lcom/everis/jibo/beamaker/R$id;->rlOpenPerformances:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v2, "rlOpenPerformances"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/everis/jibo/beamaker/R$id;->llPerformances:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "llPerformances"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/everis/jibo/beamaker/R$id;->laOpen:I

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "laOpen"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/everis/jibo/beamaker/R$id;->laClose:I

    invoke-virtual {p0, v4}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "laClose"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/everis/jibo/beamaker/R$id;->llContent:I

    invoke-virtual {p0, v5}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const-string v6, "llContent"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    sget v6, Lcom/everis/jibo/beamaker/R$id;->rlPreview:I

    invoke-virtual {p0, v6}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const-string v7, "rlPreview"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-virtual/range {v0 .. v6}, Lcom/everis/jibo/beamaker/utils/anim/BottomLayoutAnimation;->open(Landroid/view/View;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Landroid/view/View;)V

    .line 459
    return-void
.end method

.method public openEditProjectDialog(Lcom/everis/jibo/persistence/Project;)V
    .locals 4
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "project"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    sget-object v2, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;

    invoke-virtual {v2, p1}, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->toParcelableProject(Lcom/everis/jibo/persistence/Project;)Lcom/everis/jibo/beamaker/data/ProjectEntity;

    move-result-object v1

    .line 561
    .local v1, "projectEntity":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    sget-object v2, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$Companion;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$Companion;->newInstance(Lcom/everis/jibo/beamaker/data/ProjectEntity;)Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;

    move-result-object v0

    .line 562
    .local v0, "editDialog":Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;
    const/4 v2, 0x1

    const v3, 0x7f0f00ad

    invoke-virtual {v0, v2, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->setStyle(II)V

    move-object v2, p0

    .line 563
    check-cast v2, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;

    invoke-virtual {v0, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->setCallback(Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog$OnEditProjectListener;)V

    .line 564
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "EditProjectDialog"

    invoke-virtual {v0, v2, v3}, Lcom/everis/jibo/beamaker/ui/dialogs/EditProjectDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public openNewProjectDialog()V
    .locals 3

    .prologue
    .line 553
    sget-object v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$Companion;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$Companion;->newInstance()Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;

    move-result-object v0

    .line 554
    .local v0, "createDialog":Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;
    const/4 v1, 0x1

    const v2, 0x7f0f00ad

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->setStyle(II)V

    move-object v1, p0

    .line 555
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->setCallback(Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog$OnAddProjectListener;)V

    .line 556
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CreateProjectDialog"

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateProjectDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public openNewVariableListDialog(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 726
    sget-object v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->Companion:Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;

    invoke-virtual {v1, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$Companion;->newInstance(I)Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;

    move-result-object v0

    .line 727
    .local v0, "createDialog":Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;
    const/4 v1, 0x1

    const v2, 0x7f0f00ad

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->setStyle(II)V

    move-object v1, p0

    .line 728
    check-cast v1, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->setCallback(Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog$OnCreateNewListListener;)V

    .line 729
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CreateNewVariableListDialog"

    invoke-virtual {v0, v1, v2}, Lcom/everis/jibo/beamaker/ui/dialogs/CreateNewVariableListDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public promptEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->selectOperation(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public scratchLoaded(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->isScratchLoaded:Z

    .line 414
    sget-object v1, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->INSTANCE:Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/preferences/TutorialPreferences;->isTutorialAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    if-nez v0, :cond_0

    const-string v1, "mPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;->init()V

    .line 416
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->hideLoading()V

    .line 418
    :cond_1
    return-void
.end method

.method public final setMBamJavascriptInteface(Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mBamJavascriptInteface:Lcom/everis/jibo/beamaker/communication/BAMJavascriptInteface;

    return-void
.end method

.method public final setMConnectivityReceiver(Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mConnectivityReceiver:Lcom/everis/jibo/beamaker/utils/connectivity/ConnectivityChangesReceiver;

    return-void
.end method

.method public final setMCoolIdeaRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setMCoolIdeaWallpaperHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCoolIdeaWallpaperHandler:Landroid/os/Handler;

    return-void
.end method

.method public final setMCreatingProjectUseCase(Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    return-void
.end method

.method public final setMCurrentCoolIdea(Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mCurrentCoolIdea:Lcom/everis/jibo/persistence/CoolIdea;

    return-void
.end method

.method public final setMDeletingProjectUseCase(Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    return-void
.end method

.method public final setMGettingProjectsUseCase(Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    return-void
.end method

.method public final setMPermissionDialog(Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPermissionDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;

    return-void
.end method

.method public final setMPresenter(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPresenter:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;

    return-void
.end method

.method public final setMUpdatingProjectUseCase(Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    return-void
.end method

.method public showAddProjectAnim()V
    .locals 4

    .prologue
    .line 286
    sget v2, Lcom/everis/jibo/beamaker/R$id;->rlAnimSave:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const-string v3, "rlAnimSave"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    new-instance v1, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;

    invoke-direct {v1}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;-><init>()V

    .line 288
    .local v1, "lottieLoading":Lcom/everisbank/jibobank/utils/LottieAnimationLoading;
    sget v2, Lcom/everis/jibo/beamaker/R$id;->laAddProj:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "laAddProj"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/everisbank/jibobank/utils/LottieAnimationLoading;->show(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 290
    new-instance v0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showAddProjectAnim$introListener$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showAddProjectAnim$introListener$1;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V

    .line 300
    .local v0, "introListener":Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showAddProjectAnim$introListener$1;
    sget v2, Lcom/everis/jibo/beamaker/R$id;->laAddProj:I

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .end local v0    # "introListener":Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showAddProjectAnim$introListener$1;
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    return-void
.end method

.method public showDelProjectAnim()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public showLoadSavedProjectDialog(Lcom/everis/jibo/persistence/Project;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "project"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    check-cast p0, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;
    invoke-direct {v0, v1, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;-><init>(Landroid/content/Context;Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog$LoadProjectSavedDialogCallback;)V

    .line 569
    .local v0, "loadProjectSavedDialog":Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;
    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/ui/dialogs/LoadProjectSavedDialog;->show(Lcom/everis/jibo/persistence/Project;)V

    .line 570
    return-void
.end method

.method public showNameProject(Ljava/lang/String;)V
    .locals 2
    .param p1, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "projectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    sget v0, Lcom/everis/jibo/beamaker/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "projectName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    return-void
.end method

.method public showPemissionDialog()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->mPermissionDialog:Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;

    if-nez v0, :cond_0

    const-string v1, "mPermissionDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p0, Landroid/content/DialogInterface$OnClickListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;
    invoke-virtual {v0, p0}, Lcom/everis/jibo/beamaker/ui/dialogs/PermissionDialog;->show(Landroid/content/DialogInterface$OnClickListener;)V

    .line 714
    return-void
.end method

.method public showPhoto(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "file"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    new-instance v0, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;-><init>()V

    .line 534
    .local v0, "imageLoader":Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;
    sget v1, Lcom/everis/jibo/beamaker/R$id;->ivPhoto:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "ivPhoto"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/everis/jibo/beamaker/utils/image/ImageLoaderImpl;->load(Landroid/widget/ImageView;Ljava/io/File;Z)V

    .line 537
    sget-object v2, Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;->INSTANCE:Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;

    sget v1, Lcom/everis/jibo/beamaker/R$id;->rlPhoto:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v3, "rlPhoto"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/everis/jibo/beamaker/utils/anim/PreviewScaleAnimation;->open(Landroid/view/View;)V

    .line 540
    sget v1, Lcom/everis/jibo/beamaker/R$id;->ivClosePhoto:I

    invoke-virtual {p0, v1}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showPhoto$1;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity$showPhoto$1;-><init>(Lcom/everis/jibo/beamaker/ui/activities/ScratchActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    return-void
.end method

.method public startScript(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 410
    return-void
.end method
