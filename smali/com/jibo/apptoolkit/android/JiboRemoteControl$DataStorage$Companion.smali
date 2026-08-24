.class public final Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\nH\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;",
        "",
        "()V",
        "ERROR_FILE_SYSTEM_ERROR",
        "",
        "getERROR_FILE_SYSTEM_ERROR",
        "()Ljava/lang/String;",
        "TOKEN_FILE",
        "getTOKEN_FILE",
        "sContext",
        "Landroid/content/Context;",
        "getSContext",
        "()Landroid/content/Context;",
        "setSContext",
        "(Landroid/content/Context;)V",
        "sInstance",
        "Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;",
        "getSInstance",
        "()Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;",
        "setSInstance",
        "(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;)V",
        "getInstance",
        "context",
        "apptoolkit-android-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->access$getTOKEN_FILE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->access$setSContext$cp(Landroid/content/Context;)V

    return-void
.end method

.method private final a(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;)V
    .locals 0

    invoke-static {p1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->access$setSInstance$cp(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;)V

    return-void
.end method

.method public static final synthetic access$getERROR_FILE_SYSTEM_ERROR$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTOKEN_FILE$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->a(Landroid/content/Context;)V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->access$getERROR_FILE_SYSTEM_ERROR$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c()Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;
    .locals 1

    invoke-static {}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->access$getSInstance$cp()Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v0

    return-object v0
.end method

.method private final d()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->access$getSContext$cp()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getInstance(Landroid/content/Context;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    move-object v1, v0

    invoke-direct {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->c()Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v1

    if-nez v1, :cond_1

    const-class v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    :try_start_1
    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-direct {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->c()Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    invoke-direct {v1, p1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-direct {v3, v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->a(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;)V

    :cond_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
