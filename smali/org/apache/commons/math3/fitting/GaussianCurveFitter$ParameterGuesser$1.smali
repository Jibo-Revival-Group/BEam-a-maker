.class Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser$1;
.super Ljava/lang/Object;
.source "GaussianCurveFitter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;->sortObservations(Ljava/util/Collection;)Ljava/util/List;
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
.field final synthetic this$0:Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser$1;->this$0:Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 253
    check-cast p1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    check-cast p2, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fitting/GaussianCurveFitter$ParameterGuesser$1;->compare(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I

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

    .line 257
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v3

    .line 260
    :cond_1
    if-nez p1, :cond_2

    move v3, v4

    .line 261
    goto :goto_0

    .line 263
    :cond_2
    if-nez p2, :cond_3

    move v3, v5

    .line 264
    goto :goto_0

    .line 266
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    .line 267
    .local v1, "cmpX":I
    if-gez v1, :cond_4

    move v3, v4

    .line 268
    goto :goto_0

    .line 270
    :cond_4
    if-lez v1, :cond_5

    move v3, v5

    .line 271
    goto :goto_0

    .line 273
    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    .line 274
    .local v2, "cmpY":I
    if-gez v2, :cond_6

    move v3, v4

    .line 275
    goto :goto_0

    .line 277
    :cond_6
    if-lez v2, :cond_7

    move v3, v5

    .line 278
    goto :goto_0

    .line 280
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 281
    .local v0, "cmpW":I
    if-gez v0, :cond_8

    move v3, v4

    .line 282
    goto :goto_0

    .line 284
    :cond_8
    if-lez v0, :cond_0

    move v3, v5

    .line 285
    goto :goto_0
.end method
