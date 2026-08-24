.class final Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$1;
.super Ljava/lang/Object;
.source "IntegerSequence.java"

# interfaces
.implements Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trigger(I)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
