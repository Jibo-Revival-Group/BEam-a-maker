.class final Lcom/segment/analytics/IntegrationOperation$3;
.super Lcom/segment/analytics/IntegrationOperation;
.source "IntegrationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/segment/analytics/IntegrationOperation;->onActivityResumed(Landroid/app/Activity;)Lcom/segment/analytics/IntegrationOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/segment/analytics/IntegrationOperation$3;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/segment/analytics/IntegrationOperation;-><init>(Lcom/segment/analytics/IntegrationOperation$1;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;Lcom/segment/analytics/integrations/Integration;Lcom/segment/analytics/ProjectSettings;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "projectSettings"    # Lcom/segment/analytics/ProjectSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/segment/analytics/integrations/Integration",
            "<*>;",
            "Lcom/segment/analytics/ProjectSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "integration":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<*>;"
    iget-object v0, p0, Lcom/segment/analytics/IntegrationOperation$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/segment/analytics/integrations/Integration;->onActivityResumed(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Activity Resumed"

    return-object v0
.end method
