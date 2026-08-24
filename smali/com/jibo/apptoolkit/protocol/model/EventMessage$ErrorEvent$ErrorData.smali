.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorData"
.end annotation


# instance fields
.field private ErrorCode:I

.field private ErrorString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;->ErrorCode:I

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;->ErrorString:Ljava/lang/String;

    return-object v0
.end method
