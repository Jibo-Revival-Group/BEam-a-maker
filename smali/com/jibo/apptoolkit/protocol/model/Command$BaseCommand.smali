.class public Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseCommand"
.end annotation


# instance fields
.field private Type:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;


# direct methods
.method private constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;)V
    .locals 0
    .param p1, "type"    # Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;->Type:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;Lcom/jibo/apptoolkit/protocol/model/Command$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .param p2, "x1"    # Lcom/jibo/apptoolkit/protocol/model/Command$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;-><init>(Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/model/Command$BaseCommand;->Type:Lcom/jibo/apptoolkit/protocol/model/Command$CommandType;

    return-object v0
.end method
