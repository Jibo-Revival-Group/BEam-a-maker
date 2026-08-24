.class public final Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;
.super Ljava/lang/Object;
.source "GetProjectImage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;",
        "",
        "()V",
        "getImage",
        "",
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
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;->INSTANCE:Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImage()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 15
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 16
    .local v1, "random":Ljava/util/Random;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x0

    .line 20
    .local v0, "number":I
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_0:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 21
    const-string v2, "project_a"

    .line 67
    :goto_0
    return-object v2

    .line 24
    :cond_0
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_1:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 25
    const-string v2, "project_b"

    goto :goto_0

    .line 28
    :cond_1
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_2:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 29
    const-string v2, "project_c"

    goto :goto_0

    .line 32
    :cond_2
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_3:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 33
    const-string v2, "project_d"

    goto :goto_0

    .line 36
    :cond_3
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_4:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 37
    const-string v2, "project_e"

    goto :goto_0

    .line 40
    :cond_4
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_5:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 41
    const-string v2, "project_f"

    goto :goto_0

    .line 44
    :cond_5
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_6:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 45
    const-string v2, "project_g"

    goto :goto_0

    .line 48
    :cond_6
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_7:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 49
    const-string v2, "project_h"

    goto :goto_0

    .line 52
    :cond_7
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_8:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 53
    const-string v2, "project_i"

    goto :goto_0

    .line 56
    :cond_8
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_9:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 57
    const-string v2, "project_j"

    goto :goto_0

    .line 60
    :cond_9
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_10:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 61
    const-string v2, "project_k"

    goto :goto_0

    .line 64
    :cond_a
    sget-object v2, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->IMAGE_11:Lcom/everis/jibo/beamaker/utils/project/ImageProject;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/project/ImageProject;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 65
    const-string v2, "project_l"

    goto :goto_0

    .line 67
    :cond_b
    const-string v2, "imagedefault"

    goto :goto_0
.end method
