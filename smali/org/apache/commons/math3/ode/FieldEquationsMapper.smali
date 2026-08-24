.class public Lorg/apache/commons/math3/ode/FieldEquationsMapper;
.super Ljava/lang/Object;
.source "FieldEquationsMapper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337b4aL


# instance fields
.field private final start:[I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V
    .locals 5
    .param p2, "dimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    move v0, v1

    .line 56
    .local v0, "index":I
    :goto_0
    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    .line 57
    if-nez p1, :cond_1

    .line 58
    iget-object v2, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    aput v1, v2, v1

    .line 62
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    aget v3, v3, v0

    add-int/2addr v3, p2

    aput v3, v1, v2

    .line 63
    return-void

    .line 55
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v0

    goto :goto_0

    .line 60
    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p1, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    iget-object v3, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method private checkIndex(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    const/4 v4, 0x0

    .line 197
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    if-le p1, v0, :cond_1

    .line 198
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARGUMENT_OUTSIDE_DOMAIN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "complete":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v6, 0x0

    .line 156
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->checkIndex(I)V

    .line 157
    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    aget v0, v4, p1

    .line 158
    .local v0, "begin":I
    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    add-int/lit8 v5, p1, 0x1

    aget v2, v4, v5

    .line 159
    .local v2, "end":I
    array-length v4, p2

    if-ge v4, v2, :cond_0

    .line 160
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, p2

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 162
    :cond_0
    sub-int v1, v2, v0

    .line 163
    .local v1, "dimension":I
    aget-object v4, p2, v6

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    .line 164
    .local v3, "equationData":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-static {p2, v0, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v3
.end method

.method public getNumberOfEquations()I
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getTotalDimension()I
    .locals 2

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "equationData":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "complete":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->checkIndex(I)V

    .line 179
    iget-object v3, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    aget v0, v3, p1

    .line 180
    .local v0, "begin":I
    iget-object v3, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    add-int/lit8 v4, p1, 0x1

    aget v2, v3, v4

    .line 181
    .local v2, "end":I
    sub-int v1, v2, v0

    .line 182
    .local v1, "dimension":I
    array-length v3, p3

    if-ge v3, v2, :cond_0

    .line 183
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, p3

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 185
    :cond_0
    array-length v3, p2

    if-eq v3, v1, :cond_1

    .line 186
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, p2

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 188
    :cond_1
    const/4 v3, 0x0

    invoke-static {p2, v3, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    return-void
.end method

.method public mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p1, "state":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/RealFieldElement;

    .line 102
    .local v1, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    .line 103
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getDerivative()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 104
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getSecondaryDerivative(I)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0

    .line 107
    :cond_0
    return-object v1
.end method

.method public mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEState",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p1, "state":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/RealFieldElement;

    .line 88
    .local v1, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    .line 89
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 90
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getSecondaryState(I)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0

    .line 93
    :cond_0
    return-object v1
.end method

.method public mapStateAndDerivative(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p1, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v8, -0x1

    .line 120
    array-length v0, p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 121
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v8

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 124
    :cond_0
    array-length v0, p3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 125
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v8

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v7

    .line 129
    .local v7, "n":I
    const/4 v6, 0x0

    .line 130
    .local v6, "index":I
    invoke-virtual {p0, v6, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 131
    .local v2, "state":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {p0, v6, p3}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 132
    .local v3, "derivative":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x2

    if-ge v7, v0, :cond_2

    .line 133
    new-instance v0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v0, p1, v2, v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 141
    :goto_0
    return-object v0

    .line 135
    :cond_2
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    add-int/lit8 v1, v7, -0x1

    invoke-static {v0, v1, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 136
    .local v4, "secondaryState":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    add-int/lit8 v1, v7, -0x1

    invoke-static {v0, v1, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 137
    .local v5, "secondaryDerivative":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 138
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v6, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v4, v0

    .line 139
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v6, p3}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v5, v0

    goto :goto_1

    .line 141
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0
.end method
