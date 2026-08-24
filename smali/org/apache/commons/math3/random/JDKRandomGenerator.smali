.class public Lorg/apache/commons/math3/random/JDKRandomGenerator;
.super Ljava/util/Random;
.source "JDKRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# static fields
.field private static final serialVersionUID:J = -0x6b7cc0d4328bbc7eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "seed"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/JDKRandomGenerator;->setSeed(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public setSeed(I)V
    .locals 2
    .param p1, "seed"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/JDKRandomGenerator;->setSeed(J)V

    .line 52
    return-void
.end method

.method public setSeed([I)V
    .locals 2
    .param p1, "seed"    # [I

    .prologue
    .line 56
    invoke-static {p1}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->convertToLong([I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/JDKRandomGenerator;->setSeed(J)V

    .line 57
    return-void
.end method
