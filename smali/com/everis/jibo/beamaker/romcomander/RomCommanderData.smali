.class public final Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
.super Ljava/lang/Object;
.source "RomCommanderData.kt"

# interfaces
.implements Lcom/jibo/apptoolkit/protocol/OnConnectionListener;
.implements Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;
.implements Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001uB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00142\u0008\u0010*\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\'\u001a\u0004\u0018\u00010\u00062\u0006\u0010+\u001a\u00020\u0006J\u000e\u0010,\u001a\u00020(2\u0006\u0010-\u001a\u00020\u0006J\u0006\u0010.\u001a\u00020(J\u000e\u0010/\u001a\u00020(2\u0006\u00100\u001a\u00020\u0006J\u0010\u00101\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H\u0002J\u000e\u00102\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0014J\u0006\u00103\u001a\u00020(J\u0016\u00104\u001a\u00020(2\u0006\u00105\u001a\u00020\u001a2\u0006\u00106\u001a\u00020\u000eJ\u0006\u00107\u001a\u00020(J\u000e\u00108\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0014J\u0008\u00109\u001a\u00020(H\u0016J\u0010\u0010:\u001a\u00020(2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020(2\u0006\u0010>\u001a\u00020?H\u0016J\u001c\u0010@\u001a\u00020(2\u0008\u0010*\u001a\u0004\u0018\u00010\u00062\u0008\u0010A\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010B\u001a\u00020(2\u0008\u0010*\u001a\u0004\u0018\u00010\u00062\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J\u001c\u0010E\u001a\u00020(2\u0008\u0010*\u001a\u0004\u0018\u00010\u00062\u0008\u0010F\u001a\u0004\u0018\u00010GH\u0016J\u0008\u0010H\u001a\u00020(H\u0016J\u001c\u0010I\u001a\u00020(2\u0008\u0010J\u001a\u0004\u0018\u00010\u00062\u0008\u0010K\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010L\u001a\u00020(H\u0016J$\u0010M\u001a\u00020(2\u0008\u0010*\u001a\u0004\u0018\u00010\u00062\u0008\u0010C\u001a\u0004\u0018\u00010N2\u0006\u0010O\u001a\u00020PH\u0016J\u0012\u0010Q\u001a\u00020(2\u0008\u0010R\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010S\u001a\u00020(H\u0016J\u0012\u0010T\u001a\u00020(2\u0008\u0010*\u001a\u0004\u0018\u00010\u0006H\u0016J&\u0010U\u001a\u00020(2\u0008\u0010J\u001a\u0004\u0018\u00010\u00062\u0008\u0010K\u001a\u0004\u0018\u00010V2\u0008\u0010W\u001a\u0004\u0018\u00010PH\u0016J\u0006\u0010X\u001a\u00020\u0006J\u0006\u0010Y\u001a\u00020\u0006J\u000e\u0010Z\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006J\u000e\u0010[\u001a\u00020\u00062\u0006\u0010\\\u001a\u00020]J\u000e\u0010^\u001a\u00020\u00062\u0006\u0010_\u001a\u00020`J\u0006\u0010a\u001a\u00020\u0006J\u0016\u0010b\u001a\u00020\u00062\u0006\u0010c\u001a\u00020?2\u0006\u0010d\u001a\u00020?J\u001e\u0010e\u001a\u00020\u00062\u0006\u0010c\u001a\u00020`2\u0006\u0010d\u001a\u00020`2\u0006\u0010f\u001a\u00020`J\u0006\u0010g\u001a\u00020(J\u0006\u0010h\u001a\u00020\u0006J\u001e\u0010i\u001a\u00020\u00062\u0006\u0010j\u001a\u00020k2\u0006\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020oJ\u000e\u0010p\u001a\u00020(2\u0006\u00105\u001a\u00020\u001aJ\u0010\u0010q\u001a\u00020(2\u0008\u0010R\u001a\u0004\u0018\u00010 J\u0016\u0010r\u001a\u00020\u00062\u0006\u0010s\u001a\u00020`2\u0006\u0010t\u001a\u00020`R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u000e\u0010%\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006v"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;",
        "Lcom/jibo/apptoolkit/protocol/OnConnectionListener;",
        "Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;",
        "Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;",
        "()V",
        "CHAR_TO_REPLACE",
        "",
        "COUNT_DOWN_TIME",
        "",
        "COUNT_DOWN_UPDATING",
        "FIN_PITCH",
        "HASHTAG",
        "INIT_PITCH",
        "mConnectingCallback",
        "Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;",
        "getMConnectingCallback",
        "()Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;",
        "setMConnectingCallback",
        "(Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;)V",
        "mOnJiboWrapper",
        "Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;",
        "getMOnJiboWrapper",
        "()Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;",
        "setMOnJiboWrapper",
        "(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;)V",
        "mRobot",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "getMRobot",
        "()Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "setMRobot",
        "(Lcom/jibo/apptoolkit/android/model/api/Robot;)V",
        "mRomCommander",
        "Lcom/jibo/apptoolkit/protocol/CommandLibrary;",
        "getMRomCommander",
        "()Lcom/jibo/apptoolkit/protocol/CommandLibrary;",
        "setMRomCommander",
        "(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V",
        "timer",
        "Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;",
        "cancel",
        "",
        "onJiboWrapper",
        "transactionID",
        "string",
        "display",
        "text",
        "displayEye",
        "displayImage",
        "url",
        "filterHashtag",
        "initListener",
        "jiboCancel",
        "jiboConnect",
        "robot",
        "callback",
        "jiboLogout",
        "jiboUnpair",
        "onConnected",
        "onConnectionFailed",
        "throwable",
        "",
        "onDisconnected",
        "code",
        "",
        "onError",
        "errorMessage",
        "onEvent",
        "event",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;",
        "onEventError",
        "errorData",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;",
        "onFinish",
        "onListen",
        "p0",
        "p1",
        "onParseError",
        "onPhoto",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;",
        "inputStream",
        "Ljava/io/InputStream;",
        "onSessionStarted",
        "romCommander",
        "onSocketError",
        "onSuccess",
        "onVideo",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;",
        "p2",
        "registerGetEntity",
        "registerHeadTouch",
        "say",
        "screenGesture",
        "screenGestureType",
        "Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;",
        "setConfig",
        "value",
        "",
        "setListen",
        "setLookAt",
        "posX",
        "posY",
        "setLookAt3D",
        "posZ",
        "setLookAtFront",
        "setMotion",
        "setPhoto",
        "camera",
        "Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;",
        "resolution",
        "Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;",
        "distortion",
        "",
        "setRobot",
        "setRomCommander",
        "setTurn",
        "theta",
        "psi",
        "OnJiboWrapper",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final CHAR_TO_REPLACE:Ljava/lang/String; = "#"

