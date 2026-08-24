.class abstract Lcom/segment/analytics/IntegrationOperation;
.super Ljava/lang/Object;
.source "IntegrationOperation.java"


# static fields
.field static final FLUSH:Lcom/segment/analytics/IntegrationOperation;

.field static final RESET:Lcom/segment/analytics/IntegrationOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$13;

    invoke-direct {v0}, Lcom/segment/analytics/IntegrationOperation$13;-><init>()V

    sput-object v0, Lcom/segment/analytics/IntegrationOperation;->FLUSH:Lcom/segment/analytics/IntegrationOperation;

    .line 284
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$14;

    invoke-direct {v0}, Lcom/segment/analytics/IntegrationOperation$14;-><init>()V

    sput-object v0, Lcom/segment/analytics/IntegrationOperation;->RESET:Lcom/segment/analytics/IntegrationOperation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/segment/analytics/IntegrationOperation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/segment/analytics/IntegrationOperation$1;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/segment/analytics/IntegrationOperation;-><init>()V

    return-void
.end method

.method static alias(Lcom/segment/analytics/integrations/AliasPayload;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "aliasPayload"    # Lcom/segment/analytics/integrations/AliasPayload;

    .prologue
    .line 256
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$12;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$12;-><init>(Lcom/segment/analytics/integrations/AliasPayload;)V

    return-object v0
.end method

.method static group(Lcom/segment/analytics/integrations/GroupPayload;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "groupPayload"    # Lcom/segment/analytics/integrations/GroupPayload;

    .prologue
    .line 151
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$9;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$9;-><init>(Lcom/segment/analytics/integrations/GroupPayload;)V

    return-object v0
.end method

.method static identify(Lcom/segment/analytics/integrations/IdentifyPayload;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "identifyPayload"    # Lcom/segment/analytics/integrations/IdentifyPayload;

    .prologue
    .line 135
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$8;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$8;-><init>(Lcom/segment/analytics/integrations/IdentifyPayload;)V

    return-object v0
.end method

.method static isIntegrationEnabled(Lcom/segment/analytics/ValueMap;Ljava/lang/String;)Z
    .locals 3
    .param p0, "integrations"    # Lcom/segment/analytics/ValueMap;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-static {p0}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    const-string v2, "Segment.io"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x1

    .line 27
    .local v0, "enabled":Z
    invoke-virtual {p0, p1}, Lcom/segment/analytics/ValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/segment/analytics/ValueMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 29
    :cond_3
    const-string v2, "All"

    invoke-virtual {p0, v2}, Lcom/segment/analytics/ValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "All"

    invoke-virtual {p0, v2, v1}, Lcom/segment/analytics/ValueMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$1;

    invoke-direct {v0, p0, p1}, Lcom/segment/analytics/IntegrationOperation$1;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static onActivityDestroyed(Landroid/app/Activity;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$7;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$7;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static onActivityPaused(Landroid/app/Activity;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$4;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$4;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static onActivityResumed(Landroid/app/Activity;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$3;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$3;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 107
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$6;

    invoke-direct {v0, p0, p1}, Lcom/segment/analytics/IntegrationOperation$6;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static onActivityStarted(Landroid/app/Activity;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$2;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$2;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static onActivityStopped(Landroid/app/Activity;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$5;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$5;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static screen(Lcom/segment/analytics/integrations/ScreenPayload;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "screenPayload"    # Lcom/segment/analytics/integrations/ScreenPayload;

    .prologue
    .line 240
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$11;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$11;-><init>(Lcom/segment/analytics/integrations/ScreenPayload;)V

    return-object v0
.end method

.method static track(Lcom/segment/analytics/integrations/TrackPayload;)Lcom/segment/analytics/IntegrationOperation;
    .locals 1
    .param p0, "trackPayload"    # Lcom/segment/analytics/integrations/TrackPayload;

    .prologue
    .line 167
    new-instance v0, Lcom/segment/analytics/IntegrationOperation$10;

    invoke-direct {v0, p0}, Lcom/segment/analytics/IntegrationOperation$10;-><init>(Lcom/segment/analytics/integrations/TrackPayload;)V

    return-object v0
.end method


# virtual methods
.method abstract run(Ljava/lang/String;Lcom/segment/analytics/integrations/Integration;Lcom/segment/analytics/ProjectSettings;)V
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
.end method
