.class public final Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;
.super Ljava/lang/Object;
.source "ScratchPresenterImpl.kt"

# interfaces
.implements Lcom/karumi/dexter/listener/single/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->checkPermission(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1",
        "Lcom/karumi/dexter/listener/single/PermissionListener;",
        "(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;Landroid/graphics/Bitmap;)V",
        "onPermissionDenied",
        "",
        "response",
        "Lcom/karumi/dexter/listener/PermissionDeniedResponse;",
        "onPermissionGranted",
        "Lcom/karumi/dexter/listener/PermissionGrantedResponse;",
        "onPermissionRationaleShouldBeShown",
        "permission",
        "Lcom/karumi/dexter/listener/PermissionRequest;",
        "token",
        "Lcom/karumi/dexter/PermissionToken;",
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    .param p2, "$captured_local_variable$1"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 860
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/karumi/dexter/listener/PermissionDeniedResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/karumi/dexter/listener/PermissionDeniedResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    invoke-virtual {p1}, Lcom/karumi/dexter/listener/PermissionDeniedResponse;->isPermanentlyDenied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMView()Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    move-result-object v0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showPemissionDialog()V

    .line 890
    :cond_0
    return-void
.end method

.method public onPermissionGranted(Lcom/karumi/dexter/listener/PermissionGrantedResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/karumi/dexter/listener/PermissionGrantedResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->setMPermission(Z)V

    .line 865
    new-instance v0, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;-><init>()V

    .line 866
    .local v0, "mainThread":Lcom/everis/jibo/beamaker/repository/MainThreadImpl;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1$onPermissionGranted$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1$onPermissionGranted$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/repository/MainThreadImpl;->post(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method public onPermissionRationaleShouldBeShown(Lcom/karumi/dexter/listener/PermissionRequest;Lcom/karumi/dexter/PermissionToken;)V
    .locals 1
    .param p1, "permission"    # Lcom/karumi/dexter/listener/PermissionRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "token"    # Lcom/karumi/dexter/PermissionToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    invoke-interface {p2}, Lcom/karumi/dexter/PermissionToken;->continuePermissionRequest()V

    .line 894
    return-void
.end method
