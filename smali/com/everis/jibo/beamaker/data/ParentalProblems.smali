.class public final enum Lcom/everis/jibo/beamaker/data/ParentalProblems;
.super Ljava/lang/Enum;
.source "ParentalProblems.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/everis/jibo/beamaker/data/ParentalProblems;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0012\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/data/ParentalProblems;",
        "",
        "problem",
        "",
        "options",
        "",
        "solution",
        "(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V",
        "getOptions",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getProblem",
        "()Ljava/lang/String;",
        "getSolution",
        "Problem1",
        "Problem2",
        "Problem3",
        "Problem4",
        "Problem5",
        "Problem6",
        "Problem7",
        "Problem8",
        "Problem9",
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
.field private static final synthetic $VALUES:[Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem1:Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem2:Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem3:Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem4:Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem5:Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem6:Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem7:Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem8:Lcom/everis/jibo/beamaker/data/ParentalProblems;

.field public static final enum Problem9:Lcom/everis/jibo/beamaker/data/ParentalProblems;


# instance fields
.field private final options:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final problem:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final solution:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x9

    new-array v9, v0, [Lcom/everis/jibo/beamaker/data/ParentalProblems;

    new-instance v0, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v1, "Problem1"

    .line 10
    const-string v3, "4 x 5 = ?"

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "9"

    aput-object v5, v4, v2

    const-string v5, "24"

    aput-object v5, v4, v10

    const-string v5, "20"

    aput-object v5, v4, v11

    const-string v5, "45"

    aput-object v5, v4, v12

    const-string v5, "20"

    invoke-direct/range {v0 .. v5}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem1:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v0, v9, v2

    new-instance v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v4, "Problem2"

    .line 11
    const-string v6, "4 x 6 = ?"

    new-array v7, v13, [Ljava/lang/String;

    const-string v0, "22"

    aput-object v0, v7, v2

    const-string v0, "24"

    aput-object v0, v7, v10

    const-string v0, "46"

    aput-object v0, v7, v11

    const-string v0, "10"

    aput-object v0, v7, v12

    const-string v8, "24"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem2:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v3, v9, v10

    new-instance v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v4, "Problem3"

    .line 12
    const-string v6, "3 x 5 = ?"

    new-array v7, v13, [Ljava/lang/String;

    const-string v0, "35"

    aput-object v0, v7, v2

    const-string v0, "8"

    aput-object v0, v7, v10

    const-string v0, "15"

    aput-object v0, v7, v11

    const-string v0, "10"

    aput-object v0, v7, v12

    const-string v8, "15"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem3:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v3, v9, v11

    new-instance v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v4, "Problem4"

    .line 13
    const-string v6, "3 x 6 = ?"

    new-array v7, v13, [Ljava/lang/String;

    const-string v0, "18"

    aput-object v0, v7, v2

    const-string v0, "8"

    aput-object v0, v7, v10

    const-string v0, "9"

    aput-object v0, v7, v11

    const-string v0, "36"

    aput-object v0, v7, v12

    const-string v8, "18"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem4:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v3, v9, v12

    new-instance v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v4, "Problem5"

    .line 14
    const-string v6, "89 x 0 = ?"

    new-array v7, v13, [Ljava/lang/String;

    const-string v0, "18"

    aput-object v0, v7, v2

    const-string v0, "8"

    aput-object v0, v7, v10

    const-string v0, "89"

    aput-object v0, v7, v11

    const-string v0, "0"

    aput-object v0, v7, v12

    const-string v8, "0"

    move v5, v13

    invoke-direct/range {v3 .. v8}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem5:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v3, v9, v13

    const/4 v0, 0x5

    new-instance v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v4, "Problem6"

    const/4 v5, 0x5

    .line 15
    const-string v6, "5 x 5 = ?"

    new-array v7, v13, [Ljava/lang/String;

    const-string v1, "15"

    aput-object v1, v7, v2

    const-string v1, "55"

    aput-object v1, v7, v10

    const-string v1, "25"

    aput-object v1, v7, v11

    const-string v1, "10"

    aput-object v1, v7, v12

    const-string v8, "25"

    invoke-direct/range {v3 .. v8}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem6:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v3, v9, v0

    const/4 v0, 0x6

    new-instance v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v4, "Problem7"

    const/4 v5, 0x6

    .line 16
    const-string v6, "8 x 3 = ?"

    new-array v7, v13, [Ljava/lang/String;

    const-string v1, "16"

    aput-object v1, v7, v2

    const-string v1, "83"

    aput-object v1, v7, v10

    const-string v1, "11"

    aput-object v1, v7, v11

    const-string v1, "24"

    aput-object v1, v7, v12

    const-string v8, "24"

    invoke-direct/range {v3 .. v8}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem7:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v3, v9, v0

    const/4 v0, 0x7

    new-instance v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v4, "Problem8"

    const/4 v5, 0x7

    .line 17
    const-string v6, "11 x 2 = ?"

    new-array v7, v13, [Ljava/lang/String;

    const-string v1, "22"

    aput-object v1, v7, v2

    const-string v1, "13"

    aput-object v1, v7, v10

    const-string v1, "31"

    aput-object v1, v7, v11

    const-string v1, "21"

    aput-object v1, v7, v12

    const-string v8, "22"

    invoke-direct/range {v3 .. v8}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem8:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v3, v9, v0

    const/16 v6, 0x8

    new-instance v0, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    const-string v1, "Problem9"

    const/16 v7, 0x8

    .line 18
    const-string v3, "10 x 3 = ?"

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "30"

    aput-object v5, v4, v2

    const-string v2, "13"

    aput-object v2, v4, v10

    const-string v2, "31"

    aput-object v2, v4, v11

    const-string v2, "24"

    aput-object v2, v4, v12

    const-string v5, "30"

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/everis/jibo/beamaker/data/ParentalProblems;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem9:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    aput-object v0, v9, v6

    sput-object v9, Lcom/everis/jibo/beamaker/data/ParentalProblems;->$VALUES:[Lcom/everis/jibo/beamaker/data/ParentalProblems;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$enum_name_or_ordinal$1"    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "problem"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "options"    # [Ljava/lang/String;
    .param p5, "solution"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "problem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "solution"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->problem:Ljava/lang/String;

    iput-object p4, p0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->options:[Ljava/lang/String;

    iput-object p5, p0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->solution:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/everis/jibo/beamaker/data/ParentalProblems;
    .locals 1

    const-class v0, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/everis/jibo/beamaker/data/ParentalProblems;

    return-object v0
.end method

.method public static values()[Lcom/everis/jibo/beamaker/data/ParentalProblems;
    .locals 1

    sget-object v0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->$VALUES:[Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v0}, [Lcom/everis/jibo/beamaker/data/ParentalProblems;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/everis/jibo/beamaker/data/ParentalProblems;

    return-object v0
.end method


# virtual methods
.method public final getOptions()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->options:[Ljava/lang/String;

    return-object v0
.end method

.method public final getProblem()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->problem:Ljava/lang/String;

    return-object v0
.end method

.method public final getSolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ParentalProblems;->solution:Ljava/lang/String;

    return-object v0
.end method
