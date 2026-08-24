.class public Lcom/jibo/apptoolkit/protocol/model/Command$FetchAssetRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchAssetRequest"
.end annotation


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "URI"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 948
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->FetchAsset:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 949
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$FetchAssetRequest;->uri:Ljava/lang/String;

    .line 950
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$FetchAssetRequest;->name:Ljava/lang/String;

    .line 951
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$FetchAssetRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$FetchAssetRequest;->uri:Ljava/lang/String;

    return-object v0
.end method
