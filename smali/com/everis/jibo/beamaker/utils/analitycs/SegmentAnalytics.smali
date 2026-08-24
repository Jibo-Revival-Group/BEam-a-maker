.class public final Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;
.super Ljava/lang/Object;
.source "SegmentAnalytics.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/utils/analitycs/BAMAnalytics;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentAnalytics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentAnalytics.kt\ncom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics\n*L\n1#1,31:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\"\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0007\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;",
        "Lcom/everis/jibo/beamaker/utils/analitycs/BAMAnalytics;",
        "()V",
        "init",
        "",
        "application",
        "Landroid/app/Application;",
        "track",
        "context",
        "Landroid/content/Context;",
        "",
        "properties",
        "Lcom/segment/analytics/Properties;",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "application"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v2, Lcom/segment/analytics/Analytics$Builder;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f0e006f

    invoke-virtual {p1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/segment/analytics/Analytics$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Lcom/segment/analytics/Analytics$Builder;->trackApplicationLifecycleEvents()Lcom/segment/analytics/Analytics$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/segment/analytics/Analytics$Builder;->recordScreenViews()Lcom/segment/analytics/Analytics$Builder;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/segment/analytics/Analytics$Builder;->build()Lcom/segment/analytics/Analytics;

    move-result-object v0

    .line 22
    .local v0, "analytics":Lcom/segment/analytics/Analytics;
    invoke-static {v0}, Lcom/segment/analytics/Analytics;->setSingletonInstance(Lcom/segment/analytics/Analytics;)V

    .line 23
    return-void
.end method

.method public track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "track"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "properties"    # Lcom/segment/analytics/Properties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "track"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "properties"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 28
    .local v0, "it":Landroid/content/Context;
    invoke-static {v0}, Lcom/segment/analytics/Analytics;->with(Landroid/content/Context;)Lcom/segment/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/segment/analytics/Analytics;->track(Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 29
    nop

    .line 30
    .end local v0    # "it":Landroid/content/Context;
    :cond_0
    return-void
.end method
