.class Lcom/airbnb/lottie/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/DocumentData$Factory;
    }
.end annotation


# instance fields
.field color:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field fontName:Ljava/lang/String;

.field justification:I

.field lineHeight:D

.field size:I

.field strokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field strokeOverFill:Z

.field strokeWidth:I

.field text:Ljava/lang/String;

.field tracking:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIDIIIZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "justification"    # I
    .param p5, "tracking"    # I
    .param p6, "lineHeight"    # D
    .param p8, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p9, "strokeColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p10, "strokeWidth"    # I
    .param p11, "strokeOverFill"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/airbnb/lottie/DocumentData;->text:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/airbnb/lottie/DocumentData;->fontName:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/airbnb/lottie/DocumentData;->size:I

    .line 29
    iput p4, p0, Lcom/airbnb/lottie/DocumentData;->justification:I

    .line 30
    iput p5, p0, Lcom/airbnb/lottie/DocumentData;->tracking:I

    .line 31
    iput-wide p6, p0, Lcom/airbnb/lottie/DocumentData;->lineHeight:D

    .line 32
    iput p8, p0, Lcom/airbnb/lottie/DocumentData;->color:I

    .line 33
    iput p9, p0, Lcom/airbnb/lottie/DocumentData;->strokeColor:I

    .line 34
    iput p10, p0, Lcom/airbnb/lottie/DocumentData;->strokeWidth:I

    .line 35
    iput-boolean p11, p0, Lcom/airbnb/lottie/DocumentData;->strokeOverFill:Z

    .line 36
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 6

    .prologue
    .line 88
    iget-object v1, p0, Lcom/airbnb/lottie/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 89
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/airbnb/lottie/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 90
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/airbnb/lottie/DocumentData;->size:I

    add-int v0, v1, v4

    .line 91
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/airbnb/lottie/DocumentData;->justification:I

    add-int v0, v1, v4

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/airbnb/lottie/DocumentData;->tracking:I

    add-int v0, v1, v4

    .line 93
    iget-wide v4, p0, Lcom/airbnb/lottie/DocumentData;->lineHeight:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 94
    .local v2, "temp":J
    mul-int/lit8 v1, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/airbnb/lottie/DocumentData;->color:I

    add-int v0, v1, v4

    .line 96
    return v0
.end method

.method set(Lcom/airbnb/lottie/DocumentData;)V
    .locals 2
    .param p1, "documentData"    # Lcom/airbnb/lottie/DocumentData;

    .prologue
    .line 39
    iget-object v0, p1, Lcom/airbnb/lottie/DocumentData;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/DocumentData;->text:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/airbnb/lottie/DocumentData;->fontName:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/DocumentData;->fontName:Ljava/lang/String;

    .line 41
    iget v0, p1, Lcom/airbnb/lottie/DocumentData;->size:I

    iput v0, p0, Lcom/airbnb/lottie/DocumentData;->size:I

    .line 42
    iget v0, p1, Lcom/airbnb/lottie/DocumentData;->justification:I

    iput v0, p0, Lcom/airbnb/lottie/DocumentData;->justification:I

    .line 43
    iget v0, p1, Lcom/airbnb/lottie/DocumentData;->tracking:I

    iput v0, p0, Lcom/airbnb/lottie/DocumentData;->tracking:I

    .line 44
    iget-wide v0, p1, Lcom/airbnb/lottie/DocumentData;->lineHeight:D

    iput-wide v0, p0, Lcom/airbnb/lottie/DocumentData;->lineHeight:D

    .line 45
    iget v0, p1, Lcom/airbnb/lottie/DocumentData;->color:I

    iput v0, p0, Lcom/airbnb/lottie/DocumentData;->color:I

    .line 46
    return-void
.end method
