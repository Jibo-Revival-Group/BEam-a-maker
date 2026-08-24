.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse$ConfigInfo;
.super Ljava/lang/Object;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigInfo"
.end annotation


# instance fields
.field private Version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$GetConfigResponse$ConfigInfo;->Version:Ljava/lang/String;

    return-object v0
.end method
