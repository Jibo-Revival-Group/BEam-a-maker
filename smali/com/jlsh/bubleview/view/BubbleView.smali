.class public final Lcom/jlsh/bubleview/view/BubbleView;
.super Landroid/widget/FrameLayout;
.source "BubbleView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBubbleView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleView.kt\ncom/jlsh/bubleview/view/BubbleView\n*L\n1#1,145:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0006\u0010%\u001a\u00020&J\u0016\u0010\'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0007J\u0016\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020+J\u0006\u0010.\u001a\u00020&J\u0006\u0010\u001f\u001a\u00020&R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u0011\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000c\"\u0004\u0008\u001b\u0010\u000eR\u001a\u0010\u001c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000c\"\u0004\u0008\u001e\u0010\u000eR\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006/"
    }
    d2 = {
        "Lcom/jlsh/bubleview/view/BubbleView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "mH",
        "getMH",
        "()I",
        "setMH",
        "(I)V",
        "mMaxX",
        "getMMaxX",
        "setMMaxX",
        "mMaxY",
        "getMMaxY",
        "setMMaxY",
        "mRandom",
        "Ljava/util/Random;",
        "getMRandom",
        "()Ljava/util/Random;",
        "mRes",
        "getMRes",
        "setMRes",
        "mW",
        "getMW",
        "setMW",
        "stop",
        "",
        "getStop",
        "()Z",
        "setStop",
        "(Z)V",
        "generateViews",
        "",
        "randDuration",
        "from",
        "to",
        "randFloat",
        "",
        "min",
        "max",
        "start",
        "bubleview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private mH:I

.field private mMaxX:I

.field private mMaxY:I

.field private final mRandom:Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mRes:I

.field private mW:I

.field private stop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/jlsh/bubleview/view/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/jlsh/bubleview/view/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/jlsh/bubleview/view/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcom/jlsh/bubleview/view/BubbleView;->mRandom:Ljava/util/Random;

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jlsh/bubleview/view/BubbleView;->stop:Z

    .line 34
    sget v2, Lcom/jlsh/bubleview/R$drawable;->dw_circle_shape:I

    iput v2, p0, Lcom/jlsh/bubleview/view/BubbleView;->mRes:I

    .line 35
    sget v2, Lcom/jlsh/bubleview/R$dimen;->size:I

    iput v2, p0, Lcom/jlsh/bubleview/view/BubbleView;->mW:I

    .line 36
    sget v2, Lcom/jlsh/bubleview/R$dimen;->size:I

    iput v2, p0, Lcom/jlsh/bubleview/view/BubbleView;->mH:I

    .line 40
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 42
    .local v0, "it":Landroid/util/AttributeSet;
    sget-object v2, Lcom/jlsh/bubleview/R$styleable;->bubble_attributes:[I

    .line 41
    invoke-virtual {p1, v0, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/jlsh/bubleview/R$styleable;->bubble_attributes_bubble_icon:I

    sget v3, Lcom/jlsh/bubleview/R$drawable;->dw_circle_shape:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/jlsh/bubleview/view/BubbleView;->mRes:I

    .line 45
    sget v2, Lcom/jlsh/bubleview/R$styleable;->bubble_attributes_bubble_width:I

    sget v3, Lcom/jlsh/bubleview/R$dimen;->size:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/jlsh/bubleview/view/BubbleView;->mW:I

    .line 46
    sget v2, Lcom/jlsh/bubleview/R$styleable;->bubble_attributes_bubble_height:I

    sget v3, Lcom/jlsh/bubleview/R$dimen;->size:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/jlsh/bubleview/view/BubbleView;->mH:I

    .line 48
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    nop

    nop

    .line 40
    .end local v0    # "it":Landroid/util/AttributeSet;
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const/4 v1, 0x0

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2

    .line 25
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    :goto_0
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_0

    move p3, v1

    .line 26
    :cond_0
    and-int/lit8 v2, p5, 0x8

    if-eqz v2, :cond_1

    move p4, v1

    .line 27
    :cond_1
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/jlsh/bubleview/view/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public final generateViews()V
    .locals 23

    .prologue
    .line 66
    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/jlsh/bubleview/view/BubbleView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v11, "mView":Landroid/widget/ImageView;
    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/jlsh/bubleview/view/BubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jlsh/bubleview/view/BubbleView;->mW:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/jlsh/bubleview/view/BubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jlsh/bubleview/view/BubbleView;->mH:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    invoke-direct/range {v18 .. v20}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v18, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jlsh/bubleview/view/BubbleView;->mRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v18, v11

    .line 70
    check-cast v18, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jlsh/bubleview/view/BubbleView;->addView(Landroid/view/View;)V

    .line 72
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jlsh/bubleview/view/BubbleView;->mMaxX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    move-result v9

    .line 73
    .local v9, "initPosX":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jlsh/bubleview/view/BubbleView;->mMaxY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    move-result v10

    .line 75
    .local v10, "initPosY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jlsh/bubleview/view/BubbleView;->mMaxX:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    if-ge v9, v0, :cond_0

    .line 80
    const/16 v18, 0x1

    add-int/lit8 v19, v9, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    move-result v5

    .line 81
    .local v5, "finPosX":I
    const/16 v18, 0x1

    add-int/lit8 v19, v10, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    move-result v6

    .line 86
    .local v6, "finPosY":I
    :goto_0
    const-string v18, "translationX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v9

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    int-to-float v0, v5

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 89
    .local v7, "firstMoveX":Landroid/animation/PropertyValuesHolder;
    const-string v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v10

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    int-to-float v0, v6

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 91
    .local v8, "firstMoveY":Landroid/animation/PropertyValuesHolder;
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3fb33333    # 1.4f

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randFloat(FF)F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randFloat(FF)F

    move-result v14

    .line 92
    .local v14, "scaleValue":F
    const-string v18, "alpha"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 93
    .local v4, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v18, "rotation"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    const/high16 v21, 0x41200000    # 10.0f

    const/high16 v22, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randFloat(FF)F

    move-result v21

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 94
    .local v13, "rotate":Landroid/animation/PropertyValuesHolder;
    const-string v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f000000    # 0.5f

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v14, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 95
    .local v15, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f000000    # 0.5f

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v14, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 97
    .local v16, "scaleY":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v15, v18, v19

    const/16 v19, 0x3

    aput-object v16, v18, v19

    const/16 v19, 0x4

    aput-object v4, v18, v19

    const/16 v19, 0x5

    aput-object v13, v18, v19

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 98
    .local v17, "secuence":Landroid/animation/ObjectAnimator;
    const-string v18, "secuence"

    invoke-static/range {v17 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x5dc

    const/16 v19, 0xdac

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 102
    .local v12, "multipleAnimation":Landroid/animation/AnimatorSet;
    check-cast v17, Landroid/animation/Animator;

    .end local v17    # "secuence":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 103
    new-instance v18, Lcom/jlsh/bubleview/view/BubbleView$generateViews$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jlsh/bubleview/view/BubbleView$generateViews$1;-><init>(Lcom/jlsh/bubleview/view/BubbleView;)V

    check-cast v18, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v18, Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 119
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/jlsh/bubleview/view/BubbleView$generateViews$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jlsh/bubleview/view/BubbleView$generateViews$2;-><init>(Lcom/jlsh/bubleview/view/BubbleView;)V

    check-cast v18, Ljava/lang/Runnable;

    .line 122
    const/16 v20, 0xfa

    const/16 v21, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 119
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void

    .line 84
    .end local v4    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "finPosX":I
    .end local v6    # "finPosY":I
    .end local v7    # "firstMoveX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "firstMoveY":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "multipleAnimation":Landroid/animation/AnimatorSet;
    .end local v13    # "rotate":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "scaleValue":F
    .end local v15    # "scaleX":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "scaleY":Landroid/animation/PropertyValuesHolder;
    :cond_0
    add-int/lit8 v18, v9, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    move-result v5

    .line 85
    .restart local v5    # "finPosX":I
    add-int/lit8 v18, v10, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    move-result v6

    .restart local v6    # "finPosY":I
    goto/16 :goto_0

    .line 92
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getMH()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->mH:I

    return v0
.end method

.method public final getMMaxX()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->mMaxX:I

    return v0
.end method

.method public final getMMaxY()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->mMaxY:I

    return v0
.end method

.method public final getMRandom()Ljava/util/Random;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method public final getMRes()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->mRes:I

    return v0
.end method

.method public final getMW()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->mW:I

    return v0
.end method

.method public final getStop()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->stop:Z

    return v0
.end method

.method public final randDuration(II)I
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 128
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 129
    :cond_0
    mul-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jlsh/bubleview/view/BubbleView;->randDuration(II)I

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->mRandom:Ljava/util/Random;

    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final randFloat(FF)F
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p2, p1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public final setMH(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/jlsh/bubleview/view/BubbleView;->mH:I

    return-void
.end method

.method public final setMMaxX(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/jlsh/bubleview/view/BubbleView;->mMaxX:I

    return-void
.end method

.method public final setMMaxY(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/jlsh/bubleview/view/BubbleView;->mMaxY:I

    return-void
.end method

.method public final setMRes(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/jlsh/bubleview/view/BubbleView;->mRes:I

    return-void
.end method

.method public final setMW(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/jlsh/bubleview/view/BubbleView;->mW:I

    return-void
.end method

.method public final setStop(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/jlsh/bubleview/view/BubbleView;->stop:Z

    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/jlsh/bubleview/view/BubbleView$start$1;

    invoke-direct {v0, p0}, Lcom/jlsh/bubleview/view/BubbleView$start$1;-><init>(Lcom/jlsh/bubleview/view/BubbleView;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jlsh/bubleview/view/BubbleView;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jlsh/bubleview/view/BubbleView;->stop:Z

    .line 142
    invoke-virtual {p0}, Lcom/jlsh/bubleview/view/BubbleView;->removeAllViews()V

    .line 143
    return-void
.end method
