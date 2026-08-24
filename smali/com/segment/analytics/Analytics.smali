.class public Lcom/segment/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/segment/analytics/Analytics$Builder;,
        Lcom/segment/analytics/Analytics$Callback;,
        Lcom/segment/analytics/Analytics$LogLevel;,
        Lcom/segment/analytics/Analytics$BundledIntegration;
    }
.end annotation


# static fields
.field private static final BUILD_KEY:Ljava/lang/String; = "build"

.field static final EMPTY_PROPERTIES:Lcom/segment/analytics/Properties;

.field static final HANDLER:Landroid/os/Handler;

.field static final INSTANCES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final OPT_OUT_PREFERENCE_KEY:Ljava/lang/String; = "opt-out"

.field private static final SETTINGS_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final SETTINGS_RETRY_INTERVAL:J = 0xea60L

.field private static final TRACKED_ATTRIBUTION_KEY:Ljava/lang/String; = "tracked_attribution"

.field private static final VERSION_KEY:Ljava/lang/String; = "version"

.field static final WRITE_KEY_RESOURCE_IDENTIFIER:Ljava/lang/String; = "analytics_write_key"

.field static volatile singleton:Lcom/segment/analytics/Analytics;


# instance fields
.field final activityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final advertisingIdLatch:Ljava/util/concurrent/CountDownLatch;

.field final analyticsContext:Lcom/segment/analytics/AnalyticsContext;

.field private final analyticsExecutor:Ljava/util/concurrent/ExecutorService;

.field private final application:Landroid/app/Application;

.field final bundledIntegrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final cartographer:Lcom/segment/analytics/Cartographer;

.field final client:Lcom/segment/analytics/Client;

.field final crypto:Lcom/segment/analytics/Crypto;

.field final defaultOptions:Lcom/segment/analytics/Options;

.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/segment/analytics/integrations/Integration$Factory;",
            ">;"
        }
    .end annotation
.end field

.field final flushIntervalInMillis:J

.field final flushQueueSize:I

.field private integrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/segment/analytics/integrations/Integration",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/segment/analytics/integrations/Logger;

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

.field final networkExecutor:Ljava/util/concurrent/ExecutorService;

.field private final optOut:Lcom/segment/analytics/BooleanPreference;

.field projectSettings:Lcom/segment/analytics/ProjectSettings;

.field private final projectSettingsCache:Lcom/segment/analytics/ProjectSettings$Cache;

.field volatile shutdown:Z

.field final stats:Lcom/segment/analytics/Stats;

.field final tag:Ljava/lang/String;

.field final traitsCache:Lcom/segment/analytics/Traits$Cache;

.field final writeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/segment/analytics/Analytics$1;

    .line 102
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/segment/analytics/Analytics$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/segment/analytics/Analytics;->HANDLER:Landroid/os/Handler;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/segment/analytics/Analytics;->INSTANCES:Ljava/util/List;

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/segment/analytics/Analytics;->singleton:Lcom/segment/analytics/Analytics;

    .line 112
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    sput-object v0, Lcom/segment/analytics/Analytics;->EMPTY_PROPERTIES:Lcom/segment/analytics/Properties;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Ljava/util/concurrent/ExecutorService;Lcom/segment/analytics/Stats;Lcom/segment/analytics/Traits$Cache;Lcom/segment/analytics/AnalyticsContext;Lcom/segment/analytics/Options;Lcom/segment/analytics/integrations/Logger;Ljava/lang/String;Ljava/util/List;Lcom/segment/analytics/Client;Lcom/segment/analytics/Cartographer;Lcom/segment/analytics/ProjectSettings$Cache;Ljava/lang/String;IJLjava/util/concurrent/ExecutorService;ZLjava/util/concurrent/CountDownLatch;ZZLcom/segment/analytics/BooleanPreference;Lcom/segment/analytics/Crypto;Ljava/util/List;)V
    .locals 9
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "networkExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "stats"    # Lcom/segment/analytics/Stats;
    .param p4, "traitsCache"    # Lcom/segment/analytics/Traits$Cache;
    .param p5, "analyticsContext"    # Lcom/segment/analytics/AnalyticsContext;
    .param p6, "defaultOptions"    # Lcom/segment/analytics/Options;
    .param p7, "logger"    # Lcom/segment/analytics/integrations/Logger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "tag"    # Ljava/lang/String;
    .param p9    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "client"    # Lcom/segment/analytics/Client;
    .param p11, "cartographer"    # Lcom/segment/analytics/Cartographer;
    .param p12, "projectSettingsCache"    # Lcom/segment/analytics/ProjectSettings$Cache;
    .param p13, "writeKey"    # Ljava/lang/String;
    .param p14, "flushQueueSize"    # I
    .param p15, "flushIntervalInMillis"    # J
    .param p17, "analyticsExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p18, "shouldTrackApplicationLifecycleEvents"    # Z
    .param p19, "advertisingIdLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p20, "shouldRecordScreenViews"    # Z
    .param p21, "trackAttributionInformation"    # Z
    .param p22, "optOut"    # Lcom/segment/analytics/BooleanPreference;
    .param p23, "crypto"    # Lcom/segment/analytics/Crypto;
    .param p24    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/segment/analytics/Stats;",
            "Lcom/segment/analytics/Traits$Cache;",
            "Lcom/segment/analytics/AnalyticsContext;",
            "Lcom/segment/analytics/Options;",
            "Lcom/segment/analytics/integrations/Logger;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/segment/analytics/integrations/Integration$Factory;",
            ">;",
            "Lcom/segment/analytics/Client;",
            "Lcom/segment/analytics/Cartographer;",
            "Lcom/segment/analytics/ProjectSettings$Cache;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/concurrent/ExecutorService;",
            "Z",
            "Ljava/util/concurrent/CountDownLatch;",
            "ZZ",
            "Lcom/segment/analytics/BooleanPreference;",
            "Lcom/segment/analytics/Crypto;",
            "Ljava/util/List",
            "<",
            "Lcom/segment/analytics/Middleware;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p9, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/segment/analytics/integrations/Integration$Factory;>;"
    .local p24, "middlewares":Ljava/util/List;, "Ljava/util/List<Lcom/segment/analytics/Middleware;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/segment/analytics/Analytics;->bundledIntegrations:Ljava/util/Map;

    .line 225
    iput-object p1, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    .line 226
    iput-object p2, p0, Lcom/segment/analytics/Analytics;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    .line 227
    iput-object p3, p0, Lcom/segment/analytics/Analytics;->stats:Lcom/segment/analytics/Stats;

    .line 228
    iput-object p4, p0, Lcom/segment/analytics/Analytics;->traitsCache:Lcom/segment/analytics/Traits$Cache;

    .line 229
    iput-object p5, p0, Lcom/segment/analytics/Analytics;->analyticsContext:Lcom/segment/analytics/AnalyticsContext;

    .line 230
    iput-object p6, p0, Lcom/segment/analytics/Analytics;->defaultOptions:Lcom/segment/analytics/Options;

    .line 231
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    .line 232
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->tag:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->client:Lcom/segment/analytics/Client;

    .line 234
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->cartographer:Lcom/segment/analytics/Cartographer;

    .line 235
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->projectSettingsCache:Lcom/segment/analytics/ProjectSettings$Cache;

    .line 236
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->writeKey:Ljava/lang/String;

    .line 237
    move/from16 v0, p14

    iput v0, p0, Lcom/segment/analytics/Analytics;->flushQueueSize:I

    .line 238
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/segment/analytics/Analytics;->flushIntervalInMillis:J

    .line 239
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->advertisingIdLatch:Ljava/util/concurrent/CountDownLatch;

    .line 240
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->optOut:Lcom/segment/analytics/BooleanPreference;

    .line 241
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->factories:Ljava/util/List;

    .line 242
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    .line 243
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->crypto:Lcom/segment/analytics/Crypto;

    .line 244
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/segment/analytics/Analytics;->middlewares:Ljava/util/List;

    .line 246
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->namespaceSharedPreferences()V

    .line 248
    new-instance v2, Lcom/segment/analytics/Analytics$2;

    invoke-direct {v2, p0}, Lcom/segment/analytics/Analytics$2;-><init>(Lcom/segment/analytics/Analytics;)V

    move-object/from16 v0, p17

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 282
    const-string v2, "Created analytics client for project with tag:%s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p8, v3, v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3}, Lcom/segment/analytics/integrations/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    new-instance v2, Lcom/segment/analytics/Analytics$3;

    move-object v3, p0

    move/from16 v4, p18

    move/from16 v5, p21

    move-object/from16 v6, p17

    move/from16 v7, p20

    invoke-direct/range {v2 .. v7}, Lcom/segment/analytics/Analytics$3;-><init>(Lcom/segment/analytics/Analytics;ZZLjava/util/concurrent/ExecutorService;Z)V

    iput-object v2, p0, Lcom/segment/analytics/Analytics;->activityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 340
    iget-object v2, p0, Lcom/segment/analytics/Analytics;->activityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 341
    return-void
