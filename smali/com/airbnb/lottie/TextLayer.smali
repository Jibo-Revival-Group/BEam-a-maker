.class Lcom/airbnb/lottie/TextLayer;
.super Lcom/airbnb/lottie/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/lottie/FontCharacter;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private strokeAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCharArray:[C

.field private final textAnimation:Lcom/airbnb/lottie/TextKeyframeAnimation;

.field private trackingAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V
    .locals 3
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layerModel"    # Lcom/airbnb/lottie/Layer;

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    .line 18
    new-array v1, v2, [C

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->tempCharArray:[C

    .line 19
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 20
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v1, Lcom/airbnb/lottie/TextLayer$1;

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/TextLayer$1;-><init>(Lcom/airbnb/lottie/TextLayer;I)V

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v1, Lcom/airbnb/lottie/TextLayer$2;

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/TextLayer$2;-><init>(Lcom/airbnb/lottie/TextLayer;I)V

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/airbnb/lottie/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 39
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 41
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getText()Lcom/airbnb/lottie/AnimatableTextFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/TextKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->textAnimation:Lcom/airbnb/lottie/TextKeyframeAnimation;

    .line 42
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->textAnimation:Lcom/airbnb/lottie/TextKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/TextKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 43
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->textAnimation:Lcom/airbnb/lottie/TextKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/TextLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 45
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getTextProperties()Lcom/airbnb/lottie/AnimatableTextProperties;

    move-result-object v0

    .line 46
    .local v0, "textProperties":Lcom/airbnb/lottie/AnimatableTextProperties;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableTextProperties;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableTextProperties;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 48
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 49
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/TextLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 53
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/AnimatableColorValue;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 55
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 56
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/TextLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 59
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/AnimatableFloatValue;

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 61
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 62
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/TextLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 65
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/AnimatableFloatValue;

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, v0, Lcom/airbnb/lottie/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 67
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 68
    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/TextLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 70
    :cond_3
    return-void
.end method

.method private drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "character"    # [C
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 213
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p3

    move-object v1, p1

    move v5, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 214
    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/airbnb/lottie/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/DocumentData;Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "character"    # Lcom/airbnb/lottie/FontCharacter;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "fontScale"    # F
    .param p4, "documentData"    # Lcom/airbnb/lottie/DocumentData;
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/TextLayer;->getContentsForCharacter(Lcom/airbnb/lottie/FontCharacter;)Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "contentGroups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/ContentGroup;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 176
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v3}, Lcom/airbnb/lottie/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 177
    .local v2, "path":Landroid/graphics/Path;
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 178
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 179
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 180
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 181
    iget-boolean v3, p4, Lcom/airbnb/lottie/DocumentData;->strokeOverFill:Z

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 183
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 175
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 186
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 189
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(CLcom/airbnb/lottie/DocumentData;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "documentData"    # Lcom/airbnb/lottie/DocumentData;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/airbnb/lottie/TextLayer;->tempCharArray:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 203
    iget-boolean v0, p2, Lcom/airbnb/lottie/DocumentData;->strokeOverFill:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/airbnb/lottie/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 205
    iget-object v0, p0, Lcom/airbnb/lottie/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/airbnb/lottie/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 198
    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTextGlyphs(Lcom/airbnb/lottie/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/Font;Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "documentData"    # Lcom/airbnb/lottie/DocumentData;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "font"    # Lcom/airbnb/lottie/Font;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    move-object/from16 v0, p1

    iget v2, v0, Lcom/airbnb/lottie/DocumentData;->size:I

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v5, v2, v4

    .line 113
    .local v5, "fontScale":F
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v11

    .line 114
    .local v11, "parentScale":F
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/airbnb/lottie/DocumentData;->text:Ljava/lang/String;

    .line 117
    .local v12, "text":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 118
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 119
    .local v8, "c":C
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/Font;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v2, v4}, Lcom/airbnb/lottie/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 120
    .local v9, "characterHash":I
    iget-object v2, p0, Lcom/airbnb/lottie/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/FontCharacter;

    .line 121
    .local v3, "character":Lcom/airbnb/lottie/FontCharacter;
    if-nez v3, :cond_0

    .line 117
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    .line 125
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/TextLayer;->drawCharacterAsGlyph(Lcom/airbnb/lottie/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/DocumentData;Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {v3}, Lcom/airbnb/lottie/FontCharacter;->getWidth()D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v2, v5

    iget-object v4, p0, Lcom/airbnb/lottie/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    mul-float/2addr v2, v4

    mul-float v14, v2, v11

    .line 128
    .local v14, "tx":F
    move-object/from16 v0, p1

    iget v2, v0, Lcom/airbnb/lottie/DocumentData;->tracking:I

    int-to-float v2, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float v13, v2, v4

    .line 129
    .local v13, "tracking":F
    iget-object v2, p0, Lcom/airbnb/lottie/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/airbnb/lottie/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v13, v2

    .line 132
    :cond_1
    mul-float v2, v13, v11

    add-float/2addr v14, v2

    .line 133
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 135
    .end local v3    # "character":Lcom/airbnb/lottie/FontCharacter;
    .end local v8    # "c":C
    .end local v9    # "characterHash":I
    .end local v13    # "tracking":F
    .end local v14    # "tx":F
    :cond_2
    return-void
.end method

.method private drawTextWithFont(Lcom/airbnb/lottie/DocumentData;Lcom/airbnb/lottie/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "documentData"    # Lcom/airbnb/lottie/DocumentData;
    .param p2, "font"    # Lcom/airbnb/lottie/Font;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    invoke-static/range {p3 .. p3}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v4

    .line 140
    .local v4, "parentScale":F
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/Font;->getFamily()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/Font;->getStyle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 141
    .local v9, "typeface":Landroid/graphics/Typeface;
    if-nez v9, :cond_1

    .line 166
    :cond_0
    return-void

    .line 144
    :cond_1
    iget-object v5, p1, Lcom/airbnb/lottie/DocumentData;->text:Ljava/lang/String;

    .line 145
    .local v5, "text":Ljava/lang/String;
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    move-result-object v6

    .line 146
    .local v6, "textDelegate":Lcom/airbnb/lottie/TextDelegate;
    if-eqz v6, :cond_2

    .line 147
    invoke-virtual {v6, v5}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    :cond_2
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 150
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v11, p1, Lcom/airbnb/lottie/DocumentData;->size:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/airbnb/lottie/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 152
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 155
    .local v2, "character":C
    move-object/from16 v0, p4

    invoke-direct {p0, v2, p1, v0}, Lcom/airbnb/lottie/TextLayer;->drawCharacterFromFont(CLcom/airbnb/lottie/DocumentData;Landroid/graphics/Canvas;)V

    .line 156
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->tempCharArray:[C

    const/4 v11, 0x0

    aput-char v2, v10, v11

    .line 157
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/airbnb/lottie/TextLayer;->tempCharArray:[C

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 159
    .local v1, "charWidth":F
    iget v10, p1, Lcom/airbnb/lottie/DocumentData;->tracking:I

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float v7, v10, v11

    .line 160
    .local v7, "tracking":F
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    if-eqz v10, :cond_3

    .line 161
    iget-object v10, p0, Lcom/airbnb/lottie/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v7, v10

    .line 163
    :cond_3
    mul-float v10, v7, v4

    add-float v8, v1, v10

    .line 164
    .local v8, "tx":F
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getContentsForCharacter(Lcom/airbnb/lottie/FontCharacter;)Ljava/util/List;
    .locals 7
    .param p1, "character"    # Lcom/airbnb/lottie/FontCharacter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/FontCharacter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ContentGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v5, p0, Lcom/airbnb/lottie/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/airbnb/lottie/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 228
    :goto_0
    return-object v5

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v3

    .line 221
    .local v3, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/ShapeGroup;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 222
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/ContentGroup;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 224
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/ShapeGroup;

    .line 225
    .local v2, "sg":Lcom/airbnb/lottie/ShapeGroup;
    new-instance v5, Lcom/airbnb/lottie/ContentGroup;

    iget-object v6, p0, Lcom/airbnb/lottie/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v5, v6, p0, v2}, Lcom/airbnb/lottie/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeGroup;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    .end local v2    # "sg":Lcom/airbnb/lottie/ShapeGroup;
    :cond_1
    iget-object v5, p0, Lcom/airbnb/lottie/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    .line 228
    goto :goto_0
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->textAnimation:Lcom/airbnb/lottie/TextKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/DocumentData;

    .line 78
    .local v0, "documentData":Lcom/airbnb/lottie/DocumentData;
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/airbnb/lottie/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/Font;

    .line 79
    .local v1, "font":Lcom/airbnb/lottie/Font;
    if-nez v1, :cond_1

    .line 108
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    if-eqz v3, :cond_2

    .line 85
    iget-object v4, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    if-eqz v3, :cond_3

    .line 90
    iget-object v4, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    :goto_2
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    if-eqz v3, :cond_4

    .line 95
    iget-object v4, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    :goto_3
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/airbnb/lottie/TextLayer;->drawTextGlyphs(Lcom/airbnb/lottie/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/Font;Landroid/graphics/Canvas;)V

    .line 107
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/airbnb/lottie/DocumentData;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/airbnb/lottie/DocumentData;->strokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 97
    :cond_4
    invoke-static {p2}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    .line 98
    .local v2, "parentScale":F
    iget-object v3, p0, Lcom/airbnb/lottie/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/airbnb/lottie/DocumentData;->strokeWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/airbnb/lottie/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 104
    .end local v2    # "parentScale":F
    :cond_5
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/airbnb/lottie/TextLayer;->drawTextWithFont(Lcom/airbnb/lottie/DocumentData;Lcom/airbnb/lottie/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    goto :goto_4
.end method
