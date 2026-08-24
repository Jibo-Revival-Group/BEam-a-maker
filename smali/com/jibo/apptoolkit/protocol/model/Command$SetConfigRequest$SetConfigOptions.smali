.class public Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetConfigOptions"
.end annotation


# instance fields
.field private mixer:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Mixer"
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "mixer"    # F

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$SetConfigRequest$SetConfigOptions;->mixer:F

    .line 457
    return-void
.end method
