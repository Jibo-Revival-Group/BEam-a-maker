.class public Lcom/jibo/apptoolkit/protocol/api/Request$TokenRefreshRequest;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/api/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenRefreshRequest"
.end annotation


# instance fields
.field private client_id:Ljava/lang/String;

.field private client_secret:Ljava/lang/String;

.field private final grant_type:Ljava/lang/String;

.field private refresh_token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "client_id"    # Ljava/lang/String;
    .param p2, "client_secret"    # Ljava/lang/String;
    .param p3, "refresh_token"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "refresh_token"

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenRefreshRequest;->grant_type:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenRefreshRequest;->client_id:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenRefreshRequest;->client_secret:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenRefreshRequest;->refresh_token:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenRefreshRequest;->client_id:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenRefreshRequest;->client_secret:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "refresh_token"

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$TokenRefreshRequest;->refresh_token:Ljava/lang/String;

    return-object v0
.end method
