.class public final enum Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
.super Ljava/lang/Enum;
.source "RotationConvention.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

.field public static final enum FRAME_TRANSFORM:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

.field public static final enum VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    const-string v1, "VECTOR_OPERATOR"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    .line 77
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    const-string v1, "FRAME_TRANSFORM"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->FRAME_TRANSFORM:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->FRAME_TRANSFORM:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->$VALUES:[Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->$VALUES:[Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    return-object v0
.end method
