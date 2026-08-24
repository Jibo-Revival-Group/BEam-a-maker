.class public Lcom/jibo/apptoolkit/protocol/api/CertData;
.super Ljava/lang/Object;
.source "CertData.java"


# instance fields
.field private created:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/CertData;->created:Ljava/lang/Long;

    return-object v0
.end method
