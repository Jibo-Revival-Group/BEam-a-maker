.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.super Lcom/jibo/apptoolkit/protocol/model/BaseResponse;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SayErrorResponse;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$LookAtErrorResponse;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ListenErrorResponse;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$CancelResponse;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;,
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    }
.end annotation


# instance fields
.field private Response:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;

.field private ResponseHeader:Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;)V
    .locals 0
    .param p1, "responseHeader"    # Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;
    .param p2, "response"    # Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/BaseResponse;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;->ResponseHeader:Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;

    .line 71
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;->Response:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;

    .line 72
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;->Response:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;

    return-object v0
.end method

.method public getResponseHeader()Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;->ResponseHeader:Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;

    return-object v0
.end method

.method public setResponse(Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;)V
    .locals 0
    .param p1, "response"    # Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;->Response:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;

    .line 84
    return-void
.end method
