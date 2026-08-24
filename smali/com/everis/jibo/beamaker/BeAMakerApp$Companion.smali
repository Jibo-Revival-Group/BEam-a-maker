.class public final Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;
.super Ljava/lang/Object;
.source "BeAMakerApp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/BeAMakerApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;",
        "",
        "()V",
        "appDatabase",
        "Lcom/everis/jibo/persistence/BeAMakerDatabase;",
        "getAppDatabase",
        "()Lcom/everis/jibo/persistence/BeAMakerDatabase;",
        "setAppDatabase",
        "(Lcom/everis/jibo/persistence/BeAMakerDatabase;)V",
        "coolIdeas",
        "",
        "Lcom/everis/jibo/persistence/CoolIdea;",
        "getCoolIdeas",
        "()Ljava/util/List;",
        "setCoolIdeas",
        "(Ljava/util/List;)V",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/BeAMakerApp$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppDatabase()Lcom/everis/jibo/persistence/BeAMakerDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/everis/jibo/beamaker/BeAMakerApp;->access$getAppDatabase$cp()Lcom/everis/jibo/persistence/BeAMakerDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final getCoolIdeas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/CoolIdea;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Lcom/everis/jibo/beamaker/BeAMakerApp;->access$getCoolIdeas$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final setAppDatabase(Lcom/everis/jibo/persistence/BeAMakerDatabase;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/persistence/BeAMakerDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/everis/jibo/beamaker/BeAMakerApp;->access$setAppDatabase$cp(Lcom/everis/jibo/persistence/BeAMakerDatabase;)V

    return-void
.end method

.method public final setCoolIdeas(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/CoolIdea;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/everis/jibo/beamaker/BeAMakerApp;->access$setCoolIdeas$cp(Ljava/util/List;)V

    return-void
.end method
