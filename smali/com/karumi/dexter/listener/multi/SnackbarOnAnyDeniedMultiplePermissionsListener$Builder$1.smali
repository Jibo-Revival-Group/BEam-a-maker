.class Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;->withOpenSettingsButton(Ljava/lang/String;)Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;


# direct methods
.method constructor <init>(Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder$1;->this$0:Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder$1;->this$0:Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;

    invoke-static {v0}, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;->access$000(Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
