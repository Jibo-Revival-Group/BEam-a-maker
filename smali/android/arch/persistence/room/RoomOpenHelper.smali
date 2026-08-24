.class public Landroid/arch/persistence/room/RoomOpenHelper;
.super Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
.source "RoomOpenHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
    }
.end annotation


# instance fields
.field private mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIdentityHash:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLegacyHash:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Landroid/arch/persistence/room/DatabaseConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delegate"    # Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "legacyHash"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Landroid/arch/persistence/room/DatabaseConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delegate"    # Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "identityHash"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "legacyHash"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    iget v0, p2, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->version:I

    invoke-direct {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    .line 54
    iput-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    .line 55
    iput-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    .line 56
    iput-object p3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private checkIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "identityHash":Ljava/lang/String;
    invoke-static {p1}, Landroid/arch/persistence/room/RoomOpenHelper;->hasRoomMasterTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    new-instance v2, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    const-string v3, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v2, v3}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 131
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 139
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 147
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private static hasRoomMasterTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Z
    .locals 3
    .param p0, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .line 151
    const-string v2, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-interface {p0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 157
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 143
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-static {v0}, Landroid/arch/persistence/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 73
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 74
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 75
    return-void
.end method

.method public onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Landroid/arch/persistence/room/RoomOpenHelper;->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    .line 110
    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 115
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->checkIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 116
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    .line 119
    return-void
.end method

.method public onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "migrated":Z
    iget-object v3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-object v3, v3, Landroid/arch/persistence/room/DatabaseConfiguration;->migrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v3, p2, p3}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->findMigrationPath(II)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "migrations":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/migration/Migration;>;"
    if-eqz v2, :cond_1

    .line 84
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/migration/Migration;

    .line 85
    .local v1, "migration":Landroid/arch/persistence/room/migration/Migration;
    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/migration/Migration;->migrate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    goto :goto_0

    .line 87
    .end local v1    # "migration":Landroid/arch/persistence/room/migration/Migration;
    :cond_0
    iget-object v3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v3, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 88
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 89
    const/4 v0, 0x1

    .line 92
    .end local v2    # "migrations":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/migration/Migration;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 93
    iget-object v3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    invoke-virtual {v3, p2}, Landroid/arch/persistence/room/DatabaseConfiguration;->isMigrationRequiredFrom(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 94
    iget-object v3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v3, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 95
    iget-object v3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v3, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 105
    :cond_2
    return-void

    .line 97
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A migration from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was required but not found. Please provide the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "necessary Migration path via "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "RoomDatabase.Builder.addMigration(Migration ...) or allow for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "destructive migrations via one of the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
