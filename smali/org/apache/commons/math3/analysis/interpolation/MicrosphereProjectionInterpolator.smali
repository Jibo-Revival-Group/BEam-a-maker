.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;
.super Ljava/lang/Object;
.source "MicrosphereProjectionInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/MultivariateInterpolator;


# instance fields
.field private final exponent:D

.field private final microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

.field private final noInterpolationTolerance:D

.field private final sharedSphere:Z


# direct methods
.method public constructor <init>(IIDDDDZD)V
    .locals 11
    .param p1, "dimension"    # I
    .param p2, "elements"    # I
    .param p3, "maxDarkFraction"    # D
    .param p5, "darkThreshold"    # D
    .param p7, "background"    # D
    .param p9, "exponent"    # D
    .param p11, "sharedSphere"    # Z
    .param p12, "noInterpolationTolerance"    # D

    .prologue
    .line 80
    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    new-instance v10, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;

    invoke-direct {v10, p1}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;-><init>(I)V

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDDLorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V

    move-object v0, p0

    move-wide/from16 v2, p9

    move/from16 v4, p11

    move-wide/from16 v5, p12

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;DZD)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;DZD)V
    .locals 2
    .param p1, "microsphere"    # Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    .param p2, "exponent"    # D
    .param p4, "sharedSphere"    # Z
    .param p5, "noInterpolationTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_0

    .line 112
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 115
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    .line 116
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->exponent:D

    .line 117
    iput-boolean p4, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->sharedSphere:Z

    .line 118
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->noInterpolationTolerance:D

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->exponent:D

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->noInterpolationTolerance:D

    return-wide v0
.end method


# virtual methods
.method public interpolate([[D[D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 5
    .param p1, "xval"    # [[D
    .param p2, "yval"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 132
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 134
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v2

    .line 136
    :cond_1
    array-length v2, p1

    if-nez v2, :cond_2

    .line 137
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v2

    .line 139
    :cond_2
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_3

    .line 140
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    array-length v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 142
    :cond_3
    aget-object v2, p1, v4

    if-nez v2, :cond_4

    .line 143
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v2

    .line 145
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->getDimension()I

    move-result v0

    .line 146
    .local v0, "dimension":I
    aget-object v2, p1, v4

    array-length v2, v2

    if-eq v0, v2, :cond_5

    .line 147
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v3, p1, v4

    array-length v3, v3

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 151
    :cond_5
    iget-boolean v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->sharedSphere:Z

    if-eqz v2, :cond_6

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    .line 153
    .local v1, "m":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;

    invoke-direct {v2, p0, v1, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;[[D[D)V

    return-object v2

    .line 151
    .end local v1    # "m":Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    move-result-object v1

    goto :goto_0
.end method
