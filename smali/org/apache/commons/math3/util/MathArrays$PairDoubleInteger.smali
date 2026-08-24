.class Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;
.super Ljava/lang/Object;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MathArrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairDoubleInteger"
.end annotation


# instance fields
.field private final key:D

.field private final value:I


# direct methods
.method constructor <init>(DI)V
    .locals 1
    .param p1, "key"    # D
    .param p3, "value"    # I

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-wide p1, p0, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->key:D

    .line 769
    iput p3, p0, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->value:I

    .line 770
    return-void
.end method


# virtual methods
.method public getKey()D
    .locals 2

    .prologue
    .line 774
    iget-wide v0, p0, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->key:D

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->value:I

    return v0
.end method