.end method

.method private assertNotShutdown()V
    .locals 2

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/segment/analytics/Analytics;->shutdown:Z

    if-eqz v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enqueue messages after client is shutdown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_0
    return-void
.end method

.method private downloadSettings()Lcom/segment/analytics/ProjectSettings;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1387
    :try_start_0
    iget-object v2, p0, Lcom/segment/analytics/Analytics;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/segment/analytics/Analytics$12;

    invoke-direct {v3, p0}, Lcom/segment/analytics/Analytics$12;-><init>(Lcom/segment/analytics/Analytics;)V

    .line 1389
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 1403
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/segment/analytics/ProjectSettings;

    .line 1404
    .local v1, "projectSettings":Lcom/segment/analytics/ProjectSettings;
    iget-object v2, p0, Lcom/segment/analytics/Analytics;->projectSettingsCache:Lcom/segment/analytics/ProjectSettings$Cache;

    invoke-virtual {v2, v1}, Lcom/segment/analytics/ProjectSettings$Cache;->set(Lcom/segment/analytics/ValueMap;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1411
    .end local v1    # "projectSettings":Lcom/segment/analytics/ProjectSettings;
    :goto_0
    return-object v1

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v3, "Thread interrupted while fetching settings."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/segment/analytics/integrations/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1411
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1408
    :catch_1
    move-exception v0

    .line 1409
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v2, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v3, "Unable to fetch settings. Retrying in %s ms."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v0, v3, v4}, Lcom/segment/analytics/integrations/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 422
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private namespaceSharedPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1491
    iget-object v3, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    iget-object v4, p0, Lcom/segment/analytics/Analytics;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/segment/analytics/internal/Utils;->getSegmentSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1492
    .local v2, "newSharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/segment/analytics/BooleanPreference;

    const-string v3, "namespaceSharedPreferences"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/segment/analytics/BooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1495
    .local v1, "namespaceSharedPreferences":Lcom/segment/analytics/BooleanPreference;
    invoke-virtual {v1}, Lcom/segment/analytics/BooleanPreference;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1496
    iget-object v3, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    const-string v4, "analytics-android"

    .line 1497
    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1498
    .local v0, "legacySharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {v0, v2}, Lcom/segment/analytics/internal/Utils;->copySharedPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 1499
    invoke-virtual {v1, v5}, Lcom/segment/analytics/BooleanPreference;->set(Z)V

    .line 1501
    .end local v0    # "legacySharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setSingletonInstance(Lcom/segment/analytics/Analytics;)V
    .locals 3
    .param p0, "analytics"    # Lcom/segment/analytics/Analytics;

    .prologue
    .line 193
    const-class v1, Lcom/segment/analytics/Analytics;

    monitor-enter v1

    .line 194
    :try_start_0
    sget-object v0, Lcom/segment/analytics/Analytics;->singleton:Lcom/segment/analytics/Analytics;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Singleton instance already exists."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 197
    :cond_0
    :try_start_1
    sput-object p0, Lcom/segment/analytics/Analytics;->singleton:Lcom/segment/analytics/Analytics;

    .line 198
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    return-void
.end method

