.class public final Lcom/jibo/apptoolkit/android/a/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001aH\u0003J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006J\u001b\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000b2\u0006\u0010\u001f\u001a\u00020 H\u0003\u00a2\u0006\u0002\u0010!J\u0010\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020 H\u0003J\u0010\u0010$\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lcom/jibo/apptoolkit/android/util/FlavourHelper;",
        "",
        "()V",
        "JIBO_MODE",
        "",
        "SOCKET_PORT",
        "",
        "SOCKET_PROTOCOL",
        "TAG",
        "URLS_PROTOCOL",
        "mKeyManagers",
        "",
        "Ljavax/net/ssl/KeyManager;",
        "[Ljavax/net/ssl/KeyManager;",
        "mKeyStore",
        "Ljava/security/KeyStore;",
        "mSslContext",
        "Ljavax/net/ssl/SSLContext;",
        "mSslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "mTrustManagers",
        "Ljavax/net/ssl/TrustManager;",
        "[Ljavax/net/ssl/TrustManager;",
        "getCertFingerPrint",
        "mdAlg",
        "cert",
        "Ljava/security/cert/Certificate;",
        "getOkHttpClient",
        "Lokhttp3/OkHttpClient;",
        "ipAddress",
        "getTrustManagers",
        "mCertificate",
        "Lcom/jibo/apptoolkit/android/model/api/Certificates;",
        "(Lcom/jibo/apptoolkit/android/model/api/Certificates;)[Ljavax/net/ssl/TrustManager;",
        "initKeyStore",
        "",
        "initSslConnection",
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
.field public static final a:Lcom/jibo/apptoolkit/android/a/a;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/security/KeyStore;

.field private static d:Ljavax/net/ssl/SSLContext;

.field private static e:[Ljavax/net/ssl/KeyManager;

.field private static f:[Ljavax/net/ssl/TrustManager;

.field private static g:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jibo/apptoolkit/android/a/a;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/android/a/a;-><init>()V

    sput-object v0, Lcom/jibo/apptoolkit/android/a/a;->a:Lcom/jibo/apptoolkit/android/a/a;

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    const-class v1, Lcom/jibo/apptoolkit/android/a/a;

    invoke-virtual {v0, v1}, Lcom/jibo/apptoolkit/android/a/b;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/android/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/jibo/apptoolkit/android/a/a;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/jibo/apptoolkit/android/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic a(Lcom/jibo/apptoolkit/android/a/a;Ljava/lang/String;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/cert/Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/android/a/a;->a(Ljava/lang/String;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jibo/apptoolkit/protocol/utils/Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util.toHexString(digest)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final b(Lcom/jibo/apptoolkit/android/model/api/Certificates;)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v0, Lcom/jibo/apptoolkit/android/a/a$b;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/android/a/a$b;-><init>(Lcom/jibo/apptoolkit/android/model/api/Certificates;)V

    check-cast v0, Ljavax/net/ssl/TrustManager;

    aput-object v0, v1, v2

    return-object v1
.end method

.method private final c(Lcom/jibo/apptoolkit/android/model/api/Certificates;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/android/a/a;->c:Ljava/security/KeyStore;

    sget-object v0, Lcom/jibo/apptoolkit/android/a/a;->c:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1}, Lcom/jibo/apptoolkit/android/model/api/Certificates;->getP12()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "(this as java.lang.String).toCharArray()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    :cond_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    sget-object v1, Lcom/jibo/apptoolkit/android/a/a;->c:Ljava/security/KeyStore;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "(this as java.lang.String).toCharArray()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    const-string v1, "kmf"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/android/a/a;->e:[Ljavax/net/ssl/KeyManager;

    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/android/a/a;->b(Lcom/jibo/apptoolkit/android/model/api/Certificates;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/android/a/a;->f:[Ljavax/net/ssl/TrustManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/jibo/apptoolkit/android/model/api/Certificates;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .param p1    # Lcom/jibo/apptoolkit/android/model/api/Certificates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "mCertificate"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/android/a/a;->c(Lcom/jibo/apptoolkit/android/model/api/Certificates;)V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/jibo/apptoolkit/android/a/a;->d:Ljavax/net/ssl/SSLContext;

    sget-object v1, Lcom/jibo/apptoolkit/android/a/a;->d:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/jibo/apptoolkit/android/a/a;->e:[Ljavax/net/ssl/KeyManager;

    sget-object v3, Lcom/jibo/apptoolkit/android/a/a;->f:[Ljavax/net/ssl/TrustManager;

    invoke-virtual {v1, v2, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    :cond_0
    sget-object v1, Lcom/jibo/apptoolkit/android/a/a;->d:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :cond_1
    sput-object v0, Lcom/jibo/apptoolkit/android/a/a;->g:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v0, Lcom/jibo/apptoolkit/android/a/a;->d:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lokhttp3/OkHttpClient;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ipAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Lcom/jibo/apptoolkit/android/a/a;->g:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v0, Lcom/jibo/apptoolkit/android/a/a;->f:[Ljavax/net/ssl/TrustManager;

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljavax/net/ssl/TrustManager;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v0, Lcom/jibo/apptoolkit/android/a/a$a;

    invoke-direct {v0, p1}, Lcom/jibo/apptoolkit/android/a/a$a;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "OkHttpClient.Builder()\n \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
