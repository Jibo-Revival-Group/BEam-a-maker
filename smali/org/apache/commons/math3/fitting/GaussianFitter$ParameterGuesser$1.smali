.class Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;
.super Ljava/lang/Object;
.source "GaussianFitter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;->this$0:Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 187
    check-cast p1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    check-cast p2, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;->compare(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I
    .locals 10
    .param p1, "p1"    # Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .param p2, "p2"    # Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 191
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 194
    :cond_1
    if-nez p1, :cond_2

    move v3, v4

    .line 195
    goto :goto_0

    .line 197
    :cond_2
    if-nez p2, :cond_3

    move v3, v5

    .line 198
    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    .line 201
    .local v1, "cmpX":I
    if-gez v1, :cond_4

    move v3, v4

    .line 202
    goto :goto_0

    .line 204
    :cond_4
    if-lez v1, :cond_5

    move v3, v5

    .line 205
    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    .line 208
    .local v2, "cmpY":I
    if-gez v2, :cond_6

    move v3, v4

    .line 209
    goto :goto_0

    .line 211
    :cond_6
    if-lez v2, :cond_7

    move v3, v5

    .line 212
    goto :goto_0

    .line 214
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 215
    .local v0, "cmpW":I
    if-gez v0, :cond_8

    move v3, v4

    .line 216
    goto :goto_0

    .line 218
    :cond_8
    if-lez v0, :cond_0

    move v3, v5

    .line 219
    goto :goto_0
.end method
