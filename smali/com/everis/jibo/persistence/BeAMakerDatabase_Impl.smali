.class public Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;
.super Lcom/everis/jibo/persistence/BeAMakerDatabase;
.source "BeAMakerDatabase_Impl.java"


# instance fields
.field private volatile _projectDao:Lcom/everis/jibo/persistence/ProjectDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/everis/jibo/persistence/BeAMakerDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;
    .param p1, "x1"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;
    .param p1, "x1"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->assertNotMainThread()V

    .line 116
    invoke-super {p0}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 118
    .local v0, "_db":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->beginTransaction()V

    .line 119
    const-string v1, "DELETE FROM `coolideas`"

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v1, "DELETE FROM `projects`"

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    invoke-super {p0}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-super {p0}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->endTransaction()V

    .line 124
    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string v1, "VACUUM"

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void

    .line 123
    :catchall_0
    move-exception v1

    invoke-super {p0}, Lcom/everis/jibo/persistence/BeAMakerDatabase;->endTransaction()V

    .line 124
    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 125
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    const-string v2, "VACUUM"

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "coolideas"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "projects"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 6
    .param p1, "configuration"    # Landroid/arch/persistence/room/DatabaseConfiguration;

    .prologue
    .line 28
    new-instance v1, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v3, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;-><init>(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;I)V

    const-string v4, "7e1ad23892be564bed96ee1560543523"

    const-string v5, "6a4ca9dade9b2f7d4b27b7f0be67b0f3"

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v1, "_openCallback":Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
    iget-object v3, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v3

    iget-object v4, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 101
    invoke-virtual {v3, v4}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v3

    .line 102
    invoke-virtual {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v2

    .line 104
    .local v2, "_sqliteConfig":Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v3, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v3, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    .line 105
    .local v0, "_helper":Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    return-object v0
.end method

.method public projectDao()Lcom/everis/jibo/persistence/ProjectDao;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->_projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->_projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    .line 140
    :goto_0
    return-object v0

    .line 136
    :cond_0
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->_projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/everis/jibo/persistence/ProjectDao_Impl;

    invoke-direct {v0, p0}, Lcom/everis/jibo/persistence/ProjectDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->_projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->_projectDao:Lcom/everis/jibo/persistence/ProjectDao;

    monitor-exit p0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
