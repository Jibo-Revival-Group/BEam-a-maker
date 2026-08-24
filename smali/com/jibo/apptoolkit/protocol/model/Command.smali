.class public Lcom/jibo/apptoolkit/protocol/model/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/model/Command$FetchAssetRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$VideoRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$SessionRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$SayRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequestExt;,
        Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$ListenRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$GetConfigRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$EntityRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$CancelRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$AttentionRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$AtomicCommand;,
        Lcom/jibo/apptoolkit/protocol/model/Command$HeadTouchRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$SpeechRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$MotionRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest;,
        Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeFilter;,
        Lcom/jibo/apptoolkit/protocol/model/Command$BaseSubscribeCommand;,
        Lcom/jibo/apptoolkit/protocol/model/Command$StreamTypes;,
        Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;,
        Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    }
.end annotation


# instance fields
.field private ClientHeader:Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;

.field private Command:Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;)V
    .locals 0
    .param p1, "clientHeader"    # Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;
    .param p2, "command"    # Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command;->ClientHeader:Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;

    .line 80
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command;->Command:Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    .line 81
    return-void
.end method


# virtual methods
.method public getClientHeader()Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command;->ClientHeader:Lcom/jibo/apptoolkit/protocol/model/Header$RequestHeader;

    return-object v0
.end method

.method public getCommand()Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command;->Command:Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;

    return-object v0
.end method
