.class public final Lcom/jibo/apptoolkit/android/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/jibo/apptoolkit/android/ApiConnectionManager$Companion;",
        "",
        "()V",
        "CALLBACK_URI",
        "",
        "getCALLBACK_URI",
        "()Ljava/lang/String;",
        "TAG",
        "getTAG",
        "responseCount",
        "",
        "response",
        "Lokhttp3/Response;",
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

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/jibo/apptoolkit/android/a$a;Lokhttp3/Response;)I
    .locals 1
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/android/a$a;->a(Lokhttp3/Response;)I

    move-result v0

    return v0
.end method

.method private final a(Lokhttp3/Response;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    move v0, v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static final synthetic a(Lcom/jibo/apptoolkit/android/a$a;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/jibo/apptoolkit/android/a$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/jibo/apptoolkit/android/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/jibo/apptoolkit/android/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