.method private waitForAdvertisingId()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->advertisingIdLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->advertisingIdLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v2, "Advertising ID may not be collected because the API did not respond within 15 seconds."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/segment/analytics/integrations/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    :cond_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v2, "Thread interrupted while waiting for advertising ID."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/segment/analytics/integrations/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static with(Landroid/content/Context;)Lcom/segment/analytics/Analytics;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 161
    sget-object v5, Lcom/segment/analytics/Analytics;->singleton:Lcom/segment/analytics/Analytics;

    if-nez v5, :cond_4

    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Context must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 165
    :cond_0
    const-class v6, Lcom/segment/analytics/Analytics;

    monitor-enter v6

    .line 166
    :try_start_0
    sget-object v5, Lcom/segment/analytics/Analytics;->singleton:Lcom/segment/analytics/Analytics;

    if-nez v5, :cond_3

    .line 167
    const-string v5, "analytics_write_key"

    invoke-static {p0, v5}, Lcom/segment/analytics/internal/Utils;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "writeKey":Ljava/lang/String;
    new-instance v0, Lcom/segment/analytics/Analytics$Builder;

    invoke-direct {v0, p0, v4}, Lcom/segment/analytics/Analytics$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .local v0, "builder":Lcom/segment/analytics/Analytics$Builder;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 173
    .local v2, "flags":I
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 174
    .local v1, "debugging":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 175
    sget-object v5, Lcom/segment/analytics/Analytics$LogLevel;->INFO:Lcom/segment/analytics/Analytics$LogLevel;

    invoke-virtual {v0, v5}, Lcom/segment/analytics/Analytics$Builder;->logLevel(Lcom/segment/analytics/Analytics$LogLevel;)Lcom/segment/analytics/Analytics$Builder;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v1    # "debugging":Z
    .end local v2    # "flags":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/segment/analytics/Analytics$Builder;->build()Lcom/segment/analytics/Analytics;

    move-result-object v5

    sput-object v5, Lcom/segment/analytics/Analytics;->singleton:Lcom/segment/analytics/Analytics;

    .line 182
    .end local v0    # "builder":Lcom/segment/analytics/Analytics$Builder;
    .end local v4    # "writeKey":Ljava/lang/String;
    :cond_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :cond_4
    sget-object v5, Lcom/segment/analytics/Analytics;->singleton:Lcom/segment/analytics/Analytics;

    return-object v5

    .line 182
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 177
    .restart local v0    # "builder":Lcom/segment/analytics/Analytics$Builder;
    .restart local v4    # "writeKey":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 1
    .param p1, "newId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/segment/analytics/Analytics;->alias(Ljava/lang/String;Lcom/segment/analytics/Options;)V

    .line 716
    return-void
.end method

