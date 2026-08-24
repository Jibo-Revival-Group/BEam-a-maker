.class public Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;
.super Lcom/jibo/apptoolkit/protocol/model/Header;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestHeader"
.end annotation


# static fields
.field public static final VER_1:Ljava/lang/String; = "1.0"


# instance fields
.field private AppID:Ljava/lang/String;

.field private Credentials:Ljava/lang/String;

.field private Version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/protocol/model/Header;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v0, "ImmaLittleTeapot"

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->AppID:Ljava/lang/String;

    .line 58
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->Version:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "sessionID"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/protocol/model/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "ImmaLittleTeapot"

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->AppID:Ljava/lang/String;

    .line 58
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->Version:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->Version:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionID"    # Ljava/lang/String;
    .param p2, "transactionID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "credentials"    # Ljava/lang/String;
    .param p5, "version"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/protocol/model/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "ImmaLittleTeapot"

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->AppID:Ljava/lang/String;

    .line 58
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->Version:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->AppID:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->Credentials:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->Version:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->AppID:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->Credentials:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;->Version:Ljava/lang/String;

    return-object v0
.end method
