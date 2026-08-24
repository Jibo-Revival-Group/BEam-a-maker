.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;
.super Ljava/lang/Object;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcknowledgementBody"
.end annotation


# instance fields
.field private ResponseCode:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

.field private ResponseString:Ljava/lang/String;

.field private Value:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseCode()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;->ResponseCode:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ResponseCode;

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;->ResponseString:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;->Value:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ValueResult;

    return-object v0
.end method
