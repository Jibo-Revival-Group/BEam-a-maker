.class public Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;
.super Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
.source "EventMessage.java"

# interfaces
.implements Lcom/jibo/apptoolkit/protocol/model/EventMessage$FinalisingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenResultEvent"
.end annotation


# instance fields
.field private languageCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LanguageCode"
    .end annotation
.end field

.field private result:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Result"
    .end annotation
.end field

.field private speech:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Speech"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenResultEvent;->speech:Ljava/lang/String;

    return-object v0
.end method
