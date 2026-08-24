.class public final Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;
.super Ljava/lang/Object;
.source "CoolThingAssetsMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;",
        "",
        "()V",
        "getImageNamePreviewFromJson",
        "",
        "jsonName",
        "getImagePreview",
        "Landroid/graphics/drawable/Drawable;",
        "context",
        "Landroid/content/Context;",
        "fileName",
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
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImageNamePreviewFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jsonName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "jsonName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 93
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 32
    :sswitch_0
    const-string v0, "coolThing5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "coolThingsPreview_5.png"

    goto :goto_0

    .line 32
    :sswitch_1
    const-string v0, "coolThing6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "coolThingsPreview_6.png"

    goto :goto_0

    .line 32
    :sswitch_2
    const-string v0, "coolThing7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "coolThingsPreview_7.png"

    goto :goto_0

    .line 32
    :sswitch_3
    const-string v0, "coolThing8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "coolThingsPreview_8.png"

    goto :goto_0

    .line 32
    :sswitch_4
    const-string v0, "coolThing9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "coolThingsPreview_9.png"

    goto :goto_0

    .line 32
    :sswitch_5
    const-string v0, "coolThing1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "coolThingsPreview_1.png"

    goto :goto_0

    .line 32
    :sswitch_6
    const-string v0, "coolThing12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "coolThingsPreview_12.png"

    goto :goto_0

    .line 32
    :sswitch_7
    const-string v0, "coolThing2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "coolThingsPreview_2.png"

    goto :goto_0

    .line 32
    :sswitch_8
    const-string v0, "coolThing13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "coolThingsPreview_13.png"

    goto :goto_0

    .line 32
    :sswitch_9
    const-string v0, "coolThing3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "coolThingsPreview_3.png"

    goto :goto_0

    .line 32
    :sswitch_a
    const-string v0, "coolThing10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "coolThingsPreview_10.png"

    goto :goto_0

    .line 32
    :sswitch_b
    const-string v0, "coolThing4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "coolThingsPreview_4.png"

    goto/16 :goto_0

    .line 32
    :sswitch_c
    const-string v0, "coolThing11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "coolThingsPreview_11.png"

    goto/16 :goto_0

    .line 32
    :sswitch_d
    const-string v0, "coolThing14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "coolThingsPreview_14.png"

    goto/16 :goto_0

    .line 32
    :sswitch_e
    const-string v0, "coolThing15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "coolThingsPreview_15.png"

    goto/16 :goto_0

    .line 32
    :sswitch_data_0
    .sparse-switch
        -0x500d23fc -> :sswitch_a
        -0x500d23fb -> :sswitch_c
        -0x500d23fa -> :sswitch_6
        -0x500d23f9 -> :sswitch_8
        -0x500d23f8 -> :sswitch_d
        -0x500d23f7 -> :sswitch_e
        -0x4ce7a654 -> :sswitch_5
        -0x4ce7a653 -> :sswitch_7
        -0x4ce7a652 -> :sswitch_9
        -0x4ce7a651 -> :sswitch_b
        -0x4ce7a650 -> :sswitch_0
        -0x4ce7a64f -> :sswitch_1
        -0x4ce7a64e -> :sswitch_2
        -0x4ce7a64d -> :sswitch_3
        -0x4ce7a64c -> :sswitch_4
    .end sparse-switch
.end method

.method public final getImagePreview(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fileName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fileName"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    nop

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/images/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/everis/jibo/beamaker/utils/CoolThingAssetsMapper;->getImageNamePreviewFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 21
    .local v0, "ims":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 24
    .end local v0    # "ims":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 23
    :catch_0
    move-exception v2

    goto :goto_0
.end method
