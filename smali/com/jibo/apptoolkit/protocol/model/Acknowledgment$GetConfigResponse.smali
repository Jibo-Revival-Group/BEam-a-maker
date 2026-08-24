.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse;
.super Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetConfigResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse$ConfigInfo;
    }
.end annotation


# instance fields
.field private ResponseBody:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse$ConfigInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseBody()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse$ConfigInfo;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse;->ResponseBody:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse$ConfigInfo;

    return-object v0
.end method
