.class public Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequestExt;
.super Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookAtRequestExt"
.end annotation


# instance fields
.field private LevelHeadFlag:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "lookAtTarget"    # Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
    .param p2, "trackFlag"    # Ljava/lang/Boolean;
    .param p3, "levelHeadFlag"    # Ljava/lang/Boolean;

    .prologue
    .line 623
    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;Ljava/lang/Boolean;)V

    .line 624
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequestExt;->LevelHeadFlag:Ljava/lang/Boolean;

    .line 625
    return-void
.end method


# virtual methods
.method public getLevelHeadFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequestExt;->LevelHeadFlag:Ljava/lang/Boolean;

    return-object v0
.end method
