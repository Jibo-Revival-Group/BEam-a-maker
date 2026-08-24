.class public Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.super Ljava/lang/Object;
.source "InterpolatingMicrosphere.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;,
        Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;
    }
.end annotation


# instance fields
.field private final background:D

.field private final darkThreshold:D

.field private final dimension:I

.field private final maxDarkFraction:D

.field private final microsphere:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;",
            ">;"
        }
    .end annotation
.end field

.field private final microsphereData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method protected constructor <init>(IIDDD)V
    .locals 5
    .param p1, "dimension"    # I
    .param p2, "size"    # I
    .param p3, "maxDarkFraction"    # D
    .param p5, "darkThreshold"    # D
    .param p7, "background"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-gtz p1, :cond_0

    .line 78
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 80
    :cond_0
    if-gtz p2, :cond_1

    .line 81
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 83
    :cond_1
    cmpg-double v0, p3, v2

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    .line 85
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 87
    :cond_3
    cmpg-double v0, p5, v2

    if-gez v0, :cond_4

    .line 88
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 91
    :cond_4
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    .line 92
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    .line 93
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    .line 94
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    .line 95
    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    .line 98
    return-void
.end method

.method public constructor <init>(IIDDDLorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V
    .locals 3
    .param p1, "dimension"    # I
    .param p2, "size"    # I
    .param p3, "maxDarkFraction"    # D
    .param p5, "darkThreshold"    # D
    .param p7, "background"    # D
    .param p9, "rand"    # Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;

    .prologue
    .line 128
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDD)V

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 133
    invoke-virtual {p9}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->nextVector()[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->add([DZ)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V
    .locals 8
    .param p1, "other"    # Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iget v2, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    iput v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    .line 144
    iget v2, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    iput v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    .line 145
    iget-wide v2, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    .line 146
    iget-wide v2, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    .line 147
    iget-wide v2, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    .line 150
    iget-object v2, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    iput-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    .line 154
    iget-object v2, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    .line 155
    .local v0, "fd":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v0    # "fd":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
    :cond_0
    return-void
.end method

.method private clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-ge v0, v1, :cond_0

    .line 322
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-direct {v2, v4, v5, v4, v5}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method private illuminate([DDD)V
    .locals 8
    .param p1, "sampleDirection"    # [D
    .param p2, "sampleValue"    # D
    .param p4, "weight"    # D

    .prologue
    .line 302
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-ge v2, v6, :cond_1

    .line 303
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;->getNormal()[D

    move-result-object v3

    .line 304
    .local v3, "n":[D
    invoke-static {v3, p1}, Lorg/apache/commons/math3/util/MathArrays;->cosAngle([D[D)D

    move-result-wide v0

    .line 306
    .local v0, "cos":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    .line 307
    mul-double v4, v0, p4

    .line 309
    .local v4, "illumination":D
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 311
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-direct {v7, v4, v5, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v6, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v4    # "illumination":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "cos":D
    .end local v3    # "n":[D
    :cond_1
    return-void
.end method

.method private interpolate()D
    .locals 18

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, "darkCount":I
    const-wide/16 v12, 0x0

    .line 273
    .local v12, "value":D
    const-wide/16 v10, 0x0

    .line 274
    .local v10, "totalWeight":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    .line 275
    .local v3, "fd":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v8

    .line 276
    .local v8, "iV":D
    const-wide/16 v14, 0x0

    cmpl-double v7, v8, v14

    if-eqz v7, :cond_0

    .line 277
    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample()D

    move-result-wide v14

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    .line 278
    add-double/2addr v10, v8

    goto :goto_0

    .line 280
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v3    # "fd":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
    .end local v8    # "iV":D
    :cond_1
    int-to-double v14, v2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 286
    .local v4, "darkFraction":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    cmpg-double v7, v4, v14

    if-gtz v7, :cond_2

    div-double v14, v12, v10

    :goto_1
    return-wide v14

    :cond_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    goto :goto_1
.end method


# virtual methods
.method protected add([DZ)V
    .locals 6
    .param p1, "normal"    # [D
    .param p2, "copy"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-lt v0, v1, :cond_0

    .line 252
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 254
    :cond_0
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    if-le v0, v1, :cond_1

    .line 255
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 258
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    invoke-direct {v2, v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;-><init>([D)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-direct {v1, v4, v5, v4, v5}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    return-void

    :cond_2
    move-object v0, p1

    .line 258
    goto :goto_0
.end method

.method public copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    return v0
.end method

.method public value([D[[D[DDD)D
    .locals 10
    .param p1, "point"    # [D
    .param p2, "samplePoints"    # [[D
    .param p3, "sampleValues"    # [D
    .param p4, "exponent"    # D
    .param p6, "noInterpolationTolerance"    # D

    .prologue
    .line 211
    const-wide/16 v2, 0x0

    cmpg-double v0, p4, v2

    if-gez v0, :cond_0

    .line 212
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 215
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->clear()V

    .line 219
    array-length v9, p2

    .line 220
    .local v9, "numSamples":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_2

    .line 222
    aget-object v0, p2, v8

    invoke-static {v0, p1}, Lorg/apache/commons/math3/util/MathArrays;->ebeSubtract([D[D)[D

    move-result-object v1

    .line 223
    .local v1, "diff":[D
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->safeNorm([D)D

    move-result-wide v6

    .line 225
    .local v6, "diffNorm":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, p6

    if-gez v0, :cond_1

    .line 228
    aget-wide v2, p3, v8

    .line 235
    .end local v1    # "diff":[D
    .end local v6    # "diffNorm":D
    :goto_1
    return-wide v2

    .line 231
    .restart local v1    # "diff":[D
    .restart local v6    # "diffNorm":D
    :cond_1
    neg-double v2, p4

    invoke-static {v6, v7, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    .line 232
    .local v4, "weight":D
    aget-wide v2, p3, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->illuminate([DDD)V

    .line 220
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "diff":[D
    .end local v4    # "weight":D
    .end local v6    # "diffNorm":D
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->interpolate()D

    move-result-wide v2

    goto :goto_1
.end method
