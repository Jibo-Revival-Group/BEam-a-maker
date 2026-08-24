.class public Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$EntityTarget;
.super Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityTarget"
.end annotation


# instance fields
.field private Entity:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "entity"    # Ljava/lang/Long;

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;-><init>()V

    .line 584
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$EntityTarget;->Entity:Ljava/lang/Long;

    .line 585
    return-void
.end method


# virtual methods
.method public getEntity()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$EntityTarget;->Entity:Ljava/lang/Long;

    return-object v0
.end method
