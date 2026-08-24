.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
.super Ljava/lang/Object;
.source "ArcsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Split"
.end annotation


# instance fields
.field private final minus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

.field private final plus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V
    .locals 0
    .param p1, "plus"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p2, "minus"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->plus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    .line 894
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->minus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    .line 895
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p2, "x1"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .param p3, "x2"    # Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$1;

    .prologue
    .line 878
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V

    return-void
.end method


# virtual methods
.method public getMinus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->minus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->plus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    return-object v0
.end method

.method public getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->plus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->minus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    if-eqz v0, :cond_0

    .line 922
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 929
    :goto_0
    return-object v0

    .line 924
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    .line 926
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->minus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    if-eqz v0, :cond_2

    .line 927
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    .line 929
    :cond_2
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0
.end method
