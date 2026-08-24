.class public Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/api/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenExchangeRequest"
.end annotation


# instance fields
.field private client_id:Ljava/lang/String;

.field private client_secret:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private final grant_type:Ljava/lang/String;

.field private redirect_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "client_id"    # Ljava/lang/String;
    .param p2, "client_secret"    # Ljava/lang/String;
    .param p3, "redirect_uri"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "authorization_code"

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->grant_type:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->client_id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->client_secret:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->redirect_uri:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->code:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->client_id:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->client_secret:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "authorization_code"

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenExchangeRequest;->redirect_uri:Ljava/lang/String;

    return-object v0
.end method
