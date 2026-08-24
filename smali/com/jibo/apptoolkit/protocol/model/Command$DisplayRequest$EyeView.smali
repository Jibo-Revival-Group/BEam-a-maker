.class public Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$EyeView;
.super Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EyeView"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 909
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Eye:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    invoke-direct {p0, v0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayView;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;Ljava/lang/String;)V

    .line 910
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;->Eye:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    iput-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$EyeView;->type:Lcom/jibo/apptoolkit/protocol/model/Command$DisplayRequest$DisplayViewType;

    .line 911
    return-void
.end method
