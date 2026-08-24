.class Lcom/airbnb/lottie/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/Layer$Factory;,
        Lcom/airbnb/lottie/Layer$MatteType;,
        Lcom/airbnb/lottie/Layer$LayerType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/airbnb/lottie/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/airbnb/lottie/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startProgress:F

.field private final text:Lcom/airbnb/lottie/AnimatableTextFrame;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final textProperties:Lcom/airbnb/lottie/AnimatableTextProperties;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final timeRemapping:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final timeStretch:F

.field private final transform:Lcom/airbnb/lottie/AnimatableTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/Layer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILcom/airbnb/lottie/AnimatableTextFrame;Lcom/airbnb/lottie/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 1
    .param p2, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p3, "layerName"    # Ljava/lang/String;
    .param p4, "layerId"    # J
    .param p6, "layerType"    # Lcom/airbnb/lottie/Layer$LayerType;
    .param p7, "parentId"    # J
    .param p9, "refId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "transform"    # Lcom/airbnb/lottie/AnimatableTransform;
    .param p12, "solidWidth"    # I
    .param p13, "solidHeight"    # I
    .param p14, "solidColor"    # I
    .param p15, "timeStretch"    # F
    .param p16, "startProgress"    # F
    .param p17, "preCompWidth"    # I
    .param p18, "preCompHeight"    # I
    .param p19, "text"    # Lcom/airbnb/lottie/AnimatableTextFrame;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p20, "textProperties"    # Lcom/airbnb/lottie/AnimatableTextProperties;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p22, "matteType"    # Lcom/airbnb/lottie/Layer$MatteType;
    .param p23, "timeRemapping"    # Lcom/airbnb/lottie/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ContentModel;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableTransform;",
            "IIIFFII",
            "Lcom/airbnb/lottie/AnimatableTextFrame;",
            "Lcom/airbnb/lottie/AnimatableTextProperties;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/Layer$MatteType;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/ContentModel;>;"
    .local p10, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Mask;>;"
    .local p21, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/Keyframe<Ljava/lang/Float;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 67
    iput-object p3, p0, Lcom/airbnb/lottie/Layer;->layerName:Ljava/lang/String;

    .line 68
    iput-wide p4, p0, Lcom/airbnb/lottie/Layer;->layerId:J

    .line 69
    iput-object p6, p0, Lcom/airbnb/lottie/Layer;->layerType:Lcom/airbnb/lottie/Layer$LayerType;

    .line 70
    iput-wide p7, p0, Lcom/airbnb/lottie/Layer;->parentId:J

    .line 71
    iput-object p9, p0, Lcom/airbnb/lottie/Layer;->refId:Ljava/lang/String;

    .line 72
    iput-object p10, p0, Lcom/airbnb/lottie/Layer;->masks:Ljava/util/List;

    .line 73
    iput-object p11, p0, Lcom/airbnb/lottie/Layer;->transform:Lcom/airbnb/lottie/AnimatableTransform;

    .line 74
    iput p12, p0, Lcom/airbnb/lottie/Layer;->solidWidth:I

    .line 75
    iput p13, p0, Lcom/airbnb/lottie/Layer;->solidHeight:I

    .line 76
    iput p14, p0, Lcom/airbnb/lottie/Layer;->solidColor:I

    .line 77
    move/from16 v0, p15

    iput v0, p0, Lcom/airbnb/lottie/Layer;->timeStretch:F

    .line 78
    move/from16 v0, p16

    iput v0, p0, Lcom/airbnb/lottie/Layer;->startProgress:F

    .line 79
    move/from16 v0, p17

    iput v0, p0, Lcom/airbnb/lottie/Layer;->preCompWidth:I

    .line 80
    move/from16 v0, p18

    iput v0, p0, Lcom/airbnb/lottie/Layer;->preCompHeight:I

    .line 81
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/airbnb/lottie/Layer;->text:Lcom/airbnb/lottie/AnimatableTextFrame;

    .line 82
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/airbnb/lottie/Layer;->textProperties:Lcom/airbnb/lottie/AnimatableTextProperties;

    .line 83
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/airbnb/lottie/Layer;->inOutKeyframes:Ljava/util/List;

    .line 84
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/airbnb/lottie/Layer;->matteType:Lcom/airbnb/lottie/Layer$MatteType;

    .line 85
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/airbnb/lottie/Layer;->timeRemapping:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILcom/airbnb/lottie/AnimatableTextFrame;Lcom/airbnb/lottie/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/Layer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/airbnb/lottie/LottieComposition;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/airbnb/lottie/Layer$LayerType;
    .param p7, "x5"    # J
    .param p9, "x6"    # Ljava/lang/String;
    .param p10, "x7"    # Ljava/util/List;
    .param p11, "x8"    # Lcom/airbnb/lottie/AnimatableTransform;
    .param p12, "x9"    # I
    .param p13, "x10"    # I
    .param p14, "x11"    # I
    .param p15, "x12"    # F
    .param p16, "x13"    # F
    .param p17, "x14"    # I
    .param p18, "x15"    # I
    .param p19, "x16"    # Lcom/airbnb/lottie/AnimatableTextFrame;
    .param p20, "x17"    # Lcom/airbnb/lottie/AnimatableTextProperties;
    .param p21, "x18"    # Ljava/util/List;
    .param p22, "x19"    # Lcom/airbnb/lottie/Layer$MatteType;
    .param p23, "x20"    # Lcom/airbnb/lottie/AnimatableFloatValue;
    .param p24, "x21"    # Lcom/airbnb/lottie/Layer$1;

    .prologue
    .line 16
    invoke-direct/range {p0 .. p23}, Lcom/airbnb/lottie/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILcom/airbnb/lottie/AnimatableTextFrame;Lcom/airbnb/lottie/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    return-void
