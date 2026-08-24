.class public Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
.super Ljava/lang/Object;
.source "IntegerSequence.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/IntegerSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Incrementor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALLBACK:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;


# instance fields
.field private count:I

.field private final increment:I

.field private final init:I

.field private final maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

.field private final maximalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$1;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$1;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->CALLBACK:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    return-void
.end method

.method private constructor <init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "max"    # I
    .param p3, "step"    # I
    .param p4, "cb"    # Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    .line 178
    if-nez p4, :cond_0

    .line 179
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->init:I

    .line 182
    iput p2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    .line 183
    iput p3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    .line 184
    iput-object p4, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    .line 185
    iput p1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    .line 186
    return-void
.end method

.method public static create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->CALLBACK:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    invoke-direct {v0, v3, v3, v1, v2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method


# virtual methods
.method public canIncrement()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->canIncrement(I)Z

    move-result v0

    return v0
.end method

.method public canIncrement(I)Z
    .locals 5
    .param p1, "nTimes"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    iget v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    iget v4, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    mul-int/2addr v4, p1

    add-int v0, v3, v4

    .line 298
    .local v0, "finalCount":I
    iget v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    if-gez v3, :cond_2

    iget v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    if-le v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    if-lt v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    return v0
.end method

.method public getMaximalCount()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->canIncrement(I)Z

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment(I)V

    .line 339
    return-void
.end method

.method public increment(I)V
    .locals 2
    .param p1, "nTimes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 313
    if-gtz p1, :cond_0

    .line 314
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 317
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->canIncrement(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;->trigger(I)V

    .line 320
    :cond_1
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    .line 321
    return-void
.end method

.method public next()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    .line 349
    .local v0, "value":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public withCallback(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4
    .param p1, "cb"    # Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    .prologue
    .line 253
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->init:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    iget v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method

.method public withIncrement(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4
    .param p1, "step"    # I

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v0

    .line 239
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->init:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    iget-object v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method

.method public withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4
    .param p1, "max"    # I

    .prologue
    .line 222
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->init:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    iget-object v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method

.method public withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4
    .param p1, "start"    # I

    .prologue
    .line 208
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    iget-object v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method
