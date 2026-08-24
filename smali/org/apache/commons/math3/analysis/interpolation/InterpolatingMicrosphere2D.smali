.class public Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;
.super Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.source "InterpolatingMicrosphere2D.java"


# static fields
.field private static final DIMENSION:I = 0x2


# direct methods
.method public constructor <init>(IDDD)V
    .locals 12
    .param p1, "size"    # I
    .param p2, "maxDarkFraction"    # D
    .param p4, "darkThreshold"    # D
    .param p6, "background"    # D

    .prologue
    .line 57
    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDD)V

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 61
    int-to-double v2, v0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    int-to-double v4, p1

    div-double v10, v2, v4

    .line 63
    .local v10, "angle":D
    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;->add([DZ)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v10    # "angle":D
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;)V
    .locals 0
    .param p1, "other"    # Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V

    .line 76
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;->copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;

    move-result-object v0

    return-object v0
.end method
