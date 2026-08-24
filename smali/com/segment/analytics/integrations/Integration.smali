.class public abstract Lcom/segment/analytics/integrations/Integration;
.super Ljava/lang/Object;
.source "Integration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/segment/analytics/integrations/Integration$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Lcom/segment/analytics/integrations/AliasPayload;)V
    .locals 0
    .param p1, "alias"    # Lcom/segment/analytics/integrations/AliasPayload;

    .prologue
    .line 64
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public getUnderlyingInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public group(Lcom/segment/analytics/integrations/GroupPayload;)V
    .locals 0
    .param p1, "group"    # Lcom/segment/analytics/integrations/GroupPayload;

    .prologue
    .line 56
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public identify(Lcom/segment/analytics/integrations/IdentifyPayload;)V
    .locals 0
    .param p1, "identify"    # Lcom/segment/analytics/integrations/IdentifyPayload;

    .prologue
    .line 53
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public screen(Lcom/segment/analytics/integrations/ScreenPayload;)V
    .locals 0
    .param p1, "screen"    # Lcom/segment/analytics/integrations/ScreenPayload;

    .prologue
    .line 70
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method

.method public track(Lcom/segment/analytics/integrations/TrackPayload;)V
    .locals 0
    .param p1, "track"    # Lcom/segment/analytics/integrations/TrackPayload;

    .prologue
    .line 61
    .local p0, "this":Lcom/segment/analytics/integrations/Integration;, "Lcom/segment/analytics/integrations/Integration<TT;>;"
    return-void
.end method
