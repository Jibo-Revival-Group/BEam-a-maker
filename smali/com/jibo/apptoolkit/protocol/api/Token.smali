.class public Lcom/jibo/apptoolkit/protocol/api/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field private access_token:Ljava/lang/String;

.field private refresh_token:Ljava/lang/String;

.field private timestamp:J

.field private token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Token;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Token;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/jibo/apptoolkit/protocol/api/Token;->timestamp:J

    return-wide v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Token;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/jibo/apptoolkit/protocol/api/Token;->timestamp:J

    .line 31
    return-void
.end method
