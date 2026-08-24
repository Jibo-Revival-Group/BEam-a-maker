.class public Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageView;
.super Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageView"
.end annotation


# instance fields
.field image:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Image"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;

    .prologue
    .line 897
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Image:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    invoke-direct {p0, v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;Ljava/lang/String;)V

    .line 898
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageView;->image:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$ImageData;

    .line 899
    return-void
.end method
