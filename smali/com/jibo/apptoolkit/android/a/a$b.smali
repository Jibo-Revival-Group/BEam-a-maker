.class public final Lcom/jibo/apptoolkit/android/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/android/a/a;->b(Lcom/jibo/apptoolkit/android/model/api/Certificates;)[Ljavax/net/ssl/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0017\u00a2\u0006\u0002\u0010\nJ#\u0010\u000b\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0017\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/jibo/apptoolkit/android/util/FlavourHelper$getTrustManagers$1",
        "Ljavax/net/ssl/X509TrustManager;",
        "(Lcom/jibo/apptoolkit/android/model/api/Certificates;)V",
        "checkClientTrusted",
        "",
        "chain",
        "",
        "Ljava/security/cert/X509Certificate;",
        "authType",
        "",
        "([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V",
        "checkServerTrusted",
        "getAcceptedIssuers",
        "()[Ljava/security/cert/X509Certificate;",
        "apptoolkit-android-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jibo/apptoolkit/android/model/api/Certificates;


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/android/model/api/Certificates;)V
    .locals 0

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/a/a$b;->a:Lcom/jibo/apptoolkit/android/model/api/Certificates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/security/cert/X509Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 8
    .param p1    # [Ljava/security/cert/X509Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v0

    sget-object v1, Lcom/jibo/apptoolkit/android/a/a;->a:Lcom/jibo/apptoolkit/android/a/a;

    invoke-static {v1}, Lcom/jibo/apptoolkit/android/a/a;->a(Lcom/jibo/apptoolkit/android/a/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jibo/apptoolkit/android/a/a$b;->a:Lcom/jibo/apptoolkit/android/model/api/Certificates;

    invoke-virtual {v3}, Lcom/jibo/apptoolkit/android/model/api/Certificates;->getFingerprint()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCertificate.fingerprint"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toUpperCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    nop

    :try_start_0
    sget-object v0, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v3

    sget-object v0, Lcom/jibo/apptoolkit/android/a/a;->a:Lcom/jibo/apptoolkit/android/a/a;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/a/a;->a(Lcom/jibo/apptoolkit/android/a/a;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chain"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/jibo/apptoolkit/android/a/a;->a:Lcom/jibo/apptoolkit/android/a/a;

    const-string v7, "SHA1"

    aget-object v0, p1, v1

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-static {v6, v7, v0}, Lcom/jibo/apptoolkit/android/a/a;->a(Lcom/jibo/apptoolkit/android/a/a;Ljava/lang/String;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/jibo/apptoolkit/android/a/a;->a:Lcom/jibo/apptoolkit/android/a/a;

    const-string v4, "SHA1"

    aget-object v0, p1, v1

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-static {v3, v4, v0}, Lcom/jibo/apptoolkit/android/a/a;->a(Lcom/jibo/apptoolkit/android/a/a;Ljava/lang/String;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/jibo/apptoolkit/android/a/a$b;->a:Lcom/jibo/apptoolkit/android/model/api/Certificates;

    invoke-virtual {v3}, Lcom/jibo/apptoolkit/android/model/api/Certificates;->getFingerprint()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mCertificate.fingerprint"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/jibo/apptoolkit/android/a/b;->a:Lcom/jibo/apptoolkit/android/a/b$a;

    invoke-virtual {v3}, Lcom/jibo/apptoolkit/android/a/b$a;->a()Lcom/jibo/apptoolkit/android/a/b;

    move-result-object v3

    sget-object v4, Lcom/jibo/apptoolkit/android/a/a;->a:Lcom/jibo/apptoolkit/android/a/a;

    invoke-static {v4}, Lcom/jibo/apptoolkit/android/a/a;->a(Lcom/jibo/apptoolkit/android/a/a;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v0}, Lcom/jibo/apptoolkit/android/a/b;->LOGD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toUpperCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    nop

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
