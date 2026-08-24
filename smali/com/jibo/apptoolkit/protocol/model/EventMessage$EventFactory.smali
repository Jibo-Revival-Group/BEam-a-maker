.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventFactory"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 709
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->TAG:Ljava/lang/String;

    .line 711
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    .line 714
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Start:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$StartEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Stop:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$StopEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Error:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->LookAtAchieved:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$LookAtAchievedEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackEntityLost:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$LookAtTrackLostEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->VideoReady:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$VideoReadyEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackUpdate:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackGained:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TrackLost:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->TakePhoto:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Tap:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->Swipe:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->ListenResult:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->MotionDetected:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->HotWordHeard:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HotWordHeardEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->AssetReady:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->AssetFailed:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$FetchAssetEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;->HeadTouched:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    const-class v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convert(Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    .locals 2
    .param p1, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    .prologue
    const/4 v1, 0x0

    .line 762
    instance-of v0, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;

    check-cast p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;

    .end local p1    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-direct {v0, p1, v1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;-><init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboSwipeEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;)V

    move-object p1, v0

    .line 774
    :cond_0
    :goto_0
    return-object p1

    .line 764
    .restart local p1    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_1
    instance-of v0, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;

    check-cast p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;

    .end local p1    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-direct {v0, p1, v1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;-><init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboTapEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;)V

    move-object p1, v0

    goto :goto_0

    .line 766
    .restart local p1    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_2
    instance-of v0, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;

    check-cast p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;

    .end local p1    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-direct {v0, p1, v1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;-><init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;)V

    move-object p1, v0

    goto :goto_0

    .line 768
    .restart local p1    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_3
    instance-of v0, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;

    check-cast p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;

    .end local p1    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-direct {v0, p1, v1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;-><init>(Lcom/jibo/apptoolkit/protocol/model/EventMessage$JiboHeadTouchEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$1;)V

    move-object p1, v0

    goto :goto_0

    .line 770
    .restart local p1    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_4
    instance-of v0, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 771
    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;

    iget-object v1, p1, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    invoke-static {v0, v1}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;->access$1102(Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    goto :goto_0
.end method


# virtual methods
.method public parseEventMessage(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    .locals 10
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 735
    const/4 v3, 0x0

    .line 736
    .local v3, "eventMessage":Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    new-instance v7, Lcom/google/gson/GsonBuilder;

    invoke-direct {v7}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v5

    .line 739
    .local v5, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 740
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-class v7, Lcom/jibo/apptoolkit/protocol/model/EventMessage;

    invoke-virtual {v5, p1, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/EventMessage;

    move-object v3, v0

    .line 742
    sget-object v7, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->access$600(Lcom/jibo/apptoolkit/protocol/model/EventMessage;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v8

    iget-object v8, v8, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 744
    const-string v7, "EventBody"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v7, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->mEventsMap:Ljava/util/Map;

    .line 745
    invoke-static {v3}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->access$600(Lcom/jibo/apptoolkit/protocol/model/EventMessage;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v9

    iget-object v9, v9, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;->Event:Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventType;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 744
    invoke-virtual {v5, v8, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    .line 747
    .local v2, "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-direct {p0, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EventFactory;->convert(Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;

    move-result-object v2

    .line 749
    invoke-virtual {v3, v2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage;->setEventBody(Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 757
    .end local v2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    .end local v3    # "eventMessage":Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "eventMessage":Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    :goto_0
    return-object v4

    .line 753
    .end local v4    # "eventMessage":Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    .restart local v3    # "eventMessage":Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    :catch_0
    move-exception v1

    .line 754
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v4, v3

    .line 757
    .end local v3    # "eventMessage":Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    .restart local v4    # "eventMessage":Lcom/jibo/apptoolkit/protocol/model/EventMessage;
    goto :goto_0
.end method
