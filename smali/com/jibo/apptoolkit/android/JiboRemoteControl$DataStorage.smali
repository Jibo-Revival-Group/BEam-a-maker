.class final Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/android/JiboRemoteControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "token",
        "Lcom/jibo/apptoolkit/protocol/api/Token;",
        "getToken",
        "()Lcom/jibo/apptoolkit/protocol/api/Token;",
        "clearToken",
        "",
        "putToken",
        "Companion",
        "apptoolkit-android-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

# The value of this static final field might be set in the static constructor
.field private static final a:Ljava/lang/String; = "tkn"

# The value of this static final field might be set in the static constructor
.field private static final b:Ljava/lang/String; = "Error accessing file system. Please try again..."

.field private static c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

.field private static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    const-string v0, "tkn"

    sput-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->a:Ljava/lang/String;

    const-string v0, "Error accessing file system. Please try again..."

    sput-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$setSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final synthetic access$getERROR_FILE_SYSTEM_ERROR$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSContext$cp()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    return-object v0
.end method

.method public static final synthetic access$getTOKEN_FILE$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setSContext$cp(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->d:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;)V
    .locals 0
    .param p0    # Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    return-void
.end method


# virtual methods
.method public final clearToken()V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    nop

    :try_start_0
    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getTOKEN_FILE$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v1

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getTAG$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearToken() error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/Exception;

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getERROR_FILE_SYSTEM_ERROR$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getToken()Lcom/jibo/apptoolkit/protocol/api/Token;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object v1, v2

    check-cast v1, Lcom/jibo/apptoolkit/protocol/api/Token;

    nop

    :try_start_0
    sget-object v3, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v3}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v3, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v3}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_1

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getTOKEN_FILE$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getTOKEN_FILE$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getSGson$apptoolkit_android_library_release()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v4, Lcom/jibo/apptoolkit/protocol/api/Token;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/jibo/apptoolkit/protocol/api/Token;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    move-object v2, v1

    goto :goto_0

    :cond_4
    move-object v3, v2

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v3}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v3

    sget-object v4, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v4}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getTAG$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getToken() error"

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v2}, Lcom/jibo/apptoolkit/android/a/b;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final putToken(Lcom/jibo/apptoolkit/protocol/api/Token;)V
    .locals 4
    .param p1    # Lcom/jibo/apptoolkit/protocol/api/Token;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "token"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    nop

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/jibo/apptoolkit/protocol/api/Token;->setTimestamp(J)V

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getSContext$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getTOKEN_FILE$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getSGson$apptoolkit_android_library_release()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v1

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getTAG$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "putToken() error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/Exception;

    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;

    invoke-static {v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;->access$getERROR_FILE_SYSTEM_ERROR$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
