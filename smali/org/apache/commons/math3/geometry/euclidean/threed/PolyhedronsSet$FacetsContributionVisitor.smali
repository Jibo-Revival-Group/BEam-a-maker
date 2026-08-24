.class Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;
.super Ljava/lang/Object;
.source "PolyhedronsSet.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacetsContributionVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 446
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-static {p1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V

    .line 448
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    invoke-static {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V

    .line 449
    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V
    .locals 12
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v10

    .line 480
    .local v10, "polygon":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface {v10}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v8

    .line 482
    .local v8, "area":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V

    .line 484
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$300(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V

    .line 499
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 488
    .local v7, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-interface {v10}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 489
    .local v6, "facetB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    mul-double v4, v8, v0

    .line 490
    .local v4, "scaled":D
    if-eqz p2, :cond_1

    .line 491
    neg-double v4, v4

    .line 494
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$400(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V

    .line 495
    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-static {v11, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->access$500(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0
.end method


# virtual methods
.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 461
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 464
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 467
    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
