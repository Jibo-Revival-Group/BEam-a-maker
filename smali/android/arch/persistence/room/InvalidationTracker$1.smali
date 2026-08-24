.class Landroid/arch/persistence/room/InvalidationTracker$1;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/persistence/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/persistence/room/InvalidationTracker;

    .prologue
    .line 297
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUpdatedTable()Z
    .locals 8

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, "hasUpdatedTable":Z
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v3}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v3

    const-string v6, "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"

    iget-object v7, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v7}, Landroid/arch/persistence/room/InvalidationTracker;->access$300(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/arch/persistence/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 358
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 360
    .local v4, "version":J
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 362
    .local v2, "tableId":I
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v3, v3, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    aput-wide v4, v3, v2

    .line 363
    const/4 v1, 0x1

    .line 365
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v3, v4, v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$402(Landroid/arch/persistence/room/InvalidationTracker;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 368
    .end local v2    # "tableId":I
    .end local v4    # "version":J
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 370
    return v1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 300
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 301
    .local v0, "closeLock":Ljava/util/concurrent/locks/Lock;
    const/4 v4, 0x0

    .line 303
    .local v4, "hasUpdatedTable":Z
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$100(Landroid/arch/persistence/room/InvalidationTracker;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v5

    if-nez v5, :cond_1

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v5, v5, Landroid/arch/persistence/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v5

    if-nez v5, :cond_2

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 314
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    if-eqz v5, :cond_3

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 321
    :cond_3
    :try_start_3
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$200(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v5

    invoke-interface {v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 322
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$300(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v7}, Landroid/arch/persistence/room/InvalidationTracker;->access$400(Landroid/arch/persistence/room/InvalidationTracker;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 323
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v5

    iget-boolean v5, v5, Landroid/arch/persistence/room/RoomDatabase;->mWriteAheadLoggingEnabled:Z

    if-eqz v5, :cond_4

    .line 326
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v5

    invoke-interface {v5}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    .line 328
    .local v1, "db":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :try_start_4
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 329
    invoke-direct {p0}, Landroid/arch/persistence/room/InvalidationTracker$1;->checkUpdatedTable()Z

    move-result v4

    .line 330
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 332
    :try_start_5
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 342
    .end local v1    # "db":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 344
    :goto_2
    if-eqz v4, :cond_0

    .line 345
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v6, v5, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v6

    .line 346
    :try_start_6
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v5, v5, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v5}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/persistence/room/InvalidationTracker$Observer;Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v8, v8, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    invoke-virtual {v5, v8}, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->checkForInvalidation([J)V

    goto :goto_3

    .line 349
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/persistence/room/InvalidationTracker$Observer;Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 332
    .restart local v1    # "db":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :catchall_1
    move-exception v5

    :try_start_7
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 337
    .end local v1    # "db":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 339
    .local v3, "exception":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_8
    const-string v5, "ROOM"

    const-string v6, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    .line 335
    .end local v3    # "exception":Ljava/lang/RuntimeException;
    :cond_4
    :try_start_9
    invoke-direct {p0}, Landroid/arch/persistence/room/InvalidationTracker$1;->checkUpdatedTable()Z
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v4

    goto :goto_1

    .line 342
    :catchall_2
    move-exception v5

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 349
    :cond_5
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 337
    :catch_1
    move-exception v5

    move-object v3, v5

    goto :goto_4
.end method
