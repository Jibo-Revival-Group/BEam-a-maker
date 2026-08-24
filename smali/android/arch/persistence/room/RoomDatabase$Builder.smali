.class public Landroid/arch/persistence/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/arch/persistence/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllowMainThreadQueries:Z

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

.field private mJournalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

.field private final mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

.field private mMigrationStartAndEndVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMigrationsNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mRequireMigration:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    .line 426
    iput-object p2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    .line 427
    iput-object p3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    .line 428
    sget-object v0, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mJournalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mRequireMigration:Z

    .line 430
    new-instance v0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-direct {v0}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    .line 431
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/arch/persistence/room/RoomDatabase$Callback;)Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 1
    .param p1, "callback"    # Landroid/arch/persistence/room/RoomDatabase$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ")",
            "Landroid/arch/persistence/room/RoomDatabase$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    .line 584
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    return-object p0
.end method

.method public varargs addMigrations([Landroid/arch/persistence/room/migration/Migration;)Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 5
    .param p1, "migrations"    # [Landroid/arch/persistence/room/migration/Migration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/arch/persistence/room/migration/Migration;",
            ")",
            "Landroid/arch/persistence/room/RoomDatabase$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 468
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    .line 470
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 471
    .local v0, "migration":Landroid/arch/persistence/room/migration/Migration;
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    iget v4, v0, Landroid/arch/persistence/room/migration/Migration;->startVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    iget v4, v0, Landroid/arch/persistence/room/migration/Migration;->endVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    .end local v0    # "migration":Landroid/arch/persistence/room/migration/Migration;
    :cond_1
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->addMigrations([Landroid/arch/persistence/room/migration/Migration;)V

    .line 476
    return-object p0
.end method

.method public allowMainThreadQueries()Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/persistence/room/RoomDatabase$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mAllowMainThreadQueries:Z

    .line 494
    return-object p0
.end method

.method public build()Landroid/arch/persistence/room/RoomDatabase;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 600
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_0
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 604
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_1
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 609
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 610
    .local v11, "version":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    .end local v11    # "version":Ljava/lang/Integer;
    :cond_3
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    if-nez v1, :cond_4

    .line 623
    new-instance v1, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    iput-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    .line 625
    :cond_4
    new-instance v0, Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    iget-object v4, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    iget-object v5, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    iget-boolean v6, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mAllowMainThreadQueries:Z

    iget-object v7, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mJournalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    iget-object v8, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    .line 628
    invoke-virtual {v7, v8}, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->resolve(Landroid/content/Context;)Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    move-result-object v7

    iget-boolean v8, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mRequireMigration:Z

    iget-object v9, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    invoke-direct/range {v0 .. v9}, Landroid/arch/persistence/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroid/arch/persistence/room/RoomDatabase$JournalMode;ZLjava/util/Set;)V

    .line 630
    .local v0, "configuration":Landroid/arch/persistence/room/DatabaseConfiguration;
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    const-string v2, "_Impl"

    invoke-static {v1, v2}, Landroid/arch/persistence/room/Room;->getGeneratedImplementation(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/arch/persistence/room/RoomDatabase;

    .line 631
    .local v10, "db":Landroid/arch/persistence/room/RoomDatabase;, "TT;"
    invoke-virtual {v10, v0}, Landroid/arch/persistence/room/RoomDatabase;->init(Landroid/arch/persistence/room/DatabaseConfiguration;)V

    .line 632
    return-object v10
.end method

.method public fallbackToDestructiveMigration()Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/persistence/room/RoomDatabase$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mRequireMigration:Z

    .line 538
    return-object p0
.end method

.method public varargs fallbackToDestructiveMigrationFrom([I)Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 5
    .param p1, "startVersions"    # [I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroid/arch/persistence/room/RoomDatabase$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 565
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    .line 567
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p1, v1

    .line 568
    .local v0, "startVersion":I
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "startVersion":I
    :cond_1
    return-object p0
.end method

.method public openHelperFactory(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;)Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "factory"    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;",
            ")",
            "Landroid/arch/persistence/room/RoomDatabase$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    .line 443
    return-object p0
.end method

.method public setJournalMode(Landroid/arch/persistence/room/RoomDatabase$JournalMode;)Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 0
    .param p1, "journalMode"    # Landroid/arch/persistence/room/RoomDatabase$JournalMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/room/RoomDatabase$JournalMode;",
            ")",
            "Landroid/arch/persistence/room/RoomDatabase$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Landroid/arch/persistence/room/RoomDatabase$Builder;, "Landroid/arch/persistence/room/RoomDatabase$Builder<TT;>;"
    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mJournalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    .line 515
    return-object p0
.end method
