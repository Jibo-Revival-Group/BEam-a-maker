.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;
.super Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;
    }
.end annotation


# instance fields
.field private ResponseBody:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;)V
    .locals 0
    .param p1, "responseBody"    # Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;->ResponseBody:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    .line 157
    return-void
.end method


# virtual methods
.method public getResponseBody()Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;->ResponseBody:Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;

    return-object v0
.end method
