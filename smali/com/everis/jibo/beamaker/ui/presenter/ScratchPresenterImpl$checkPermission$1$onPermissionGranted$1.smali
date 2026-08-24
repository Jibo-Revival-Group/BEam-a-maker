.class public final Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1$onPermissionGranted$1;
.super Ljava/lang/Object;
.source "ScratchPresenterImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;->onPermissionGranted(Lcom/karumi/dexter/listener/PermissionGrantedResponse;)V
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1$onPermissionGranted$1",
        "Ljava/lang/Runnable;",
        "(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;)V",
        "run",
        "",
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
.field final synthetic this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;


# direct methods
.method constructor <init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;)V
    .locals 0
    .param p1, "$outer"    # Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 866
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1$onPermissionGranted$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 870
    sget-object v1, Lcom/everis/jibo/beamaker/utils/files/FileUtil;->INSTANCE:Lcom/everis/jibo/beamaker/utils/files/FileUtil;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1$onPermissionGranted$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;

    iget-object v2, v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;->$bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getExternalS\u2026nment.DIRECTORY_PICTURES)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/everis/jibo/beamaker/utils/files/FileUtil;->save(Landroid/graphics/Bitmap;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 872
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 875
    sget-object v2, Lcom/everis/jibo/beamaker/utils/files/ImageGallery;->INSTANCE:Lcom/everis/jibo/beamaker/utils/files/ImageGallery;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "MediaStore.Images.Media.EXTERNAL_CONTENT_URI"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v1, "file.absolutePath"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1$onPermissionGranted$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;

    iget-object v1, v1, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMView()Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    move-result-object v1

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v3, v4, v1}, Lcom/everis/jibo/beamaker/utils/files/ImageGallery;->addImageToGallery(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    .line 878
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1$onPermissionGranted$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;

    iget-object v1, v1, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;->this$0:Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getMView()Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showPhoto(Ljava/io/File;)V

    .line 880
    :cond_0
    return-void
.end method
