.class Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
.super Ljava/lang/Object;
.source "InterpolatingMicrosphere.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FacetData"
.end annotation


# instance fields
.field private final illumination:D

.field private final sample:D


# direct methods
.method constructor <init>(DD)V
    .locals 1
    .param p1, "illumination"    # D
    .param p3, "sample"    # D

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination:D

    .line 366
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample:D

    .line 367
    return-void
.end method


# virtual methods
.method public illumination()D
    .locals 2

    .prologue
    .line 374
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination:D

    return-wide v0
.end method

.method public sample()D
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample:D

    return-wide v0
.end method
