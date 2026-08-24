.class public Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$PositionTarget;
.super Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionTarget"
.end annotation


# instance fields
.field private Position:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .param p1, "position"    # [I

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$BaseLookAtTarget;-><init>()V

    .line 542
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$PositionTarget;->Position:[I

    .line 543
    return-void
.end method


# virtual methods
.method public getPosition()[I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$LookAtRequest$PositionTarget;->Position:[I

    return-object v0
.end method
