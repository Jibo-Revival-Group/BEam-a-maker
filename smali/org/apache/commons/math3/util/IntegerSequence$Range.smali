.class public Lorg/apache/commons/math3/util/IntegerSequence$Range;
.super Ljava/lang/Object;
.source "IntegerSequence.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/IntegerSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final max:I

.field private final size:I

.field private final start:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "max"    # I
    .param p3, "step"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->start:I

    .line 94
    iput p2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->max:I

    .line 95
    iput p3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->step:I

    .line 97
    sub-int v1, p2, p1

    div-int/2addr v1, p3

    add-int/lit8 v0, v1, 0x1

    .line 98
    .local v0, "s":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "s":I
    :cond_0
    iput v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->size:I

    .line 99
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->start:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->max:I

    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->step:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->step:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withIncrement(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->size:I

    return v0
.end method
