.class public Lcom/jibo/apptoolkit/protocol/model/Command$ListenRequest;
.super Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenRequest"
.end annotation


# instance fields
.field languageCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LanguageCode"
    .end annotation
.end field

.field maxNoSpeechTimeout:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MaxNoSpeechTimeout"
    .end annotation
.end field

.field maxSpeechTimeout:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MaxSpeechTimeout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2
    .param p1, "maxSpeechTimeout"    # Ljava/lang/Long;
    .param p2, "maxNoSpeechTimeout"    # Ljava/lang/Long;
    .param p3, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 493
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;->Listen:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V

    .line 494
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ListenRequest;->maxSpeechTimeout:Ljava/lang/Long;

    .line 495
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ListenRequest;->maxNoSpeechTimeout:Ljava/lang/Long;

    .line 496
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ListenRequest;->languageCode:Ljava/lang/String;

    .line 497
    return-void
.end method
