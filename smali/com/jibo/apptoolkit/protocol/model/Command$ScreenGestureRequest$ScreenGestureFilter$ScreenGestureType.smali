.class public final enum Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenGestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

.field public static final enum SwipeDown:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

.field public static final enum SwipeLeft:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

.field public static final enum SwipeRight:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

.field public static final enum SwipeUp:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

.field public static final enum Tap:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    const-string v1, "Tap"

    invoke-direct {v0, v1, v2}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->Tap:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    .line 205
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    const-string v1, "SwipeDown"

    invoke-direct {v0, v1, v3}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeDown:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    .line 209
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    const-string v1, "SwipeUp"

    invoke-direct {v0, v1, v4}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeUp:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    .line 213
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    const-string v1, "SwipeRight"

    invoke-direct {v0, v1, v5}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeRight:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    .line 217
    new-instance v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    const-string v1, "SwipeLeft"

    invoke-direct {v0, v1, v6}, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeLeft:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->Tap:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeDown:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeUp:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeRight:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeLeft:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    const-class v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    return-object v0
.end method

.method public static values()[Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->$VALUES:[Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    invoke-virtual {v0}, [Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    return-object v0
.end method
