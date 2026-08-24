.class public Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;
.super Ljava/lang/Object;
.source "BaseCertificates.java"


# instance fields
.field cert:Ljava/lang/String;

.field created:Ljava/lang/Long;

.field fingerprint:Ljava/lang/String;

.field p12:Ljava/lang/String;

.field payload:Lcom/jibo/apptoolkit/protocol/api/IpPayload;

.field privateKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "private"
    .end annotation
.end field

.field publicKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "public"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cert"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->cert:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/jibo/apptoolkit/protocol/api/IpPayload;

    invoke-direct {v0}, Lcom/jibo/apptoolkit/protocol/api/IpPayload;-><init>()V

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->payload:Lcom/jibo/apptoolkit/protocol/api/IpPayload;

    .line 33
    return-void
.end method


# virtual methods
.method public getCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->payload:Lcom/jibo/apptoolkit/protocol/api/IpPayload;

    iget-object v0, v0, Lcom/jibo/apptoolkit/protocol/api/IpPayload;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getP12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->p12:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Lcom/jibo/apptoolkit/protocol/api/IpPayload;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->payload:Lcom/jibo/apptoolkit/protocol/api/IpPayload;

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->privateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseCertificates;->publicKey:Ljava/lang/String;

    return-object v0
.end method
