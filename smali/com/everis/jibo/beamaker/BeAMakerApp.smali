.class public final Lcom/everis/jibo/beamaker/BeAMakerApp;
.super Landroid/app/Application;
.source "BeAMakerApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBeAMakerApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeAMakerApp.kt\ncom/everis/jibo/beamaker/BeAMakerApp\n*L\n1#1,49:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/BeAMakerApp;",
        "Landroid/app/Application;",
        "()V",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "initCoolIdeas",
        "",
        "Lcom/everis/jibo/persistence/CoolIdea;",
        "onCreate",
        "",
        "Companion",
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
.field public static final Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

.field public static appDatabase:Lcom/everis/jibo/persistence/BeAMakerDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static coolIdeas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/CoolIdea;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final gson:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/BeAMakerApp;->Companion:Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/BeAMakerApp;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getAppDatabase$cp()Lcom/everis/jibo/persistence/BeAMakerDatabase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lcom/everis/jibo/beamaker/BeAMakerApp;->appDatabase:Lcom/everis/jibo/persistence/BeAMakerDatabase;

    if-nez v0, :cond_0

    const-string v1, "appDatabase"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getCoolIdeas$cp()Ljava/util/List;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lcom/everis/jibo/beamaker/BeAMakerApp;->coolIdeas:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "coolIdeas"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setAppDatabase$cp(Lcom/everis/jibo/persistence/BeAMakerDatabase;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/everis/jibo/persistence/BeAMakerDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 18
    sput-object p0, Lcom/everis/jibo/beamaker/BeAMakerApp;->appDatabase:Lcom/everis/jibo/persistence/BeAMakerDatabase;

    return-void
.end method

.method public static final synthetic access$setCoolIdeas$cp(Ljava/util/List;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 18
    sput-object p0, Lcom/everis/jibo/beamaker/BeAMakerApp;->coolIdeas:Ljava/util/List;

    return-void
.end method

.method private final initCoolIdeas()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/CoolIdea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/BeAMakerApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0d0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    const-string v3, "resources.openRawResource(R.raw.cool_ideas)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    const/16 v5, 0x2000

    instance-of v4, v3, Ljava/io/BufferedReader;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    :goto_0
    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Throwable;

    nop

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/io/BufferedReader;

    move-object v1, v0

    .local v1, "it":Ljava/io/BufferedReader;
    check-cast v1, Ljava/io/Reader;

    .end local v1    # "it":Ljava/io/BufferedReader;
    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 47
    .local v2, "jsonCoolIdeas":Ljava/lang/String;
    iget-object v3, p0, Lcom/everis/jibo/beamaker/BeAMakerApp;->gson:Lcom/google/gson/Gson;

    const-class v4, [Lcom/everis/jibo/persistence/CoolIdea;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "gson.fromJson(jsonCoolId\u2026ay<CoolIdea>::class.java)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 46
    .end local v2    # "jsonCoolIdeas":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public final getGson()Lcom/google/gson/Gson;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/everis/jibo/beamaker/BeAMakerApp;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    sget-object v0, Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;->INSTANCE:Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/environment/EnvironmentUtil;->init()V

    .line 33
    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f0e0026

    invoke-virtual {p0, v2}, Lcom/everis/jibo/beamaker/BeAMakerApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.ci)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0e0027

    invoke-virtual {p0, v3}, Lcom/everis/jibo/beamaker/BeAMakerApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.cs)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/BeAMakerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    const-class v1, Lcom/everis/jibo/persistence/BeAMakerDatabase;

    const-string v2, "beAMakerDatabase"

    .line 35
    invoke-static {v0, v1, v2}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    const-string v1, "Room.databaseBuilder(app\u2026eAMakerDatabase\").build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/everis/jibo/persistence/BeAMakerDatabase;

    sput-object v0, Lcom/everis/jibo/beamaker/BeAMakerApp;->appDatabase:Lcom/everis/jibo/persistence/BeAMakerDatabase;

    .line 39
    sget-object v1, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->init(Landroid/app/Application;)V

    .line 41
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/BeAMakerApp;->initCoolIdeas()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/everis/jibo/beamaker/BeAMakerApp;->coolIdeas:Ljava/util/List;

    .line 42
    return-void
.end method
