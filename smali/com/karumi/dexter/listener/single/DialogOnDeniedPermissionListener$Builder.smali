.class public Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonText:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method public static withContext(Landroid/content/Context;)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 1

    new-instance v0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;

    invoke-direct {v0, p0}, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener;
    .locals 7

    iget-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    iget-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->message:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v3, ""

    :goto_1
    iget-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->buttonText:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v4, ""

    :goto_2
    new-instance v0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener;

    iget-object v1, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$1;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->message:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->buttonText:Ljava/lang/String;

    goto :goto_2
.end method

.method public withButtonText(I)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method public withButtonText(Ljava/lang/String;)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 0

    iput-object p1, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method public withIcon(I)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public withIcon(Landroid/graphics/drawable/Drawable;)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 0

    iput-object p1, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public withMessage(I)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public withMessage(Ljava/lang/String;)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 0

    iput-object p1, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public withTitle(I)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;
    .locals 0

    iput-object p1, p0, Lcom/karumi/dexter/listener/single/DialogOnDeniedPermissionListener$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