# The value of this static final field might be set in the static constructor
.field private static final COUNT_DOWN_TIME:J = 0x493e0L

# The value of this static final field might be set in the static constructor
.field private static final COUNT_DOWN_UPDATING:J = 0x3e8L

# The value of this static final field might be set in the static constructor
.field private static final FIN_PITCH:Ljava/lang/String; = "</pitch>"

# The value of this static final field might be set in the static constructor
.field private static final HASHTAG:Ljava/lang/String; = "hashtag"

# The value of this static final field might be set in the static constructor
.field private static final INIT_PITCH:Ljava/lang/String; = "<pitch mult=\"1\">"

.field public static final INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

.field private static mConnectingCallback:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 20
    new-instance v6, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-direct {v6}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;-><init>()V

    sput-object v6, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    .line 25
    const-string v0, "<pitch mult=\"1\">"

    sput-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INIT_PITCH:Ljava/lang/String;

    .line 26
    const-string v0, "</pitch>"

    sput-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->FIN_PITCH:Ljava/lang/String;

    .line 27
    const-string v0, "#"

    sput-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->CHAR_TO_REPLACE:Ljava/lang/String;

    .line 28
    const-string v0, "hashtag"

    sput-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->HASHTAG:Ljava/lang/String;

    .line 29
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->COUNT_DOWN_TIME:J

    .line 30
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->COUNT_DOWN_UPDATING:J

    .line 37
    new-instance v1, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    sget-wide v2, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->COUNT_DOWN_TIME:J

    sget-wide v4, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->COUNT_DOWN_UPDATING:J

    check-cast v6, Lcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;

    invoke-direct/range {v1 .. v6}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;-><init>(JJLcom/everis/jibo/beamaker/utils/countdown/CountDown$CountDownCallback;)V

    sput-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final filterHashtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 265
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->CHAR_TO_REPLACE:Ljava/lang/String;

    sget-object v2, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->HASHTAG:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, p1, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->cancel(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cancel(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "onJiboWrapper"    # Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "onJiboWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    .line 135
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, p2, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->cancel(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    .line 136
    :cond_0
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->stop()V

    .line 137
    return-void
.end method

.method public final display(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$TextView;

    const-string v2, "TextName"

    invoke-direct {v0, v2, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$TextView;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v1, v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->display(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    .line 103
    :cond_0
    return-void
.end method

.method public final displayEye()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Eye:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    const-string v2, "eye"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;Ljava/lang/String;)V

    .line 107
    .local v0, "eye":Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v1, v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->display(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    .line 108
    :cond_0
    return-void
.end method

.method public final displayImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;

    invoke-direct {v1}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;-><init>()V

    .line 112
    .local v1, "image":Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;
    const-string v2, "imagen"

    iput-object v2, v1, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;->name:Ljava/lang/String;

    .line 113
    iput-object p1, v1, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;->src:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageView;

    const-string v2, "imagen"

    invoke-direct {v0, v2, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageView;-><init>(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;)V

    .line 115
    .local v0, "dv":Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageView;
    sget-object v2, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;

    .end local v0    # "dv":Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageView;
    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v2, v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->display(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    .line 116
    :cond_0
    return-void
.end method

.method public final getMConnectingCallback()Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mConnectingCallback:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;

    return-object v0
.end method

.method public final getMOnJiboWrapper()Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    return-object v0
.end method

.method public final getMRobot()Lcom/jibo/apptoolkit/android/model/api/Robot;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    return-object v0
.end method

.method public final getMRomCommander()Lcom/jibo/apptoolkit/protocol/CommandLibrary;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    return-object v0
.end method

.method public final initListener(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;)V
    .locals 1
    .param p1, "onJiboWrapper"    # Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "onJiboWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    .line 41
    return-void
.end method

.method public final jiboCancel()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->disconnect()V

    .line 53
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->stop()V

    .line 54
    return-void
.end method

.method public final jiboConnect(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;)V
    .locals 1
    .param p1, "robot"    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "robot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sput-object p2, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mConnectingCallback:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;

    .line 62
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    check-cast p0, Lcom/jibo/apptoolkit/protocol/OnConnectionListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, p1, p0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->connect(Lcom/jibo/apptoolkit/android/model/api/Robot;Lcom/jibo/apptoolkit/protocol/OnConnectionListener;)V

    .line 63
    return-void
.end method

.method public final jiboLogout()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->logOut()V

    .line 151
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->stop()V

    .line 152
    return-void
.end method

.method public final jiboUnpair(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;)V
    .locals 1
    .param p1, "onJiboWrapper"    # Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "onJiboWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    .line 145
    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->getInstance()Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->disconnect()V

    .line 146
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->stop()V

    .line 147
    return-void
.end method

.method public onConnected()V
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mConnectingCallback:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;->onConnectTransactionSuccess()V

    .line 189
    :cond_0
    return-void
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mConnectingCallback:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;->onConnectTransactionError(Ljava/lang/Throwable;)V

    .line 199
    :cond_0
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->stop()V

    .line 200
    return-void
.end method

.method public onDisconnected(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 204
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;->onJiboDisconnect(I)V

    .line 207
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    sput-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    .line 208
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->stop()V

    .line 209
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "errorMessage"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;->onJiboError(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;->onJiboEvent(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onEventError(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "errorData"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 229
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;->onJiboEventError(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;)V

    .line 230
    :cond_0
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->stop()V

    .line 231
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 170
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->say(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    return-void
.end method

.method public onListen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "p0"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 243
    return-void
.end method

.method public onParseError()V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;->onJiboParseError()V

    .line 247
    :cond_0
    return-void
.end method

.method public onPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "inputStream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;->onJiboPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V

    .line 235
    :cond_0
    return-void
.end method

.method public onSessionStarted(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    .locals 1
    .param p1, "romCommander"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    .line 193
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mConnectingCallback:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;->onConnectTransactionStarted(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V

    .line 194
    :cond_0
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->initTimer()V

    .line 195
    return-void
.end method

.method public onSocketError()V
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;->onJiboSocketError()V

    .line 221
    :cond_0
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->stop()V

    .line 222
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 212
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;->onJiboSuccess(Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onVideo(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "p0"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 253
    return-void
.end method

.method public final registerGetEntity()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->entity(Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final registerHeadTouch()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->headTouch(Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final say(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/16 v4, 0x20

    const-string v1, "text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->restart()V

    .line 97
    invoke-direct {p0, p1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->filterHashtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "textModified":Ljava/lang/String;
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INIT_PITCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->FIN_PITCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v1, v2, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->say(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public final screenGesture(Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;)Ljava/lang/String;
    .locals 5
    .param p1, "screenGestureType"    # Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const-string v0, "screenGestureType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;

    .line 156
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Rectangle;

    invoke-direct {v0, v3, v3, v4, v4}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Rectangle;-><init>(FFFF)V

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Area;

    .line 155
    invoke-direct {v2, p1, v0}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Area;)V

    .line 156
    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .line 155
    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v1, v2, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->screenGesture(Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final setConfig(F)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->restart()V

    .line 120
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;

    invoke-direct {v1, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;-><init>(F)V

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, v1, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->setConfig(Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final setListen()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v2, 0x2710

    .line 238
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "en"

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->listen(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final setLookAt(II)Ljava/lang/String;
    .locals 4
    .param p1, "posX"    # I
    .param p2, "posY"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 68
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$CameraTarget;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$CameraTarget;-><init>([I)V

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v1, v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->lookAt(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final setLookAt3D(FFF)Ljava/lang/String;
    .locals 4
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->restart()V

    .line 74
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x2

    aput p3, v2, v3

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;-><init>([F)V

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v1, v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->lookAt(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final setLookAtFront()V
    .locals 3

    .prologue
    .line 84
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$PositionTarget;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$PositionTarget;-><init>([I)V

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v1, v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->lookAt(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    .line 85
    :cond_0
    return-void

    .line 84
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public final setMConnectingCallback(Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mConnectingCallback:Lcom/everis/jibo/beamaker/repository/pairing/ConnectingJiboRepository$GetJiboConnectTransactionCallback;

    return-void
.end method

.method public final setMOnJiboWrapper(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mOnJiboWrapper:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    return-void
.end method

.method public final setMRobot(Lcom/jibo/apptoolkit/android/model/api/Robot;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    return-void
.end method

.method public final setMRomCommander(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    return-void
.end method

.method public final setMotion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->restart()V

    .line 126
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->motion(Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final setPhoto(Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;Z)Ljava/lang/String;
    .locals 1
    .param p1, "camera"    # Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "resolution"    # Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "distortion"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "camera"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->restart()V

    .line 89
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v0, :cond_0

    .line 92
    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .line 89
    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->takePhoto(Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;ZLcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final setRobot(Lcom/jibo/apptoolkit/android/model/api/Robot;)V
    .locals 1
    .param p1, "robot"    # Lcom/jibo/apptoolkit/android/model/api/Robot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "robot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRobot:Lcom/jibo/apptoolkit/android/model/api/Robot;

    .line 49
    return-void
.end method

.method public final setRomCommander(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    .locals 0
    .param p1, "romCommander"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    sput-object p1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    .line 45
    return-void
.end method

.method public final setTurn(FF)Ljava/lang/String;
    .locals 3
    .param p1, "theta"    # F
    .param p2, "psi"    # F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 78
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->timer:Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/countdown/AndroidCountDown;->restart()V

    .line 79
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;-><init>([F)V

    .line 80
    .local v0, "angle":Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->mRomCommander:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;

    .end local v0    # "angle":Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$AngleTarget;
    check-cast p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;
    invoke-virtual {v1, v0, p0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->lookAt(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Lcom/jibo/apptoolkit/protocol/CommandLibrary$OnCommandResponseListener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
