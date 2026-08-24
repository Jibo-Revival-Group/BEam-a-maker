.class public Lcom/jibo/apptoolkit/protocol/utils/Commons$InvalidParameterValueException;
.super Ljava/lang/Throwable;
.source "Commons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/utils/Commons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidParameterValueException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
