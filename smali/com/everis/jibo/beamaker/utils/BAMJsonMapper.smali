.class public final Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;
.super Ljava/lang/Object;
.source "BAMJsonMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBAMJsonMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BAMJsonMapper.kt\ncom/everis/jibo/beamaker/utils/BAMJsonMapper\n*L\n1#1,58:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;",
        "",
        "()V",
        "getEntityJson",
        "",
        "event",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;",
        "getHeadTouchJson",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;",
        "getListenJson",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;",
        "getMotionJson",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;",
        "getSwipeJson",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;",
        "getTapJson",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;",
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
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEntityJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;->getTracks()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;

    move-result-object v1

    const-string v2, "event.tracks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v1

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "json":Ljava/lang/String;
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;->getTracks()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent$TrackedEntity;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tracks"

    const-string v2, "tracks"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .end local v6    # "json":Ljava/lang/String;
    :goto_2
    return-object v0

    :cond_0
    move v1, v3

    .line 47
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 52
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public final getHeadTouchJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 23
    .local v6, "json":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\\\'"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getListenJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 17
    .local v6, "json":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\\\'"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMotionJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;->getMotions()[Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent$MotionEntity;

    move-result-object v1

    const-string v2, "event.motions"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v1

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "json":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Motions"

    const-string v2, "motions"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .end local v6    # "json":Ljava/lang/String;
    :goto_2
    return-object v0

    :cond_0
    move v1, v3

    .line 37
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 41
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public final getSwipeJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gson().toJson(event)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTapJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gson().toJson(event)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
