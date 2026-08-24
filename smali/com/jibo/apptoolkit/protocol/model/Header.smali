.class public abstract Lcom/jibo/apptoolkit/protocol/model/Header;
.super Ljava/lang/Object;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;,
        Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;
    }
.end annotation


# instance fields
.field private SessionID:Ljava/lang/String;

.field private TransactionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Header;->TransactionID:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Header;->TransactionID:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Header;->SessionID:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header;->SessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header;->TransactionID:Ljava/lang/String;

    return-object v0
.end method
