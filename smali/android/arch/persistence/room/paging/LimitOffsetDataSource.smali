.class public abstract Landroid/arch/persistence/room/paging/LimitOffsetDataSource;
.super Landroid/arch/paging/PositionalDataSource;
.source "LimitOffsetDataSource.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/paging/PositionalDataSource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCountQuery:Ljava/lang/String;

.field private final mDb:Landroid/arch/persistence/room/RoomDatabase;

.field private final mInTransaction:Z

.field private final mLimitOffsetQuery:Ljava/lang/String;

.field private final mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field private final mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method protected varargs constructor <init>(Landroid/arch/persistence/room/RoomDatabase;Landroid/arch/persistence/db/SupportSQLiteQuery;Z[Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Landroid/arch/persistence/room/RoomDatabase;
    .param p2, "query"    # Landroid/arch/persistence/db/SupportSQLiteQuery;
    .param p3, "inTransaction"    # Z
    .param p4, "tables"    # [Ljava/lang/String;

    .prologue
    .line 58
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-static {p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->copyFrom(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;-><init>(Landroid/arch/persistence/room/RoomDatabase;Landroid/arch/persistence/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected varargs constructor <init>(Landroid/arch/persistence/room/RoomDatabase;Landroid/arch/persistence/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/arch/persistence/room/RoomDatabase;
    .param p2, "query"    # Landroid/arch/persistence/room/RoomSQLiteQuery;
    .param p3, "inTransaction"    # Z
    .param p4, "tables"    # [Ljava/lang/String;

    .prologue
    .line 62
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-direct {p0}, Landroid/arch/paging/PositionalDataSource;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    .line 64
    iput-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    .line 65
    iput-boolean p3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mInTransaction:Z

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mCountQuery:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) LIMIT ? OFFSET ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mLimitOffsetQuery:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;

    invoke-direct {v0, p0, p4}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;-><init>(Landroid/arch/persistence/room/paging/LimitOffsetDataSource;[Ljava/lang/String;)V

    iput-object v0, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 74
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected abstract convertRows(Landroid/database/Cursor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public countItems()I
    .locals 5

    .prologue
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource<TT;>;"
    const/4 v2, 0x0

    .line 82
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mCountQuery:Ljava/lang/String;

    iget-object v4, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    .line 83
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result v4

    .line 82
    invoke-static {v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    .line 84
    .local v1, "sqLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->copyArgumentsFrom(Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 85
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    :goto_0
    return v2

    .line 92
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v2
.end method

.method public isInvalid()Z
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource<TT;>;"
    iget-object v0, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker;->refreshVersionsSync()V

    .line 100
    invoke-super {p0}, Landroid/arch/paging/PositionalDataSource;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public loadInitial(Landroid/arch/paging/PositionalDataSource$LoadInitialParams;Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;)V
    .locals 6
    .param p1, "params"    # Landroid/arch/paging/PositionalDataSource$LoadInitialParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/paging/PositionalDataSource$LoadInitialParams;",
            "Landroid/arch/paging/PositionalDataSource$LoadInitialCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource<TT;>;"
    .local p2, "callback":Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;, "Landroid/arch/paging/PositionalDataSource$LoadInitialCallback<TT;>;"
    const/4 v5, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->countItems()I

    move-result v3

    .line 110
    .local v3, "totalCount":I
    if-nez v3, :cond_0

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v4, v5, v5}, Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;->onResult(Ljava/util/List;II)V

    .line 126
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p1, v3}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->computeInitialLoadPosition(Landroid/arch/paging/PositionalDataSource$LoadInitialParams;I)I

    move-result v0

    .line 117
    .local v0, "firstLoadPosition":I
    invoke-static {p1, v0, v3}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->computeInitialLoadSize(Landroid/arch/paging/PositionalDataSource$LoadInitialParams;II)I

    move-result v1

    .line 119
    .local v1, "firstLoadSize":I
    invoke-virtual {p0, v0, v1}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->loadRange(II)Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 121
    invoke-virtual {p2, v2, v0, v3}, Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;->onResult(Ljava/util/List;II)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->invalidate()V

    goto :goto_0
.end method

.method public loadRange(II)Ljava/util/List;
    .locals 6
    .param p1, "startPosition"    # I
    .param p2, "loadCount"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource<TT;>;"
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mLimitOffsetQuery:Ljava/lang/String;

    iget-object v4, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    .line 145
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    .line 144
    invoke-static {v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    .line 146
    .local v2, "sqLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->copyArgumentsFrom(Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 147
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 148
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result v3

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 149
    iget-boolean v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mInTransaction:Z

    if-eqz v3, :cond_2

    .line 150
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_0
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 162
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 171
    .end local v1    # "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    return-object v1

    .line 158
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_1
    iget-object v4, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 162
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v3

    .line 165
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 168
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->convertRows(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    goto :goto_0

    .line 170
    :catchall_1
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v3
.end method

.method public loadRange(Landroid/arch/paging/PositionalDataSource$LoadRangeParams;Landroid/arch/paging/PositionalDataSource$LoadRangeCallback;)V
    .locals 3
    .param p1, "params"    # Landroid/arch/paging/PositionalDataSource$LoadRangeParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/paging/PositionalDataSource$LoadRangeCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/paging/PositionalDataSource$LoadRangeParams;",
            "Landroid/arch/paging/PositionalDataSource$LoadRangeCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource<TT;>;"
    .local p2, "callback":Landroid/arch/paging/PositionalDataSource$LoadRangeCallback;, "Landroid/arch/paging/PositionalDataSource$LoadRangeCallback<TT;>;"
    iget v1, p1, Landroid/arch/paging/PositionalDataSource$LoadRangeParams;->startPosition:I

    iget v2, p1, Landroid/arch/paging/PositionalDataSource$LoadRangeParams;->loadSize:I

    invoke-virtual {p0, v1, v2}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->loadRange(II)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p2, v0}, Landroid/arch/paging/PositionalDataSource$LoadRangeCallback;->onResult(Ljava/util/List;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->invalidate()V

    goto :goto_0
.end method
