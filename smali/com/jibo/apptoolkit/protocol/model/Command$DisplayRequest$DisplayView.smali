.class public Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayView"
.end annotation


# instance fields
.field name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field type:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;->type:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    .line 866
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;->name:Ljava/lang/String;

    .line 867
    return-void
.end method
