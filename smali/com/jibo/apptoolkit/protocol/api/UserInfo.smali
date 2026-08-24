.class public Lcom/jibo/apptoolkit/protocol/api/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/UserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/UserInfo;->id:Ljava/lang/String;

    return-object v0
.end method
