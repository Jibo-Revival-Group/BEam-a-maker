.class public final Lcom/jibo/apptoolkit/android/JiboRemoteControl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;,
        Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;,
        Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000  2\u00020\u0001:\u0003 !\"B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0006\u0010\u0014\u001a\u00020\u0010J\u0008\u0010\u0015\u001a\u00020\u0010H\u0002J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0010J\u0006\u0010\u001c\u001a\u00020\u0010J\u001a\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u001a\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u001a\u0010\u001f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/jibo/apptoolkit/android/JiboRemoteControl;",
        "",
        "()V",
        "isAuthenticated",
        "",
        "()Z",
        "mCertificatePollerThread",
        "Ljava/lang/Thread;",
        "<set-?>",
        "Landroid/support/v7/app/AppCompatActivity;",
        "parentSignInActivity",
        "getParentSignInActivity",
        "()Landroid/support/v7/app/AppCompatActivity;",
        "setParentSignInActivity",
        "(Landroid/support/v7/app/AppCompatActivity;)V",
        "authenticate",
        "",
        "activity",
        "onAuthenticationListener",
        "Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;",
        "cancel",
        "checkInitStatus",
        "connect",
        "robot",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "onConnectionListener",
        "Lcom/jibo/apptoolkit/protocol/OnConnectionListener;",
        "disconnect",
        "logOut",
        "openAutoLoginWindow",
        "openSignInWindow",
        "signIn",
        "Companion",
        "DataStorage",
        "OnAuthenticationListener",
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
.field public static final Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

.field private static final c:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final d:J = 0x36ee80L

# The value of this static final field might be set in the static constructor
.field private static final e:I = 0x3e8

.field private static f:Lcom/google/gson/Gson;

.field private static g:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

.field private static h:Lcom/jibo/apptoolkit/android/a;

.field private static i:Lcom/jibo/apptoolkit/android/c;

.field private static j:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

.field private static k:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

.field private static final l:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$sOnTokenRetrievedListener$1;

.field private static final m:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$mCertificatePollerHandler$1;


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Landroid/support/v7/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    const-class v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    invoke-virtual {v0, v1}, Lcom/jibo/apptoolkit/android/a/b;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->c:Ljava/lang/String;

    const v0, 0x36ee80

    int-to-long v0, v0

    sput-wide v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->d:J

    const/16 v0, 0x3e8

    sput v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->e:I

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->f:Lcom/google/gson/Gson;

    new-instance v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$sOnTokenRetrievedListener$1;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$sOnTokenRetrievedListener$1;-><init>()V

    sput-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->l:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$sOnTokenRetrievedListener$1;

    new-instance v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$mCertificatePollerHandler$1;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$mCertificatePollerHandler$1;-><init>()V

    sput-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->m:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$mCertificatePollerHandler$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 3

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSDataStorage$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSRomApiConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSInstance$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Lcom/jibo/apptoolkit/protocol/JiboRemoteInitializationException;

    const-string v2, "Please initialize JiboRemoteControl properly before using!"

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/JiboRemoteInitializationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    return-void
.end method

.method private final a(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Spoofing detected!"

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    check-cast p2, Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-virtual {p2}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->finish()V

    sget-object v3, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v3}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSRomApiConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/a;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Lcom/jibo/apptoolkit/android/a;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v3, "State values do not match!"

    invoke-direct {v0, v3}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;->onError(Ljava/lang/Throwable;)V

    :cond_3
    sget-object v2, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    move-object v0, v1

    check-cast v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    invoke-static {v2, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$setSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_4

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSRomApiConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/a;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$authenticate$$inlined$let$lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$authenticate$$inlined$let$lambda$1;-><init>(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Landroid/support/v7/app/AppCompatActivity;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-virtual {v1, v2, v0}, Lcom/jibo/apptoolkit/android/a;->a(Ljava/lang/String;Lretrofit2/Callback;)V

    :cond_7
    nop

    goto :goto_1
.end method

.method public static final synthetic access$getMCertificatePollerHandler$cp()Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$mCertificatePollerHandler$1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->m:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$mCertificatePollerHandler$1;

    return-object v0
.end method

.method public static final synthetic access$getMCertificatePollerThread$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl;)Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method public static final synthetic access$getMRomSdkConnectionManager$cp()Lcom/jibo/apptoolkit/android/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->i:Lcom/jibo/apptoolkit/android/c;

    return-object v0
.end method

.method public static final synthetic access$getSDataStorage$cp()Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->g:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    return-object v0
.end method

.method public static final synthetic access$getSGson$cp()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->f:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final synthetic access$getSIGN_IN_REQUEST_CODE$cp()I
    .locals 1

    sget v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->e:I

    return v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/jibo/apptoolkit/android/JiboRemoteControl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->j:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    return-object v0
.end method

.method public static final synthetic access$getSOnTokenRetrievedListener$cp()Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$sOnTokenRetrievedListener$1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->l:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$sOnTokenRetrievedListener$1;

    return-object v0
.end method

.method public static final synthetic access$getSRomApiConnectionManager$cp()Lcom/jibo/apptoolkit/android/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->h:Lcom/jibo/apptoolkit/android/a;

    return-object v0
.end method

.method public static final synthetic access$getSTempOnAuthenticationListener$cp()Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->k:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTOKEN_LIFESPAN$cp()J
    .locals 2

    sget-wide v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->d:J

    return-wide v0
.end method

.method public static final synthetic access$setMCertificatePollerThread$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Ljava/lang/Thread;)V
    .locals 0
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a:Ljava/lang/Thread;

    return-void
