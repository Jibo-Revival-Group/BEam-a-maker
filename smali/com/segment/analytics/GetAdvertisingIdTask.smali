.class Lcom/segment/analytics/GetAdvertisingIdTask;
.super Landroid/os/AsyncTask;
.source "GetAdvertisingIdTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final analyticsContext:Lcom/segment/analytics/AnalyticsContext;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final logger:Lcom/segment/analytics/integrations/Logger;


# direct methods
.method constructor <init>(Lcom/segment/analytics/AnalyticsContext;Ljava/util/concurrent/CountDownLatch;Lcom/segment/analytics/integrations/Logger;)V
    .locals 0
    .param p1, "analyticsContext"    # Lcom/segment/analytics/AnalyticsContext;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "logger"    # Lcom/segment/analytics/integrations/Logger;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->analyticsContext:Lcom/segment/analytics/AnalyticsContext;

    .line 23
    iput-object p2, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 24
    iput-object p3, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->logger:Lcom/segment/analytics/integrations/Logger;

    .line 25
    return-void
.end method

.method private getAmazonFireAdvertisingID(Landroid/content/Context;)Landroid/util/Pair;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 56
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "limit_ad_tracking"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 58
    .local v2, "limitAdTracking":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 59
    iget-object v3, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v5, "Not collecting advertising ID because limit_ad_tracking (Amazon Fire OS) is true."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/segment/analytics/integrations/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 65
    :goto_1
    return-object v3

    .end local v2    # "limitAdTracking":Z
    :cond_0
    move v2, v4

    .line 56
    goto :goto_0

    .line 64
    .restart local v2    # "limitAdTracking":Z
    :cond_1
    const-string v4, "advertising_id"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "advertisingId":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1
.end method

.method private getGooglePlayServicesAdvertisingID(Landroid/content/Context;)Landroid/util/Pair;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 30
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getAdvertisingIdInfo"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v7

    .line 31
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    .line 32
    invoke-virtual {v3, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "advertisingInfo":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v7, [Ljava/lang/Class;

    .line 37
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 40
    .local v2, "isLimitAdTrackingEnabled":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v4, "Not collecting advertising ID because isLimitAdTrackingEnabled (Google Play Services) is true."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/segment/analytics/integrations/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 48
    :goto_0
    return-object v3

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getId"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "advertisingId":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Landroid/util/Pair;
    .locals 6
    .param p1, "contexts"    # [Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 70
    aget-object v0, p1, v5

    .line 72
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/segment/analytics/GetAdvertisingIdTask;->getGooglePlayServicesAdvertisingID(Landroid/content/Context;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v3, "Unable to collect advertising ID from Google Play Services."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/segment/analytics/integrations/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :try_start_1
    invoke-direct {p0, v0}, Lcom/segment/analytics/GetAdvertisingIdTask;->getAmazonFireAdvertisingID(Landroid/content/Context;)Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    .line 79
    iget-object v2, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v3, "Unable to collect advertising ID from Amazon Fire OS."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/segment/analytics/integrations/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v3, "Unable to collect advertising ID from Amazon Fire OS and Google Play Services."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/segment/analytics/integrations/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/segment/analytics/GetAdvertisingIdTask;->doInBackground([Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 90
    if-nez p1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 102
    :goto_0
    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->analyticsContext:Lcom/segment/analytics/AnalyticsContext;

    invoke-virtual {v1}, Lcom/segment/analytics/AnalyticsContext;->device()Lcom/segment/analytics/AnalyticsContext$Device;

    move-result-object v0

    .line 94
    .local v0, "device":Lcom/segment/analytics/AnalyticsContext$Device;
    if-nez v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->logger:Lcom/segment/analytics/integrations/Logger;

    const-string v2, "Not collecting advertising ID because context.device is null."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/segment/analytics/integrations/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v1, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 98
    :cond_1
    :try_start_1
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/segment/analytics/AnalyticsContext$Device;->putAdvertisingInfo(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    iget-object v1, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .end local v0    # "device":Lcom/segment/analytics/AnalyticsContext$Device;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/segment/analytics/GetAdvertisingIdTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/segment/analytics/GetAdvertisingIdTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
