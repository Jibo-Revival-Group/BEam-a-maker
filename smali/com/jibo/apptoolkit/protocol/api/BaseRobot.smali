.class public Lcom/jibo/apptoolkit/protocol/api/BaseRobot;
.super Ljava/lang/Object;
.source "BaseRobot.java"


# instance fields
.field id:Ljava/lang/String;

.field name:Ljava/lang/String;

.field robotName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "robotName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/api/BaseRobot;->id:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/jibo/apptoolkit/protocol/api/BaseRobot;->name:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/jibo/apptoolkit/protocol/api/BaseRobot;->robotName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseRobot;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseRobot;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRobotName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/BaseRobot;->robotName:Ljava/lang/String;

    return-object v0
.end method
