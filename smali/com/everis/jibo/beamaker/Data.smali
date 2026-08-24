.class public final Lcom/everis/jibo/beamaker/Data;
.super Ljava/lang/Object;
.source "Data.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/Data;",
        "",
        "()V",
        "mAny",
        "getMAny",
        "()Ljava/lang/Object;",
        "setMAny",
        "(Ljava/lang/Object;)V",
        "mAuth",
        "Lcom/everis/jibo/beamaker/data/Auth;",
        "getMAuth",
        "()Lcom/everis/jibo/beamaker/data/Auth;",
        "setMAuth",
        "(Lcom/everis/jibo/beamaker/data/Auth;)V",
        "mLoginResponse",
        "Lcom/everis/jibo/beamaker/data/LoginResponse;",
        "getMLoginResponse",
        "()Lcom/everis/jibo/beamaker/data/LoginResponse;",
        "setMLoginResponse",
        "(Lcom/everis/jibo/beamaker/data/LoginResponse;)V",
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
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/Data;

.field private static mAny:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mAuth:Lcom/everis/jibo/beamaker/data/Auth;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mLoginResponse:Lcom/everis/jibo/beamaker/data/LoginResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/everis/jibo/beamaker/Data;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/Data;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/Data;->INSTANCE:Lcom/everis/jibo/beamaker/Data;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMAny()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/everis/jibo/beamaker/Data;->mAny:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMAuth()Lcom/everis/jibo/beamaker/data/Auth;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/everis/jibo/beamaker/Data;->mAuth:Lcom/everis/jibo/beamaker/data/Auth;

    return-object v0
.end method

.method public final getMLoginResponse()Lcom/everis/jibo/beamaker/data/LoginResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 11
    sget-object v0, Lcom/everis/jibo/beamaker/Data;->mLoginResponse:Lcom/everis/jibo/beamaker/data/LoginResponse;

    return-object v0
.end method

.method public final setMAny(Ljava/lang/Object;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    sput-object p1, Lcom/everis/jibo/beamaker/Data;->mAny:Ljava/lang/Object;

    return-void
.end method

.method public final setMAuth(Lcom/everis/jibo/beamaker/data/Auth;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/data/Auth;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 12
    sput-object p1, Lcom/everis/jibo/beamaker/Data;->mAuth:Lcom/everis/jibo/beamaker/data/Auth;

    return-void
.end method

.method public final setMLoginResponse(Lcom/everis/jibo/beamaker/data/LoginResponse;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/data/LoginResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 11
    sput-object p1, Lcom/everis/jibo/beamaker/Data;->mLoginResponse:Lcom/everis/jibo/beamaker/data/LoginResponse;

    return-void
.end method
