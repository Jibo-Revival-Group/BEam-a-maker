.class Lcom/airbnb/lottie/FontCharacter;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/FontCharacter$Factory;
    }
.end annotation


# instance fields
.field private final character:C

.field private final fontFamily:Ljava/lang/String;

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ShapeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field private final style:Ljava/lang/String;

.field private final width:D


# direct methods
.method constructor <init>(Ljava/util/List;CIDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "character"    # C
    .param p3, "size"    # I
    .param p4, "width"    # D
    .param p6, "style"    # Ljava/lang/String;
    .param p7, "fontFamily"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ShapeGroup;",
            ">;CID",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/ShapeGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/airbnb/lottie/FontCharacter;->shapes:Ljava/util/List;

    .line 30
    iput-char p2, p0, Lcom/airbnb/lottie/FontCharacter;->character:C

    .line 31
    iput p3, p0, Lcom/airbnb/lottie/FontCharacter;->size:I

    .line 32
    iput-wide p4, p0, Lcom/airbnb/lottie/FontCharacter;->width:D

    .line 33
    iput-object p6, p0, Lcom/airbnb/lottie/FontCharacter;->style:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/airbnb/lottie/FontCharacter;->fontFamily:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "character"    # C
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "result":I
    add-int/lit8 v0, p0, 0x0

    .line 15
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 16
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 17
    return v0
.end method


# virtual methods
.method getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ShapeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/FontCharacter;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/airbnb/lottie/FontCharacter;->size:I

    return v0
.end method

.method getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/FontCharacter;->style:Ljava/lang/String;

    return-object v0
.end method

.method getWidth()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/airbnb/lottie/FontCharacter;->width:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 75
    iget-char v0, p0, Lcom/airbnb/lottie/FontCharacter;->character:C

    iget-object v1, p0, Lcom/airbnb/lottie/FontCharacter;->fontFamily:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/FontCharacter;->style:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
