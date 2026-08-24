.class public Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Area;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p1, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Area;->x:F

    .line 232
    iput p2, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Area;->y:F

    .line 233
    return-void
.end method
