.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$CancelResponse;
.super Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelResponse"
.end annotation


# instance fields
.field private ResponseBody:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$CancelResponse;->ResponseBody:Ljava/lang/String;

    return-object v0
.end method
