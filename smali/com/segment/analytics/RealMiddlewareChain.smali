.class Lcom/segment/analytics/RealMiddlewareChain;
.super Ljava/lang/Object;
.source "RealMiddlewareChain.java"

# interfaces
.implements Lcom/segment/analytics/Middleware$Chain;


# instance fields
.field private final analytics:Lcom/segment/analytics/Analytics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private index:I

.field private final middlewares:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/segment/analytics/Middleware;",
            ">;"
        }
    .end annotation
.end field

.field private final payload:Lcom/segment/analytics/integrations/BasePayload;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/segment/analytics/integrations/BasePayload;Ljava/util/List;Lcom/segment/analytics/Analytics;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "payload"    # Lcom/segment/analytics/integrations/BasePayload;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "analytics"    # Lcom/segment/analytics/Analytics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/segment/analytics/integrations/BasePayload;",
            "Ljava/util/List",
            "<",
            "Lcom/segment/analytics/Middleware;",
            ">;",
            "Lcom/segment/analytics/Analytics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, "middlewares":Ljava/util/List;, "Ljava/util/List<Lcom/segment/analytics/Middleware;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/segment/analytics/RealMiddlewareChain;->index:I

    .line 20
    iput-object p2, p0, Lcom/segment/analytics/RealMiddlewareChain;->payload:Lcom/segment/analytics/integrations/BasePayload;

    .line 21
    iput-object p3, p0, Lcom/segment/analytics/RealMiddlewareChain;->middlewares:Ljava/util/List;

    .line 22
    iput-object p4, p0, Lcom/segment/analytics/RealMiddlewareChain;->analytics:Lcom/segment/analytics/Analytics;

    .line 23
    return-void
.end method


# virtual methods
.method public payload()Lcom/segment/analytics/integrations/BasePayload;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/segment/analytics/RealMiddlewareChain;->payload:Lcom/segment/analytics/integrations/BasePayload;

    return-object v0
.end method

.method public proceed(Lcom/segment/analytics/integrations/BasePayload;)V
    .locals 4
    .param p1, "payload"    # Lcom/segment/analytics/integrations/BasePayload;

    .prologue
    .line 33
    iget v1, p0, Lcom/segment/analytics/RealMiddlewareChain;->index:I

    iget-object v2, p0, Lcom/segment/analytics/RealMiddlewareChain;->middlewares:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 34
    new-instance v0, Lcom/segment/analytics/RealMiddlewareChain;

    iget v1, p0, Lcom/segment/analytics/RealMiddlewareChain;->index:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/segment/analytics/RealMiddlewareChain;->middlewares:Ljava/util/List;

    iget-object v3, p0, Lcom/segment/analytics/RealMiddlewareChain;->analytics:Lcom/segment/analytics/Analytics;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/segment/analytics/RealMiddlewareChain;-><init>(ILcom/segment/analytics/integrations/BasePayload;Ljava/util/List;Lcom/segment/analytics/Analytics;)V

    .line 35
    .local v0, "chain":Lcom/segment/analytics/Middleware$Chain;
    iget-object v1, p0, Lcom/segment/analytics/RealMiddlewareChain;->middlewares:Ljava/util/List;

    iget v2, p0, Lcom/segment/analytics/RealMiddlewareChain;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/segment/analytics/Middleware;

    invoke-interface {v1, v0}, Lcom/segment/analytics/Middleware;->intercept(Lcom/segment/analytics/Middleware$Chain;)V

    .line 41
    .end local v0    # "chain":Lcom/segment/analytics/Middleware$Chain;
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/segment/analytics/RealMiddlewareChain;->analytics:Lcom/segment/analytics/Analytics;

    invoke-virtual {v1, p1}, Lcom/segment/analytics/Analytics;->run(Lcom/segment/analytics/integrations/BasePayload;)V

    goto :goto_0
.end method
