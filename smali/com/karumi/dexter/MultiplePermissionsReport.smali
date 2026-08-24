.class public final Lcom/karumi/dexter/MultiplePermissionsReport;
.super Ljava/lang/Object;


# instance fields
.field private final deniedPermissionResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/karumi/dexter/listener/PermissionDeniedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final grantedPermissionResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/karumi/dexter/listener/PermissionGrantedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->grantedPermissionResponses:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->deniedPermissionResponses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addDeniedPermissionResponse(Lcom/karumi/dexter/listener/PermissionDeniedResponse;)Z
    .locals 1

    iget-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->deniedPermissionResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method addGrantedPermissionResponse(Lcom/karumi/dexter/listener/PermissionGrantedResponse;)Z
    .locals 1

    iget-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->grantedPermissionResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areAllPermissionsGranted()Z
    .locals 1

    iget-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->deniedPermissionResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->grantedPermissionResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->deniedPermissionResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDeniedPermissionResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/karumi/dexter/listener/PermissionDeniedResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->deniedPermissionResponses:Ljava/util/List;

    return-object v0
.end method

.method public getGrantedPermissionResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/karumi/dexter/listener/PermissionGrantedResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->grantedPermissionResponses:Ljava/util/List;

    return-object v0
.end method

.method public isAnyPermissionPermanentlyDenied()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/karumi/dexter/MultiplePermissionsReport;->deniedPermissionResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/karumi/dexter/listener/PermissionDeniedResponse;

    invoke-virtual {v0}, Lcom/karumi/dexter/listener/PermissionDeniedResponse;->isPermanentlyDenied()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