.end method


# virtual methods
.method getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/airbnb/lottie/Layer;->layerId:J

    return-wide v0
.end method

.method getInOutKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->inOutKeyframes:Ljava/util/List;

    return-object v0
.end method

.method getLayerType()Lcom/airbnb/lottie/Layer$LayerType;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->layerType:Lcom/airbnb/lottie/Layer$LayerType;

    return-object v0
.end method

.method getMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->masks:Ljava/util/List;

    return-object v0
.end method

.method getMatteType()Lcom/airbnb/lottie/Layer$MatteType;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->matteType:Lcom/airbnb/lottie/Layer$MatteType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->layerName:Ljava/lang/String;

    return-object v0
.end method

.method getParentId()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/airbnb/lottie/Layer;->parentId:J

    return-wide v0
.end method

.method getPreCompHeight()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/airbnb/lottie/Layer;->preCompHeight:I

    return v0
.end method

.method getPreCompWidth()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/airbnb/lottie/Layer;->preCompWidth:I

    return v0
.end method

.method getRefId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->refId:Ljava/lang/String;

    return-object v0
.end method

.method getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ContentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSolidColor()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidColor:I

    return v0
.end method

.method getSolidHeight()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidHeight:I

    return v0
.end method

.method getSolidWidth()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidWidth:I

    return v0
.end method

.method getStartProgress()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/airbnb/lottie/Layer;->startProgress:F

    return v0
.end method

.method getText()Lcom/airbnb/lottie/AnimatableTextFrame;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->text:Lcom/airbnb/lottie/AnimatableTextFrame;

    return-object v0
.end method

.method getTextProperties()Lcom/airbnb/lottie/AnimatableTextProperties;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->textProperties:Lcom/airbnb/lottie/AnimatableTextProperties;

    return-object v0
.end method

.method getTimeRemapping()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->timeRemapping:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getTimeStretch()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/airbnb/lottie/Layer;->timeStretch:F

    return v0
.end method

.method getTransform()Lcom/airbnb/lottie/AnimatableTransform;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->transform:Lcom/airbnb/lottie/AnimatableTransform;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v3, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v0

    .line 180
    .local v0, "parent":Lcom/airbnb/lottie/Layer;
    if-eqz v0, :cond_1

    .line 181
    const-string v3, "\t\tParents: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v0

    .line 183
    :goto_0
    if-eqz v0, :cond_0

    .line 184
    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v3, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tMasks: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidWidth()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidHeight()I

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%dx%d %X\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 197
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tShapes:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v3, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 199
    .local v2, "shape":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 202
    .end local v2    # "shape":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
