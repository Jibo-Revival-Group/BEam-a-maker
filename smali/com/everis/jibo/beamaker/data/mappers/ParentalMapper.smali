.class public final Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;
.super Ljava/lang/Object;
.source "ParentalMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;",
        "",
        "()V",
        "getParentalProblem",
        "Lcom/everis/jibo/beamaker/data/Parental;",
        "rand",
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
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getParentalProblem()Lcom/everis/jibo/beamaker/data/Parental;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/data/mappers/ParentalMapper;->rand()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 28
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem1:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem1:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem1:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem1:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem1:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem1:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :pswitch_1
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem2:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem2:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem2:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :pswitch_2
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem3:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem3:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem3:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_3
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem4:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem4:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem4:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_4
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem5:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem5:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem5:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :pswitch_5
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem6:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem6:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem6:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 25
    :pswitch_6
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem7:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem7:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem7:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 26
    :pswitch_7
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem8:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem8:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem8:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27
    :pswitch_8
    new-instance v0, Lcom/everis/jibo/beamaker/data/Parental;

    sget-object v1, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem9:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getProblem()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem9:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getOptions()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/data/ParentalProblems;->Problem9:Lcom/everis/jibo/beamaker/data/ParentalProblems;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/data/ParentalProblems;->getSolution()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/data/Parental;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final rand()I
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
