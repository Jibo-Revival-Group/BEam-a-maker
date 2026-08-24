.class public Lorg/apache/commons/math3/util/Incrementor;
.super Ljava/lang/Object;
.source "Incrementor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private count:I

.field private final maxCountCallback:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

.field private maximalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 63
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor$1;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
    .locals 1
    .param p1, "max"    # I
    .param p2, "cb"    # Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    .line 82
    if-nez p2, :cond_0

    .line 83
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 85
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    .line 86
    iput-object p2, p0, Lorg/apache/commons/math3/util/Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    .line 87
    return-void
.end method

.method public static wrap(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)Lorg/apache/commons/math3/util/Incrementor;
    .locals 1
    .param p0, "incrementor"    # Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .prologue
    .line 202
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/Incrementor$2;-><init>(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)V

    return-object v0
.end method


# virtual methods
.method public canIncrement()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    return v0
.end method

.method public getMaximalCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    return v0
.end method

.method public incrementCount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 156
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    if-le v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lorg/apache/commons/math3/util/Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    iget v1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;->trigger(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public incrementCount(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public resetCount()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    .line 166
    return-void
.end method

.method public setMaximalCount(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    .line 98
    return-void
.end method
