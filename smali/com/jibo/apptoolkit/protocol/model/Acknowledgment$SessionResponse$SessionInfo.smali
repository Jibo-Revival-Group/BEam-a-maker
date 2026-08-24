.class public Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;
.super Ljava/lang/Object;
.source "Acknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInfo"
.end annotation


# instance fields
.field private SessionID:Ljava/lang/String;

.field private Version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;->SessionID:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;->Version:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;->SessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Acknowledgment$SessionResponse$SessionInfo;->Version:Ljava/lang/String;

    return-object v0
.end method