.end method

.method public static final synthetic access$setMRomSdkConnectionManager$cp(Lcom/jibo/apptoolkit/android/c;)V
    .locals 0
    .param p0    # Lcom/jibo/apptoolkit/android/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->i:Lcom/jibo/apptoolkit/android/c;

    return-void
.end method

.method public static final synthetic access$setSDataStorage$cp(Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;)V
    .locals 0
    .param p0    # Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->g:Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    return-void
.end method

.method public static final synthetic access$setSGson$cp(Lcom/google/gson/Gson;)V
    .locals 0

    sput-object p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->f:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/jibo/apptoolkit/android/JiboRemoteControl;)V
    .locals 0
    .param p0    # Lcom/jibo/apptoolkit/android/JiboRemoteControl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->j:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    return-void
.end method

.method public static final synthetic access$setSRomApiConnectionManager$cp(Lcom/jibo/apptoolkit/android/a;)V
    .locals 0
    .param p0    # Lcom/jibo/apptoolkit/android/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->h:Lcom/jibo/apptoolkit/android/a;

    return-void
.end method

.method public static final synthetic access$setSTempOnAuthenticationListener$cp(Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V
    .locals 0
    .param p0    # Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->k:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    return-void
.end method

.method private final b(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V
    .locals 3

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->b:Landroid/support/v7/app/AppCompatActivity;

    new-instance v1, Landroid/content/Intent;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-class v2, Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/jibo/apptoolkit/android/ui/SignInActivity;->Companion:Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/ui/SignInActivity$Companion;->getPARAM_URL()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSRomApiConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;-><init>()V

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    nop

    :try_start_0
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    check-cast v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    invoke-static {v0, v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$setSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSRomApiConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/a;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;

    invoke-direct {v0, p0, v2, p2, p1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;-><init>(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;Landroid/support/v7/app/AppCompatActivity;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-virtual {v1, v0}, Lcom/jibo/apptoolkit/android/a;->a(Lretrofit2/Callback;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    check-cast v0, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->b:Landroid/support/v7/app/AppCompatActivity;

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;->onCancel()V

    :cond_0
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    check-cast v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    invoke-static {v0, v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$setSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    :cond_1
    return-void
.end method

.method public final connect(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V
    .locals 2
    .param p1    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/jibo/apptoolkit/protocol/OnConnectionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "robot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a()V

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getMRomSdkConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/c;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getMRomSdkConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/c;->b()V

    :cond_0
    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    const/4 v0, 0x0

    check-cast v0, Lcom/jibo/apptoolkit/android/c;

    invoke-static {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$setMRomSdkConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;Lcom/jibo/apptoolkit/android/c;)V

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$connect$1;-><init>(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Thread;

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a:Ljava/lang/Thread;

    :cond_1
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getMRomSdkConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/c;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getMRomSdkConnectionManager$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/c;->b()V

    :cond_2
    return-void
.end method

.method public final getParentSignInActivity()Landroid/support/v7/app/AppCompatActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->b:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method public final isAuthenticated()Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSDataStorage$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->getToken()Lcom/jibo/apptoolkit/protocol/api/Token;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/jibo/apptoolkit/protocol/api/Token;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getTOKEN_LIFESPAN$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final logOut()V
    .locals 1

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSDataStorage$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->clearToken()V

    :cond_0
    return-void
.end method

.method public final signIn(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V
    .locals 3
    .param p1    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iput-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Lcom/jibo/apptoolkit/protocol/JiboRemoteInitializationException;

    const-string v2, "Context must be provided!"

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/JiboRemoteInitializationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSDataStorage$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->getToken()Lcom/jibo/apptoolkit/protocol/api/Token;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->c(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/jibo/apptoolkit/android/ui/SignInActivity;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->a(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0, p2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$setSTempOnAuthenticationListener$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->b(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    goto :goto_0
.end method
