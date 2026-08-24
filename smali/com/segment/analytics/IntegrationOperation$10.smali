.class final Lcom/segment/analytics/IntegrationOperation$10;
.super Lcom/segment/analytics/IntegrationOperation;
.source "IntegrationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/segment/analytics/IntegrationOperation;->track(Lcom/segment/analytics/integrations/TrackPayload;)Lcom/segment/analytics/IntegrationOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;


# direct methods
.method constructor <init>(Lcom/segment/analytics/integrations/TrackPayload;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/segment/analytics/IntegrationOperation;-><init>(Lcom/segment/analytics/IntegrationOperation$1;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;Lcom/segment/analytics/integrations/Integration;Lcom/segment/analytics/ProjectSettings;)V
    .locals 11
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
    .local p2, "integration":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<*>;"
    const/4 v10, 0x1

    .line 170
    iget-object v9, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {v9}, Lcom/segment/analytics/integrations/TrackPayload;->integrations()Lcom/segment/analytics/ValueMap;

    move-result-object v5

    .line 172
    .local v5, "integrationOptions":Lcom/segment/analytics/ValueMap;
    invoke-virtual {p3}, Lcom/segment/analytics/ProjectSettings;->trackingPlan()Lcom/segment/analytics/ValueMap;

    move-result-object v8

    .line 173
    .local v8, "trackingPlan":Lcom/segment/analytics/ValueMap;
    invoke-static {v8}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 175
    invoke-static {v5, p1}, Lcom/segment/analytics/IntegrationOperation$10;->isIntegrationEnabled(Lcom/segment/analytics/ValueMap;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 176
    iget-object v9, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {p2, v9}, Lcom/segment/analytics/integrations/Integration;->track(Lcom/segment/analytics/integrations/TrackPayload;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v9, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {v9}, Lcom/segment/analytics/integrations/TrackPayload;->event()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "event":Ljava/lang/String;
    invoke-virtual {v8, v2}, Lcom/segment/analytics/ValueMap;->getValueMap(Ljava/lang/Object;)Lcom/segment/analytics/ValueMap;

    move-result-object v4

    .line 184
    .local v4, "eventPlan":Lcom/segment/analytics/ValueMap;
    invoke-static {v4}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 185
    invoke-static {v5}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 187
    invoke-static {v5, p1}, Lcom/segment/analytics/IntegrationOperation$10;->isIntegrationEnabled(Lcom/segment/analytics/ValueMap;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 188
    iget-object v9, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {p2, v9}, Lcom/segment/analytics/integrations/Integration;->track(Lcom/segment/analytics/integrations/TrackPayload;)V

    goto :goto_0

    .line 194
    :cond_2
    const-string v9, "__default"

    invoke-virtual {v8, v9}, Lcom/segment/analytics/ValueMap;->getValueMap(Ljava/lang/Object;)Lcom/segment/analytics/ValueMap;

    move-result-object v1

    .line 197
    .local v1, "defaultPlan":Lcom/segment/analytics/ValueMap;
    invoke-static {v1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 198
    iget-object v9, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {p2, v9}, Lcom/segment/analytics/integrations/Integration;->track(Lcom/segment/analytics/integrations/TrackPayload;)V

    goto :goto_0

    .line 203
    :cond_3
    const-string v9, "enabled"

    invoke-virtual {v1, v9, v10}, Lcom/segment/analytics/ValueMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 204
    .local v0, "defaultEventsEnabled":Z
    if-nez v0, :cond_4

    const-string v9, "Segment.io"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 205
    :cond_4
    iget-object v9, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {p2, v9}, Lcom/segment/analytics/integrations/Integration;->track(Lcom/segment/analytics/integrations/TrackPayload;)V

    goto :goto_0

    .line 212
    .end local v0    # "defaultEventsEnabled":Z
    .end local v1    # "defaultPlan":Lcom/segment/analytics/ValueMap;
    :cond_5
    const-string v9, "enabled"

    invoke-virtual {v4, v9, v10}, Lcom/segment/analytics/ValueMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 213
    .local v7, "isEnabled":Z
    if-nez v7, :cond_6

    .line 215
    const-string v9, "Segment.io"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 216
    iget-object v9, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {p2, v9}, Lcom/segment/analytics/integrations/Integration;->track(Lcom/segment/analytics/integrations/TrackPayload;)V

    goto :goto_0

    .line 221
    :cond_6
    new-instance v6, Lcom/segment/analytics/ValueMap;

    invoke-direct {v6}, Lcom/segment/analytics/ValueMap;-><init>()V

    .line 222
    .local v6, "integrations":Lcom/segment/analytics/ValueMap;
    const-string v9, "integrations"

    invoke-virtual {v4, v9}, Lcom/segment/analytics/ValueMap;->getValueMap(Ljava/lang/Object;)Lcom/segment/analytics/ValueMap;

    move-result-object v3

    .line 223
    .local v3, "eventIntegrations":Lcom/segment/analytics/ValueMap;
    invoke-static {v3}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 224
    invoke-virtual {v6, v3}, Lcom/segment/analytics/ValueMap;->putAll(Ljava/util/Map;)V

    .line 226
    :cond_7
    invoke-virtual {v6, v5}, Lcom/segment/analytics/ValueMap;->putAll(Ljava/util/Map;)V

    .line 227
    invoke-static {v6, p1}, Lcom/segment/analytics/IntegrationOperation$10;->isIntegrationEnabled(Lcom/segment/analytics/ValueMap;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 228
    iget-object v9, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {p2, v9}, Lcom/segment/analytics/integrations/Integration;->track(Lcom/segment/analytics/integrations/TrackPayload;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/segment/analytics/IntegrationOperation$10;->val$trackPayload:Lcom/segment/analytics/integrations/TrackPayload;

    invoke-virtual {v0}, Lcom/segment/analytics/integrations/TrackPayload;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
