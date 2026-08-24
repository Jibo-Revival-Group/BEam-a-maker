.class public Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;
.super Lcom/karumi/dexter/listener/multi/BaseMultiplePermissionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$Builder;
    }
.end annotation


# instance fields
.field private final buttonText:Ljava/lang/String;

.field private final duration:I

.field private final onButtonClickListener:Landroid/view/View$OnClickListener;

.field private final snackbarCallback:Landroid/support/design/widget/Snackbar$Callback;

.field private final text:Ljava/lang/String;

.field private final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar$Callback;I)V
    .locals 0

    invoke-direct {p0}, Lcom/karumi/dexter/listener/multi/BaseMultiplePermissionsListener;-><init>()V

    iput-object p1, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->buttonText:Ljava/lang/String;

    iput-object p4, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->onButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->snackbarCallback:Landroid/support/design/widget/Snackbar$Callback;

    iput p6, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->duration:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar$Callback;ILcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar$Callback;I)V

    return-void
.end method

.method private showSnackbar()V
    .locals 3

    iget-object v0, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->text:Ljava/lang/String;

    iget v2, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->duration:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->buttonText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->onButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->buttonText:Ljava/lang/String;

    iget-object v2, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->onButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    :cond_0
    iget-object v1, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->snackbarCallback:Landroid/support/design/widget/Snackbar$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->snackbarCallback:Landroid/support/design/widget/Snackbar$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;

    :cond_1
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method


# virtual methods
.method public onPermissionsChecked(Lcom/karumi/dexter/MultiplePermissionsReport;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/karumi/dexter/listener/multi/BaseMultiplePermissionsListener;->onPermissionsChecked(Lcom/karumi/dexter/MultiplePermissionsReport;)V

    invoke-virtual {p1}, Lcom/karumi/dexter/MultiplePermissionsReport;->areAllPermissionsGranted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/karumi/dexter/listener/multi/SnackbarOnAnyDeniedMultiplePermissionsListener;->showSnackbar()V

    :cond_0
    return-void
.end method
