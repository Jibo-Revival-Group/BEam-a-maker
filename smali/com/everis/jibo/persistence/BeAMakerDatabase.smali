.class public abstract Lcom/everis/jibo/persistence/BeAMakerDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "BeAMakerDatabase.kt"


# annotations
.annotation build Landroid/arch/persistence/room/Database;
    entities = {
        Lcom/everis/jibo/persistence/CoolIdea;,
        Lcom/everis/jibo/persistence/Project;
    }
    exportSchema = false
    version = 0x1
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/everis/jibo/persistence/BeAMakerDatabase;",
        "Landroid/arch/persistence/room/RoomDatabase;",
        "()V",
        "projectDao",
        "Lcom/everis/jibo/persistence/ProjectDao;",
        "persistence_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract projectDao()Lcom/everis/jibo/persistence/ProjectDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
