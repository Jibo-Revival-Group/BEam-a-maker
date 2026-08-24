.class public Lcom/jibo/apptoolkit/protocol/api/Request$CertificatesRequest;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/api/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificatesRequest"
.end annotation


# instance fields
.field private friendlyId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "friendlyId"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/api/Request$CertificatesRequest;->friendlyId:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getFriendlyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Request$CertificatesRequest;->friendlyId:Ljava/lang/String;

    return-object v0
.end method
