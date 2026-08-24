.class public Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;
.super Lcom/jibo/apptoolkit/protocol/model/Header;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseHeader"
.end annotation


# instance fields
.field private RobotID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Header;-><init>()V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/protocol/model/Header;-><init>(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/protocol/model/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method public getRobotID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Header$ResponseHeader;->RobotID:Ljava/lang/String;

    return-object v0
.end method
