.class public Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$TextView;
.super Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextView"
.end annotation


# instance fields
.field text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Text"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 881
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Text:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    invoke-direct {p0, v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;Ljava/lang/String;)V

    .line 882
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$TextView;->text:Ljava/lang/String;

    .line 883
    return-void
.end method
