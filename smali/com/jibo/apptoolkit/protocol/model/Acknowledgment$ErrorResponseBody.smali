.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;
.super Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorResponseBody"
.end annotation


# instance fields
.field private ErrorDetail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$AcknowledgementBody;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;->ErrorDetail:Ljava/lang/String;

    return-object v0
.end method
