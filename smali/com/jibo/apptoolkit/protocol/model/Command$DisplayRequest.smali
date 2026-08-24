.class public Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$EyeView;,
        Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageView;,
        Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$TextView;,
        Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;,
        Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;,
        Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
    }
.end annotation


# instance fields
.field private view:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "View"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;)V
    .locals 2
    .param p1, "displayView"    # Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;

    .prologue
    .line 928
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Display:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 929
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;->view:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;

    .line 930
    return-void
.end method


# virtual methods
.method public getView()Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;->view:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;

    return-object v0
.end method
