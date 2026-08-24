.class public Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Rectangle;
.super Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Area;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rectangle"
.end annotation


# instance fields
.field height:F

.field width:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Area;-><init>(FF)V

    .line 248
    iput p3, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Rectangle;->width:F

    .line 249
    iput p4, p0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$Rectangle;->height:F

    .line 250
    return-void
.end method
