.class public Lcom/jibo/apptoolkit/protocol/utils/Commons;
.super Ljava/lang/Object;
.source "Commons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/utils/Commons$InvalidParameterValueException;,
        Lcom/jibo/apptoolkit/protocol/utils/Commons$AsyncCallback;
    }
.end annotation


# static fields
.field public static final ALLOWED_ENDPOINTS:[Ljava/lang/String;

.field public static final DEFAULT_DOMAIN:Ljava/lang/String; = "jibo.com"

.field public static final DEV_ENDPOINT:Ljava/lang/String; = "dev-customer-portal.jibo.com"

.field public static final JIBO_MODE:Z = true

.field public static final PREPROD_ENDPOINT:Ljava/lang/String; = "preprod-customer-portal.jibo.com"

.field public static final PROD_ENDPOINT:Ljava/lang/String; = "portal.jibo.com"

.field public static ROOT_ENDPOINT:Ljava/lang/String; = null

.field public static final SOCKET_PORT:Ljava/lang/String; = "7160"

.field public static final SOCKET_PROTOCOL:Ljava/lang/String; = "wss://"

.field public static final STG_ENDPOINT:Ljava/lang/String; = "stg-customer-portal.jibo.com"

.field public static final URLS_PROTOCOL:Ljava/lang/String; = "https://"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dev-customer-portal.jibo.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stg-customer-portal.jibo.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "preprod-customer-portal.jibo.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "portal.jibo.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jibo/apptoolkit/protocol/utils/Commons;->ALLOWED_ENDPOINTS:[Ljava/lang/String;

    .line 22
    const-string v0, "portal.jibo.com"

    sput-object v0, Lcom/jibo/apptoolkit/protocol/utils/Commons;->ROOT_ENDPOINT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setRootEndpoint(Ljava/lang/String;)V
    .locals 5
    .param p0, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jibo/apptoolkit/protocol/utils/Commons$InvalidParameterValueException;
        }
    .end annotation

    .prologue
    .line 25
    sget-object v2, Lcom/jibo/apptoolkit/protocol/utils/Commons;->ALLOWED_ENDPOINTS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 26
    .local v0, "ep":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    sput-object p0, Lcom/jibo/apptoolkit/protocol/utils/Commons;->ROOT_ENDPOINT:Ljava/lang/String;

    .line 28
    return-void

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "ep":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/jibo/apptoolkit/protocol/utils/Commons$InvalidParameterValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Endpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in not in allowed endpoints list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jibo/apptoolkit/protocol/utils/Commons$InvalidParameterValueException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
