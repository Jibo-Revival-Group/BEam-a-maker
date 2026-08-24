.class public Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
    }
.end annotation


# instance fields
.field private Duration:Ljava/lang/Long;

.field private VideoType:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;)V
    .locals 2
    .param p1, "videoType"    # Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    .prologue
    .line 776
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Video:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 777
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;->VideoType:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    .line 778
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;->Duration:Ljava/lang/Long;

    .line 779
    return-void
.end method

.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;Ljava/lang/Long;)V
    .locals 2
    .param p1, "videoType"    # Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
    .param p2, "duration"    # Ljava/lang/Long;

    .prologue
    .line 788
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Video:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 789
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;->VideoType:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    .line 790
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;->Duration:Ljava/lang/Long;

    .line 791
    return-void
.end method


# virtual methods
.method public getDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;->Duration:Ljava/lang/Long;

    return-object v0
.end method

.method public getVideoType()Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;->VideoType:Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest$VideoType;

    return-object v0
.end method