.method public alias(Ljava/lang/String;Lcom/segment/analytics/Options;)V
    .locals 2
    .param p1, "newId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Lcom/segment/analytics/Options;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->assertNotShutdown()V

    .line 739
    invoke-static {p1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newId must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/segment/analytics/Analytics$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/segment/analytics/Analytics$9;-><init>(Lcom/segment/analytics/Analytics;Lcom/segment/analytics/Options;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 761
    return-void
.end method

.method enqueue(Lcom/segment/analytics/integrations/BasePayload;)V
    .locals 5
    .param p1, "payload"    # Lcom/segment/analytics/integrations/BasePayload;

    .prologue
    const/4 v4, 0x0

    .line 791
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->optOut:Lcom/segment/analytics/BooleanPreference;

    invoke-virtual {v1}, Lcom/segment/analytics/BooleanPreference;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v2, "Created payload %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/segment/analytics/integrations/Logger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    new-instance v0, Lcom/segment/analytics/RealMiddlewareChain;

    iget-object v1, p0, Lcom/segment/analytics/Analytics;->middlewares:Ljava/util/List;

    invoke-direct {v0, v4, p1, v1, p0}, Lcom/segment/analytics/RealMiddlewareChain;-><init>(ILcom/segment/analytics/integrations/BasePayload;Ljava/util/List;Lcom/segment/analytics/Analytics;)V

    .line 796
    .local v0, "chain":Lcom/segment/analytics/Middleware$Chain;
    invoke-interface {v0, p1}, Lcom/segment/analytics/Middleware$Chain;->proceed(Lcom/segment/analytics/integrations/BasePayload;)V

    goto :goto_0
.end method

.method fillAndEnqueue(Lcom/segment/analytics/integrations/BasePayload$Builder;Lcom/segment/analytics/Options;)V
    .locals 3
    .param p2, "options"    # Lcom/segment/analytics/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/segment/analytics/integrations/BasePayload$Builder",
            "<**>;",
            "Lcom/segment/analytics/Options;",
            ")V"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, "builder":Lcom/segment/analytics/integrations/BasePayload$Builder;, "Lcom/segment/analytics/integrations/BasePayload$Builder<**>;"
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->waitForAdvertisingId()V

    .line 779
    iget-object v2, p0, Lcom/segment/analytics/Analytics;->analyticsContext:Lcom/segment/analytics/AnalyticsContext;

    invoke-virtual {v2}, Lcom/segment/analytics/AnalyticsContext;->unmodifiableCopy()Lcom/segment/analytics/AnalyticsContext;

    move-result-object v0

    .line 780
    .local v0, "contextCopy":Lcom/segment/analytics/AnalyticsContext;
    invoke-virtual {p1, v0}, Lcom/segment/analytics/integrations/BasePayload$Builder;->context(Ljava/util/Map;)Lcom/segment/analytics/integrations/BasePayload$Builder;

    .line 781
    invoke-virtual {v0}, Lcom/segment/analytics/AnalyticsContext;->traits()Lcom/segment/analytics/Traits;

    move-result-object v2

    invoke-virtual {v2}, Lcom/segment/analytics/Traits;->anonymousId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/segment/analytics/integrations/BasePayload$Builder;->anonymousId(Ljava/lang/String;)Lcom/segment/analytics/integrations/BasePayload$Builder;

    .line 782
    invoke-virtual {p2}, Lcom/segment/analytics/Options;->integrations()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/segment/analytics/integrations/BasePayload$Builder;->integrations(Ljava/util/Map;)Lcom/segment/analytics/integrations/BasePayload$Builder;

    .line 783
    invoke-virtual {v0}, Lcom/segment/analytics/AnalyticsContext;->traits()Lcom/segment/analytics/Traits;

    move-result-object v2

    invoke-virtual {v2}, Lcom/segment/analytics/Traits;->userId()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "userId":Ljava/lang/String;
    invoke-static {v1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 785
    invoke-virtual {p1, v1}, Lcom/segment/analytics/integrations/BasePayload$Builder;->userId(Ljava/lang/String;)Lcom/segment/analytics/integrations/BasePayload$Builder;

    .line 787
    :cond_0
    invoke-virtual {p1}, Lcom/segment/analytics/integrations/BasePayload$Builder;->build()Lcom/segment/analytics/integrations/BasePayload;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/segment/analytics/Analytics;->enqueue(Lcom/segment/analytics/integrations/BasePayload;)V

    .line 788
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/segment/analytics/Analytics;->shutdown:Z

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enqueue messages after client is shutdown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_0
    sget-object v0, Lcom/segment/analytics/IntegrationOperation;->FLUSH:Lcom/segment/analytics/IntegrationOperation;

    invoke-virtual {p0, v0}, Lcom/segment/analytics/Analytics;->runOnMainThread(Lcom/segment/analytics/IntegrationOperation;)V

    .line 839
    return-void
.end method

.method public getAnalyticsContext()Lcom/segment/analytics/AnalyticsContext;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->analyticsContext:Lcom/segment/analytics/AnalyticsContext;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    return-object v0
.end method

.method public getLogLevel()Lcom/segment/analytics/Analytics$LogLevel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    iget-object v0, v0, Lcom/segment/analytics/integrations/Logger;->logLevel:Lcom/segment/analytics/Analytics$LogLevel;

    return-object v0
.end method

.method public getLogger()Lcom/segment/analytics/integrations/Logger;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    return-object v0
.end method

.method getSettings()Lcom/segment/analytics/ProjectSettings;
    .locals 8

    .prologue
    .line 1420
    iget-object v4, p0, Lcom/segment/analytics/Analytics;->projectSettingsCache:Lcom/segment/analytics/ProjectSettings$Cache;

    invoke-virtual {v4}, Lcom/segment/analytics/ProjectSettings$Cache;->get()Lcom/segment/analytics/ValueMap;

    move-result-object v0

    check-cast v0, Lcom/segment/analytics/ProjectSettings;

    .line 1421
    .local v0, "cachedSettings":Lcom/segment/analytics/ProjectSettings;
    invoke-static {v0}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1422
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->downloadSettings()Lcom/segment/analytics/ProjectSettings;

    move-result-object v0

    .line 1434
    .end local v0    # "cachedSettings":Lcom/segment/analytics/ProjectSettings;
    :cond_0
    :goto_0
    return-object v0

    .line 1425
    .restart local v0    # "cachedSettings":Lcom/segment/analytics/ProjectSettings;
    :cond_1
    invoke-virtual {v0}, Lcom/segment/analytics/ProjectSettings;->timestamp()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long v2, v4, v6

    .line 1426
    .local v2, "expirationTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 1430
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->downloadSettings()Lcom/segment/analytics/ProjectSettings;

    move-result-object v1

    .line 1431
    .local v1, "downloadedSettings":Lcom/segment/analytics/ProjectSettings;
    invoke-static {v1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v1

    .line 1434
    goto :goto_0
.end method

.method public getSnapshot()Lcom/segment/analytics/StatsSnapshot;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->stats:Lcom/segment/analytics/Stats;

    invoke-virtual {v0}, Lcom/segment/analytics/Stats;->createSnapshot()Lcom/segment/analytics/StatsSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public group(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0, p1, v0, v0}, Lcom/segment/analytics/Analytics;->group(Ljava/lang/String;Lcom/segment/analytics/Traits;Lcom/segment/analytics/Options;)V

    .line 528
    return-void
.end method

.method public group(Ljava/lang/String;Lcom/segment/analytics/Traits;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "traits"    # Lcom/segment/analytics/Traits;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/segment/analytics/Analytics;->group(Ljava/lang/String;Lcom/segment/analytics/Traits;Lcom/segment/analytics/Options;)V

    .line 533
    return-void
.end method

.method public group(Ljava/lang/String;Lcom/segment/analytics/Traits;Lcom/segment/analytics/Options;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "groupTraits"    # Lcom/segment/analytics/Traits;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "options"    # Lcom/segment/analytics/Options;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->assertNotShutdown()V

    .line 553
    invoke-static {p1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "groupId must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/segment/analytics/Analytics$6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/segment/analytics/Analytics$6;-><init>(Lcom/segment/analytics/Analytics;Lcom/segment/analytics/Traits;Lcom/segment/analytics/Options;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 580
    return-void
.end method

.method public identify(Lcom/segment/analytics/Traits;)V
    .locals 1
    .param p1, "traits"    # Lcom/segment/analytics/Traits;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0, v0, p1, v0}, Lcom/segment/analytics/Analytics;->identify(Ljava/lang/String;Lcom/segment/analytics/Traits;Lcom/segment/analytics/Options;)V

    .line 472
    return-void
.end method

.method public identify(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, p1, v0, v0}, Lcom/segment/analytics/Analytics;->identify(Ljava/lang/String;Lcom/segment/analytics/Traits;Lcom/segment/analytics/Options;)V

    .line 467
    return-void
.end method

.method public identify(Ljava/lang/String;Lcom/segment/analytics/Traits;Lcom/segment/analytics/Options;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "newTraits"    # Lcom/segment/analytics/Traits;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "options"    # Lcom/segment/analytics/Options;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->assertNotShutdown()V

    .line 492
    invoke-static {p1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Either userId or some traits must be provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->traitsCache:Lcom/segment/analytics/Traits$Cache;

    invoke-virtual {v1}, Lcom/segment/analytics/Traits$Cache;->get()Lcom/segment/analytics/ValueMap;

    move-result-object v0

    check-cast v0, Lcom/segment/analytics/Traits;

    .line 497
    .local v0, "traits":Lcom/segment/analytics/Traits;
    invoke-static {p1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    invoke-virtual {v0, p1}, Lcom/segment/analytics/Traits;->putUserId(Ljava/lang/String;)Lcom/segment/analytics/Traits;

    .line 500
    :cond_1
    invoke-static {p2}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    invoke-virtual {v0, p2}, Lcom/segment/analytics/Traits;->putAll(Ljava/util/Map;)V

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->traitsCache:Lcom/segment/analytics/Traits$Cache;

    invoke-virtual {v1, v0}, Lcom/segment/analytics/Traits$Cache;->set(Lcom/segment/analytics/ValueMap;)V

    .line 505
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->analyticsContext:Lcom/segment/analytics/AnalyticsContext;

    invoke-virtual {v1, v0}, Lcom/segment/analytics/AnalyticsContext;->setTraits(Lcom/segment/analytics/Traits;)V

    .line 507
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/segment/analytics/Analytics$5;

    invoke-direct {v2, p0, p3}, Lcom/segment/analytics/Analytics$5;-><init>(Lcom/segment/analytics/Analytics;Lcom/segment/analytics/Options;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 523
    return-void
.end method

.method public logger(Ljava/lang/String;)Lcom/segment/analytics/integrations/Logger;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    invoke-virtual {v0, p1}, Lcom/segment/analytics/integrations/Logger;->subLog(Ljava/lang/String;)Lcom/segment/analytics/integrations/Logger;

    move-result-object v0

    return-object v0
.end method

.method public logout()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/segment/analytics/Analytics;->reset()V

    .line 889
    return-void
.end method

.method public onIntegrationReady(Lcom/segment/analytics/Analytics$BundledIntegration;Lcom/segment/analytics/Analytics$Callback;)V
    .locals 2
    .param p1, "integration"    # Lcom/segment/analytics/Analytics$BundledIntegration;
    .param p2, "callback"    # Lcom/segment/analytics/Analytics$Callback;

    .prologue
    .line 961
    if-nez p1, :cond_0

    .line 962
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "integration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_0
    iget-object v0, p1, Lcom/segment/analytics/Analytics$BundledIntegration;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/segment/analytics/Analytics;->onIntegrationReady(Ljava/lang/String;Lcom/segment/analytics/Analytics$Callback;)V

    .line 965
    return-void
.end method

.method public onIntegrationReady(Ljava/lang/String;Lcom/segment/analytics/Analytics$Callback;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/segment/analytics/Analytics$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p2, "callback":Lcom/segment/analytics/Analytics$Callback;, "Lcom/segment/analytics/Analytics$Callback<TT;>;"
    invoke-static {p1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/segment/analytics/Analytics$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/segment/analytics/Analytics$11;-><init>(Lcom/segment/analytics/Analytics;Ljava/lang/String;Lcom/segment/analytics/Analytics$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 956
    return-void
.end method

.method public optOut(Z)V
    .locals 1
    .param p1, "optOut"    # Z

    .prologue
    .line 909
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->optOut:Lcom/segment/analytics/BooleanPreference;

    invoke-virtual {v0, p1}, Lcom/segment/analytics/BooleanPreference;->set(Z)V

    .line 910
    return-void
.end method

.method performCallback(Ljava/lang/String;Lcom/segment/analytics/Analytics$Callback;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/segment/analytics/Analytics$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1474
    .local p2, "callback":Lcom/segment/analytics/Analytics$Callback;, "Lcom/segment/analytics/Analytics$Callback<TT;>;"
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->integrations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1475
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/segment/analytics/integrations/Integration<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/segment/analytics/integrations/Integration;

    invoke-virtual {v1}, Lcom/segment/analytics/integrations/Integration;->getUnderlyingInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/segment/analytics/Analytics$Callback;->onReady(Ljava/lang/Object;)V

    .line 1480
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/segment/analytics/integrations/Integration<*>;>;"
    :cond_1
    return-void
.end method

.method performInitializeIntegrations(Lcom/segment/analytics/ProjectSettings;)V
    .locals 11
    .param p1, "projectSettings"    # Lcom/segment/analytics/ProjectSettings;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1438
    invoke-virtual {p1}, Lcom/segment/analytics/ProjectSettings;->integrations()Lcom/segment/analytics/ValueMap;

    move-result-object v3

    .line 1439
    .local v3, "integrationSettings":Lcom/segment/analytics/ValueMap;
    new-instance v6, Ljava/util/LinkedHashMap;

    iget-object v7, p0, Lcom/segment/analytics/Analytics;->factories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v6, p0, Lcom/segment/analytics/Analytics;->integrations:Ljava/util/Map;

    .line 1440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->factories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1441
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->factories:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/segment/analytics/integrations/Integration$Factory;

    .line 1442
    .local v0, "factory":Lcom/segment/analytics/integrations/Integration$Factory;
    invoke-interface {v0}, Lcom/segment/analytics/integrations/Integration$Factory;->key()Ljava/lang/String;

    move-result-object v4

    .line 1443
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/segment/analytics/ValueMap;->getValueMap(Ljava/lang/Object;)Lcom/segment/analytics/ValueMap;

    move-result-object v5

    .line 1444
    .local v5, "settings":Lcom/segment/analytics/ValueMap;
    invoke-static {v5}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1445
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v7, "Integration %s is not enabled."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/segment/analytics/integrations/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1440
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1448
    :cond_0
    invoke-interface {v0, v5, p0}, Lcom/segment/analytics/integrations/Integration$Factory;->create(Lcom/segment/analytics/ValueMap;Lcom/segment/analytics/Analytics;)Lcom/segment/analytics/integrations/Integration;

    move-result-object v2

    .line 1449
    .local v2, "integration":Lcom/segment/analytics/integrations/Integration;
    if-nez v2, :cond_1

    .line 1450
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v7, "Factory %s couldn\'t create integration."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/segment/analytics/integrations/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1452
    :cond_1
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->integrations:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->bundledIntegrations:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1456
    .end local v0    # "factory":Lcom/segment/analytics/integrations/Integration$Factory;
    .end local v2    # "integration":Lcom/segment/analytics/integrations/Integration;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "settings":Lcom/segment/analytics/ValueMap;
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/segment/analytics/Analytics;->factories:Ljava/util/List;

    .line 1457
    return-void
.end method

.method performRun(Lcom/segment/analytics/IntegrationOperation;)V
    .locals 18
    .param p1, "operation"    # Lcom/segment/analytics/IntegrationOperation;

    .prologue
    .line 1461
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/segment/analytics/Analytics;->integrations:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1462
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/segment/analytics/integrations/Integration<*>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1463
    .local v7, "key":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 1464
    .local v8, "startTime":J
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/segment/analytics/integrations/Integration;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/segment/analytics/Analytics;->projectSettings:Lcom/segment/analytics/ProjectSettings;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10, v12}, Lcom/segment/analytics/IntegrationOperation;->run(Ljava/lang/String;Lcom/segment/analytics/integrations/Integration;Lcom/segment/analytics/ProjectSettings;)V

    .line 1465
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1466
    .local v4, "endTime":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v12, v4, v8

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1467
    .local v2, "durationInMillis":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/segment/analytics/Analytics;->stats:Lcom/segment/analytics/Stats;

    invoke-virtual {v10, v7, v2, v3}, Lcom/segment/analytics/Stats;->dispatchIntegrationOperation(Ljava/lang/String;J)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v12, "Ran %s on integration %s in %d ns."

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const/4 v14, 0x2

    sub-long v16, v4, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v12, v13}, Lcom/segment/analytics/integrations/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1470
    .end local v2    # "durationInMillis":J
    .end local v4    # "endTime":J
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/segment/analytics/integrations/Integration<*>;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "startTime":J
    :cond_0
    return-void
.end method

.method recordScreenViews(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 430
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 433
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 434
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 436
    .local v0, "activityLabel":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/segment/analytics/Analytics;->screen(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    return-void

    .line 437
    .end local v0    # "activityLabel":Ljava/lang/CharSequence;
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity Not Found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/segment/analytics/Analytics;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/segment/analytics/internal/Utils;->getSegmentSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 897
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->traitsCache:Lcom/segment/analytics/Traits$Cache;

    invoke-virtual {v0}, Lcom/segment/analytics/Traits$Cache;->delete()V

    .line 898
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->traitsCache:Lcom/segment/analytics/Traits$Cache;

    invoke-static {}, Lcom/segment/analytics/Traits;->create()Lcom/segment/analytics/Traits;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/segment/analytics/Traits$Cache;->set(Lcom/segment/analytics/ValueMap;)V

    .line 899
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->analyticsContext:Lcom/segment/analytics/AnalyticsContext;

    iget-object v0, p0, Lcom/segment/analytics/Analytics;->traitsCache:Lcom/segment/analytics/Traits$Cache;

    invoke-virtual {v0}, Lcom/segment/analytics/Traits$Cache;->get()Lcom/segment/analytics/ValueMap;

    move-result-object v0

    check-cast v0, Lcom/segment/analytics/Traits;

    invoke-virtual {v1, v0}, Lcom/segment/analytics/AnalyticsContext;->setTraits(Lcom/segment/analytics/Traits;)V

    .line 900
    sget-object v0, Lcom/segment/analytics/IntegrationOperation;->RESET:Lcom/segment/analytics/IntegrationOperation;

    invoke-virtual {p0, v0}, Lcom/segment/analytics/Analytics;->runOnMainThread(Lcom/segment/analytics/IntegrationOperation;)V

    .line 901
    return-void
.end method

.method run(Lcom/segment/analytics/integrations/BasePayload;)V
    .locals 5
    .param p1, "payload"    # Lcom/segment/analytics/integrations/BasePayload;

    .prologue
    .line 800
    iget-object v1, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v2, "Running payload %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/segment/analytics/integrations/Logger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    sget-object v1, Lcom/segment/analytics/Analytics$13;->$SwitchMap$com$segment$analytics$integrations$BasePayload$Type:[I

    invoke-virtual {p1}, Lcom/segment/analytics/integrations/BasePayload;->type()Lcom/segment/analytics/integrations/BasePayload$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/segment/analytics/integrations/BasePayload$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 819
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/segment/analytics/integrations/BasePayload;->type()Lcom/segment/analytics/integrations/BasePayload$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 804
    :pswitch_0
    check-cast p1, Lcom/segment/analytics/integrations/IdentifyPayload;

    .end local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    invoke-static {p1}, Lcom/segment/analytics/IntegrationOperation;->identify(Lcom/segment/analytics/integrations/IdentifyPayload;)Lcom/segment/analytics/IntegrationOperation;

    move-result-object v0

    .line 821
    .local v0, "operation":Lcom/segment/analytics/IntegrationOperation;
    :goto_0
    sget-object v1, Lcom/segment/analytics/Analytics;->HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/segment/analytics/Analytics$10;

    invoke-direct {v2, p0, v0}, Lcom/segment/analytics/Analytics$10;-><init>(Lcom/segment/analytics/Analytics;Lcom/segment/analytics/IntegrationOperation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 828
    return-void

    .line 807
    .end local v0    # "operation":Lcom/segment/analytics/IntegrationOperation;
    .restart local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    :pswitch_1
    check-cast p1, Lcom/segment/analytics/integrations/AliasPayload;

    .end local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    invoke-static {p1}, Lcom/segment/analytics/IntegrationOperation;->alias(Lcom/segment/analytics/integrations/AliasPayload;)Lcom/segment/analytics/IntegrationOperation;

    move-result-object v0

    .line 808
    .restart local v0    # "operation":Lcom/segment/analytics/IntegrationOperation;
    goto :goto_0

    .line 810
    .end local v0    # "operation":Lcom/segment/analytics/IntegrationOperation;
    .restart local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    :pswitch_2
    check-cast p1, Lcom/segment/analytics/integrations/GroupPayload;

    .end local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    invoke-static {p1}, Lcom/segment/analytics/IntegrationOperation;->group(Lcom/segment/analytics/integrations/GroupPayload;)Lcom/segment/analytics/IntegrationOperation;

    move-result-object v0

    .line 811
    .restart local v0    # "operation":Lcom/segment/analytics/IntegrationOperation;
    goto :goto_0

    .line 813
    .end local v0    # "operation":Lcom/segment/analytics/IntegrationOperation;
    .restart local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    :pswitch_3
    check-cast p1, Lcom/segment/analytics/integrations/TrackPayload;

    .end local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    invoke-static {p1}, Lcom/segment/analytics/IntegrationOperation;->track(Lcom/segment/analytics/integrations/TrackPayload;)Lcom/segment/analytics/IntegrationOperation;

    move-result-object v0

    .line 814
    .restart local v0    # "operation":Lcom/segment/analytics/IntegrationOperation;
    goto :goto_0

    .line 816
    .end local v0    # "operation":Lcom/segment/analytics/IntegrationOperation;
    .restart local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    :pswitch_4
    check-cast p1, Lcom/segment/analytics/integrations/ScreenPayload;

    .end local p1    # "payload":Lcom/segment/analytics/integrations/BasePayload;
    invoke-static {p1}, Lcom/segment/analytics/IntegrationOperation;->screen(Lcom/segment/analytics/integrations/ScreenPayload;)Lcom/segment/analytics/IntegrationOperation;

    move-result-object v0

    .line 817
    .restart local v0    # "operation":Lcom/segment/analytics/IntegrationOperation;
    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method runOnMainThread(Lcom/segment/analytics/IntegrationOperation;)V
    .locals 2
    .param p1, "operation"    # Lcom/segment/analytics/IntegrationOperation;

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/segment/analytics/Analytics;->shutdown:Z

    if-eqz v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/segment/analytics/Analytics$4;

    invoke-direct {v1, p0, p1}, Lcom/segment/analytics/Analytics$4;-><init>(Lcom/segment/analytics/Analytics;Lcom/segment/analytics/IntegrationOperation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public screen(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/segment/analytics/Analytics;->screen(Ljava/lang/String;Ljava/lang/String;Lcom/segment/analytics/Properties;Lcom/segment/analytics/Options;)V

    .line 657
    return-void
.end method

.method public screen(Ljava/lang/String;Lcom/segment/analytics/Properties;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "properties"    # Lcom/segment/analytics/Properties;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 661
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/segment/analytics/Analytics;->screen(Ljava/lang/String;Ljava/lang/String;Lcom/segment/analytics/Properties;Lcom/segment/analytics/Options;)V

    .line 662
    return-void
.end method

.method public screen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/segment/analytics/Analytics;->screen(Ljava/lang/String;Ljava/lang/String;Lcom/segment/analytics/Properties;Lcom/segment/analytics/Options;)V

    .line 643
    return-void
.end method

.method public screen(Ljava/lang/String;Ljava/lang/String;Lcom/segment/analytics/Properties;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "properties"    # Lcom/segment/analytics/Properties;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/segment/analytics/Analytics;->screen(Ljava/lang/String;Ljava/lang/String;Lcom/segment/analytics/Properties;Lcom/segment/analytics/Options;)V

    .line 652
    return-void
.end method

.method public screen(Ljava/lang/String;Ljava/lang/String;Lcom/segment/analytics/Properties;Lcom/segment/analytics/Options;)V
    .locals 7
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "properties"    # Lcom/segment/analytics/Properties;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "options"    # Lcom/segment/analytics/Options;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->assertNotShutdown()V

    .line 680
    invoke-static {p1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "either category or name must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/segment/analytics/Analytics$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/segment/analytics/Analytics$8;-><init>(Lcom/segment/analytics/Analytics;Lcom/segment/analytics/Options;Lcom/segment/analytics/Properties;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 711
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 996
    sget-object v0, Lcom/segment/analytics/Analytics;->singleton:Lcom/segment/analytics/Analytics;

    if-ne p0, v0, :cond_0

    .line 997
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Default singleton instance cannot be shutdown."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_0
    iget-boolean v0, p0, Lcom/segment/analytics/Analytics;->shutdown:Z

    if-eqz v0, :cond_1

    .line 1014
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/segment/analytics/Analytics;->activityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1005
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1006
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/segment/analytics/internal/Utils$AnalyticsNetworkExecutorService;

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1009
    :cond_2
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->stats:Lcom/segment/analytics/Stats;

    invoke-virtual {v0}, Lcom/segment/analytics/Stats;->shutdown()V

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/segment/analytics/Analytics;->shutdown:Z

    .line 1011
    sget-object v1, Lcom/segment/analytics/Analytics;->INSTANCES:Ljava/util/List;

    monitor-enter v1

    .line 1012
    :try_start_0
    sget-object v0, Lcom/segment/analytics/Analytics;->INSTANCES:Ljava/util/List;

    iget-object v2, p0, Lcom/segment/analytics/Analytics;->tag:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1013
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public track(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0, p1, v0, v0}, Lcom/segment/analytics/Analytics;->track(Ljava/lang/String;Lcom/segment/analytics/Properties;Lcom/segment/analytics/Options;)V

    .line 585
    return-void
.end method

.method public track(Ljava/lang/String;Lcom/segment/analytics/Properties;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "properties"    # Lcom/segment/analytics/Properties;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/segment/analytics/Analytics;->track(Ljava/lang/String;Lcom/segment/analytics/Properties;Lcom/segment/analytics/Options;)V

    .line 590
    return-void
.end method

.method public track(Ljava/lang/String;Lcom/segment/analytics/Properties;Lcom/segment/analytics/Options;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "properties"    # Lcom/segment/analytics/Properties;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "options"    # Lcom/segment/analytics/Options;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->assertNotShutdown()V

    .line 608
    invoke-static {p1}, Lcom/segment/analytics/internal/Utils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/segment/analytics/Analytics;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/segment/analytics/Analytics$7;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/segment/analytics/Analytics$7;-><init>(Lcom/segment/analytics/Analytics;Lcom/segment/analytics/Options;Lcom/segment/analytics/Properties;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 635
    return-void
.end method

.method trackApplicationLifecycleEvents()V
    .locals 11

    .prologue
    const/4 v9, -0x1

    .line 379
    iget-object v7, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    invoke-static {v7}, Lcom/segment/analytics/Analytics;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 380
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 381
    .local v1, "currentVersion":Ljava/lang/String;
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 384
    .local v0, "currentBuild":I
    iget-object v7, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    iget-object v8, p0, Lcom/segment/analytics/Analytics;->tag:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/segment/analytics/internal/Utils;->getSegmentSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 385
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "version"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, "previousVersion":Ljava/lang/String;
    const-string v7, "build"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 389
    .local v4, "previousBuild":I
    if-ne v4, v9, :cond_1

    .line 390
    const-string v7, "Application Installed"

    new-instance v8, Lcom/segment/analytics/Properties;

    invoke-direct {v8}, Lcom/segment/analytics/Properties;-><init>()V

    const-string v9, "version"

    .line 393
    invoke-virtual {v8, v9, v1}, Lcom/segment/analytics/Properties;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/segment/analytics/Properties;

    move-result-object v8

    const-string v9, "build"

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/segment/analytics/Properties;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/segment/analytics/Properties;

    move-result-object v8

    .line 390
    invoke-virtual {p0, v7, v8}, Lcom/segment/analytics/Analytics;->track(Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 406
    :cond_0
    :goto_0
    const-string v7, "Application Opened"

    new-instance v8, Lcom/segment/analytics/Properties;

    invoke-direct {v8}, Lcom/segment/analytics/Properties;-><init>()V

    const-string v9, "version"

    .line 409
    invoke-virtual {v8, v9, v1}, Lcom/segment/analytics/Properties;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/segment/analytics/Properties;

    move-result-object v8

    const-string v9, "build"

    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/segment/analytics/Properties;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/segment/analytics/Properties;

    move-result-object v8

    .line 406
    invoke-virtual {p0, v7, v8}, Lcom/segment/analytics/Analytics;->track(Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 413
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 414
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "version"

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string v7, "build"

    invoke-interface {v2, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 417
    return-void

    .line 395
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-eq v0, v4, :cond_0

    .line 396
    const-string v7, "Application Updated"

    new-instance v8, Lcom/segment/analytics/Properties;

    invoke-direct {v8}, Lcom/segment/analytics/Properties;-><init>()V

    const-string v9, "version"

    .line 399
    invoke-virtual {v8, v9, v1}, Lcom/segment/analytics/Properties;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/segment/analytics/Properties;

    move-result-object v8

    const-string v9, "build"

    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/segment/analytics/Properties;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/segment/analytics/Properties;

    move-result-object v8

    const-string v9, "previous_version"

    .line 401
    invoke-virtual {v8, v9, v5}, Lcom/segment/analytics/Properties;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/segment/analytics/Properties;

    move-result-object v8

    const-string v9, "previous_build"

    .line 402
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/segment/analytics/Properties;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/segment/analytics/Properties;

    move-result-object v8

    .line 396
    invoke-virtual {p0, v7, v8}, Lcom/segment/analytics/Analytics;->track(Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    goto :goto_0
.end method

.method trackAttributionInformation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 345
    new-instance v4, Lcom/segment/analytics/BooleanPreference;

    iget-object v6, p0, Lcom/segment/analytics/Analytics;->application:Landroid/app/Application;

    iget-object v7, p0, Lcom/segment/analytics/Analytics;->tag:Ljava/lang/String;

    .line 347
    invoke-static {v6, v7}, Lcom/segment/analytics/internal/Utils;->getSegmentSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "tracked_attribution"

    invoke-direct {v4, v6, v7, v8}, Lcom/segment/analytics/BooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 348
    .local v4, "trackedAttribution":Lcom/segment/analytics/BooleanPreference;
    invoke-virtual {v4}, Lcom/segment/analytics/BooleanPreference;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 374
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/segment/analytics/Analytics;->waitForAdvertisingId()V

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "connection":Lcom/segment/analytics/Client$Connection;
    :try_start_0
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->client:Lcom/segment/analytics/Client;

    invoke-virtual {v6}, Lcom/segment/analytics/Client;->attribution()Lcom/segment/analytics/Client$Connection;

    move-result-object v0

    .line 359
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, v0, Lcom/segment/analytics/Client$Connection;->os:Ljava/io/OutputStream;

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 360
    .local v5, "writer":Ljava/io/Writer;
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->cartographer:Lcom/segment/analytics/Cartographer;

    iget-object v7, p0, Lcom/segment/analytics/Analytics;->analyticsContext:Lcom/segment/analytics/AnalyticsContext;

    invoke-virtual {v6, v7, v5}, Lcom/segment/analytics/Cartographer;->toJson(Ljava/util/Map;Ljava/io/Writer;)V

    .line 363
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->cartographer:Lcom/segment/analytics/Cartographer;

    iget-object v7, v0, Lcom/segment/analytics/Client$Connection;->connection:Ljava/net/HttpURLConnection;

    .line 364
    invoke-static {v7}, Lcom/segment/analytics/internal/Utils;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/segment/analytics/internal/Utils;->buffer(Ljava/io/InputStream;)Ljava/io/BufferedReader;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/segment/analytics/Cartographer;->fromJson(Ljava/io/Reader;)Ljava/util/Map;

    move-result-object v2

    .line 365
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/segment/analytics/Properties;

    invoke-direct {v3, v2}, Lcom/segment/analytics/Properties;-><init>(Ljava/util/Map;)V

    .line 367
    .local v3, "properties":Lcom/segment/analytics/Properties;
    const-string v6, "Install Attributed"

    invoke-virtual {p0, v6, v3}, Lcom/segment/analytics/Analytics;->track(Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 368
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/segment/analytics/BooleanPreference;->set(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v0}, Lcom/segment/analytics/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 369
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "properties":Lcom/segment/analytics/Properties;
    .end local v5    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v6, p0, Lcom/segment/analytics/Analytics;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v7, "Unable to track attribution information. Retrying on next launch."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7, v8}, Lcom/segment/analytics/integrations/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    invoke-static {v0}, Lcom/segment/analytics/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v0}, Lcom/segment/analytics/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
.end method
