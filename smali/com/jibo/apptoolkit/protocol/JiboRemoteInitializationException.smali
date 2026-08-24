.class public Lcom/jibo/apptoolkit/protocol/JiboRemoteInitializationException;
.super Ljava/lang/Exception;
.source "JiboRemoteInitializationException.java"


# static fields
.field public static final ERROR_CONTEXT_MUST_BE_PROVIDED:Ljava/lang/String; = "Context must be provided!"

.field public static final ERROR_INVALID_INIT_INPUT:Ljava/lang/String; = "Please initialize properly with all fields filled in"

.field public static final ERROR_JIBO_REMOTE_CONTROL_NOT_INITIALIZED:Ljava/lang/String; = "Please initialize JiboRemoteControl properly before using!"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
