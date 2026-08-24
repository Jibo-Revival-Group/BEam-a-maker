.class Lcom/squareup/picasso/RemoteViewsAction$AppWidgetAction;
.super Lcom/squareup/picasso/RemoteViewsAction;
.source "RemoteViewsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/RemoteViewsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppWidgetAction"
.end annotation


# instance fields
.field private final appWidgetIds:[I


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;Landroid/widget/RemoteViews;I[IIILjava/lang/String;Ljava/lang/Object;ILcom/squareup/picasso/Callback;)V
    .locals 12
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "data"    # Lcom/squareup/picasso/Request;
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p4, "viewId"    # I
    .param p5, "appWidgetIds"    # [I
    .param p6, "memoryPolicy"    # I
    .param p7, "networkPolicy"    # I
    .param p8, "key"    # Ljava/lang/String;
    .param p9, "tag"    # Ljava/lang/Object;
    .param p10, "errorResId"    # I
    .param p11, "callback"    # Lcom/squareup/picasso/Callback;

    .prologue
    .line 109
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p10

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p8

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/squareup/picasso/RemoteViewsAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;Landroid/widget/RemoteViews;IIIILjava/lang/Object;Ljava/lang/String;Lcom/squareup/picasso/Callback;)V

    .line 111
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction$AppWidgetAction;->appWidgetIds:[I

    .line 112
    return-void
.end method


# virtual methods
.method bridge synthetic getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/squareup/picasso/RemoteViewsAction;->getTarget()Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    move-result-object v0

    return-object v0
.end method

.method update()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/squareup/picasso/RemoteViewsAction$AppWidgetAction;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 116
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    iget-object v1, p0, Lcom/squareup/picasso/RemoteViewsAction$AppWidgetAction;->appWidgetIds:[I

    iget-object v2, p0, Lcom/squareup/picasso/RemoteViewsAction$AppWidgetAction;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 117
    return-void
.end method
