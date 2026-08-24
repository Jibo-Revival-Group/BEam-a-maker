.class final Lcom/karumi/dexter/MultiplePermissionsListenerToPermissionListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/karumi/dexter/listener/multi/MultiplePermissionsListener;


# instance fields
.field private final listener:Lcom/karumi/dexter/listener/single/PermissionListener;


# direct methods
.method constructor <init>(Lcom/karumi/dexter/listener/single/PermissionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/karumi/dexter/MultiplePermissionsListenerToPermissionListenerAdapter;->listener:Lcom/karumi/dexter/listener/single/PermissionListener;

    return-void
.end method


# virtual methods
.method public onPermissionRationaleShouldBeShown(Ljava/util/List;Lcom/karumi/dexter/PermissionToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/karumi/dexter/listener/PermissionRequest;",
            ">;",
            "Lcom/karumi/dexter/PermissionToken;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/karumi/dexter/listener/PermissionRequest;

    iget-object v1, p0, Lcom/karumi/dexter/MultiplePermissionsListenerToPermissionListenerAdapter;->listener:Lcom/karumi/dexter/listener/single/PermissionListener;

    invoke-interface {v1, v0, p2}, Lcom/karumi/dexter/listener/single/PermissionListener;->onPermissionRationaleShouldBeShown(Lcom/karumi/dexter/listener/PermissionRequest;Lcom/karumi/dexter/PermissionToken;)V

    return-void
.end method

.method public onPermissionsChecked(Lcom/karumi/dexter/MultiplePermissionsReport;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/karumi/dexter/MultiplePermissionsReport;->getDeniedPermissionResponses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/karumi/dexter/MultiplePermissionsReport;->getGrantedPermissionResponses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/karumi/dexter/listener/PermissionDeniedResponse;

    iget-object v1, p0, Lcom/karumi/dexter/MultiplePermissionsListenerToPermissionListenerAdapter;->listener:Lcom/karumi/dexter/listener/single/PermissionListener;

    invoke-interface {v1, v0}, Lcom/karumi/dexter/listener/single/PermissionListener;->onPermissionDenied(Lcom/karumi/dexter/listener/PermissionDeniedResponse;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/karumi/dexter/listener/PermissionGrantedResponse;

    iget-object v1, p0, Lcom/karumi/dexter/MultiplePermissionsListenerToPermissionListenerAdapter;->listener:Lcom/karumi/dexter/listener/single/PermissionListener;

    invoke-interface {v1, v0}, Lcom/karumi/dexter/listener/single/PermissionListener;->onPermissionGranted(Lcom/karumi/dexter/listener/PermissionGrantedResponse;)V

    goto :goto_0
.end method
