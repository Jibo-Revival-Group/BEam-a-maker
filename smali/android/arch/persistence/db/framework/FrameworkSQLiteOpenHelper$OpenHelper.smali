.class Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FrameworkSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenHelper"
.end annotation


# instance fields
.field final mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

.field final mDbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

.field private mMigrated:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dbRef"    # [Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
    .param p4, "callback"    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    .prologue
    .line 80
    const/4 v3, 0x0

    iget v4, p4, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->version:I

    new-instance v5, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;

    invoke-direct {v5, p3, p4}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;-><init>([Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 90
    iput-object p4, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    .line 91
    iput-object p3, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mDbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    .line 92
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 155
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mDbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getReadableSupportDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    .line 107
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    .line 111
    invoke-virtual {p0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getReadableSupportDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 113
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 106
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
    .locals 3
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mDbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    aget-object v0, v1, v2

    .line 118
    .local v0, "dbRef":Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    .end local v0    # "dbRef":Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
    invoke-direct {v0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    .restart local v0    # "dbRef":Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
    iget-object v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mDbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    aput-object v0, v1, v2

    .line 122
    :cond_0
    iget-object v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mDbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    aget-object v1, v1, v2

    return-object v1
.end method

.method declared-synchronized getWritableSupportDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    .line 96
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 97
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    .line 100
    invoke-virtual {p0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWritableSupportDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 102
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 95
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 138
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 127
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 128
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    .line 144
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    .line 145
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 149
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 150
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    .line 133
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    .line 134
    return-void
.end method
