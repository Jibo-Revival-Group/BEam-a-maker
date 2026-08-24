.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SayErrorResponse;
.super Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SayErrorResponse"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$ErrorResponseBody;-><init>()V

    return-void
.end method
