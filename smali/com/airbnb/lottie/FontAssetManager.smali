.class Lcom/airbnb/lottie/FontAssetManager;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lcom/airbnb/lottie/FontAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/lottie/MutablePair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lcom/airbnb/lottie/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/MutablePair",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 2
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p2, "delegate"    # Lcom/airbnb/lottie/FontAssetDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/airbnb/lottie/MutablePair;

    invoke-direct {v0}, Lcom/airbnb/lottie/MutablePair;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/FontAssetManager;->tempPair:Lcom/airbnb/lottie/MutablePair;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 22
    const-string v0, ".ttf"

    iput-object v0, p0, Lcom/airbnb/lottie/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/airbnb/lottie/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 26
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    .line 27
    const-string v0, "LOTTIE"

    const-string v1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 33
    .end local p1    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :goto_0
    return-void

    .line 32
    .restart local p1    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    check-cast p1, Landroid/view/View;

    .end local p1    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    goto :goto_0
.end method

.method private getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 64
    .local v0, "defaultTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 86
    .end local v0    # "defaultTypeface":Landroid/graphics/Typeface;
    :goto_0
    return-object v0

    .line 68
    .restart local v0    # "defaultTypeface":Landroid/graphics/Typeface;
    :cond_0
    const/4 v2, 0x0

    .line 69
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/FontAssetDelegate;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 74
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/FontAssetDelegate;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 76
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 80
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/lottie/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 85
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 86
    goto :goto_0
.end method

.method private typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "styleInt":I
    const-string v3, "Italic"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 92
    .local v1, "containsItalic":Z
    const-string v3, "Bold"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 93
    .local v0, "containsBold":Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 94
    const/4 v2, 0x3

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 105
    .end local p1    # "typeface":Landroid/graphics/Typeface;
    :goto_1
    return-object p1

    .line 95
    .restart local p1    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    if-eqz v1, :cond_2

    .line 96
    const/4 v2, 0x2

    goto :goto_0

    .line 97
    :cond_2
    if-eqz v0, :cond_0

    .line 98
    const/4 v2, 0x1

    goto :goto_0

    .line 105
    :cond_3
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->tempPair:Lcom/airbnb/lottie/MutablePair;

    invoke-virtual {v3, p1, p2}, Lcom/airbnb/lottie/MutablePair;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/airbnb/lottie/FontAssetManager;->tempPair:Lcom/airbnb/lottie/MutablePair;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 53
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 59
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    .local v1, "typeface":Landroid/graphics/Typeface;
    :goto_0
    return-object v1

    .line 56
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    .restart local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/FontAssetManager;->getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 57
    .local v2, "typefaceWithDefaultStyle":Landroid/graphics/Typeface;
    invoke-direct {p0, v2, p2}, Lcom/airbnb/lottie/FontAssetManager;->typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 58
    iget-object v3, p0, Lcom/airbnb/lottie/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/airbnb/lottie/FontAssetManager;->tempPair:Lcom/airbnb/lottie/MutablePair;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 59
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    .restart local v1    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultFontFileExtension"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/lottie/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 48
    return-void
.end method

.method setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 0
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/FontAssetDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 37
    return-void
.end method
