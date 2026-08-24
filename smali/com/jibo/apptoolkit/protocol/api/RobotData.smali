.class public Lcom/jibo/apptoolkit/protocol/api/RobotData;
.super Ljava/lang/Object;
.source "RobotData.java"


# instance fields
.field private robots:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/BaseRobot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRobots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/BaseRobot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/RobotData;->robots:Ljava/util/List;

    return-object v0
.end method
