.class public Landroid/arch/persistence/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;,
        Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;,
        Landroid/arch/persistence/room/InvalidationTracker$Observer;,
        Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
    }
.end annotation


# static fields
.field static final CLEANUP_SQL:Ljava/lang/String; = "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CREATE_VERSION_TABLE_SQL:Ljava/lang/String; = "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

.field static final SELECT_UPDATED_TABLES_SQL:Ljava/lang/String; = "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TABLE_ID_COLUMN_NAME:Ljava/lang/String; = "table_id"

.field private static final TRIGGERS:[Ljava/lang/String;

.field private static final UPDATE_TABLE_NAME:Ljava/lang/String; = "room_table_modification_log"

.field private static final VERSION_COLUMN_NAME:Ljava/lang/String; = "version"


# instance fields
.field private volatile mCleanupStatement:Landroid/arch/persistence/db/SupportSQLiteStatement;

.field private final mDatabase:Landroid/arch/persistence/room/RoomDatabase;

.field private volatile mInitialized:Z

.field private mMaxVersion:J

.field private mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

.field final mObserverMap:Landroid/arch/core/internal/SafeIterableMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap",
            "<",
            "Landroid/arch/persistence/room/InvalidationTracker$Observer;",
            "Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mQueryArgs:[Ljava/lang/Object;

.field mRefreshRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mTableIdLookup:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTableNames:[Ljava/lang/String;

.field mTableVersions:[J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INSERT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/arch/persistence/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V
    .locals 8
    .param p1, "database"    # Landroid/arch/persistence/room/RoomDatabase;
    .param p2, "tableNames"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mQueryArgs:[Ljava/lang/Object;

    .line 103
    iput-wide v6, p0, Landroid/arch/persistence/room/InvalidationTracker;->mMaxVersion:J

    .line 107
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-boolean v4, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    .line 116
    new-instance v3, Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {v3}, Landroid/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    .line 296
    new-instance v3, Landroid/arch/persistence/room/InvalidationTracker$1;

    invoke-direct {v3, p0}, Landroid/arch/persistence/room/InvalidationTracker$1;-><init>(Landroid/arch/persistence/room/InvalidationTracker;)V

    iput-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 127
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    .line 128
    new-instance v3, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    array-length v4, p2

    invoke-direct {v3, v4}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;-><init>(I)V

    iput-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    .line 129
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableIdLookup:Landroid/support/v4/util/ArrayMap;

    .line 130
    array-length v1, p2

    .line 131
    .local v1, "size":I
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 133
    aget-object v3, p2, v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "tableName":Ljava/lang/String;
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableIdLookup:Landroid/support/v4/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_0
    array-length v3, p2

    new-array v3, v3, [J

    iput-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    .line 138
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    invoke-static {v3, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Landroid/arch/persistence/room/InvalidationTracker;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroid/arch/persistence/room/InvalidationTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/arch/persistence/room/InvalidationTracker;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/arch/persistence/room/InvalidationTracker;->ensureInitialization()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/db/SupportSQLiteStatement;
    .locals 1
    .param p0, "x0"    # Landroid/arch/persistence/room/InvalidationTracker;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mCleanupStatement:Landroid/arch/persistence/db/SupportSQLiteStatement;

    return-object v0
.end method

.method static synthetic access$300(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/arch/persistence/room/InvalidationTracker;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mQueryArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/arch/persistence/room/InvalidationTracker;)J
    .locals 2
    .param p0, "x0"    # Landroid/arch/persistence/room/InvalidationTracker;

    .prologue
    .line 62
    iget-wide v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mMaxVersion:J

    return-wide v0
.end method

.method static synthetic access$402(Landroid/arch/persistence/room/InvalidationTracker;J)J
    .locals 1
    .param p0, "x0"    # Landroid/arch/persistence/room/InvalidationTracker;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mMaxVersion:J

    return-wide p1
.end method

.method private static appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "triggerType"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "room_table_modification_trigger_"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    return-void
.end method

.method private ensureInitialization()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    :goto_0
    return v0

    .line 285
    :cond_0
    iget-boolean v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    if-nez v1, :cond_1

    .line 287
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 289
    :cond_1
    iget-boolean v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    if-nez v1, :cond_2

    .line 290
    const-string v1, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startTrackingTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V
    .locals 9
    .param p1, "writableDb"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p2, "tableId"    # I

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v1, v3, p2

    .line 191
    .local v1, "tableName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/arch/persistence/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v5, v3

    .line 193
    .local v2, "trigger":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 194
    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {v0, v1, v2}, Landroid/arch/persistence/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v7, " AFTER "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 197
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ON `"

    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 199
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "` BEGIN INSERT OR REPLACE INTO "

    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "room_table_modification_log"

    .line 201
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " VALUES(null, "

    .line 202
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 203
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "); END"

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "trigger":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private stopTrackingTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V
    .locals 8
    .param p1, "writableDb"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p2, "tableId"    # I

    .prologue
    const/4 v4, 0x0

    .line 179
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v1, v3, p2

    .line 180
    .local v1, "tableName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/arch/persistence/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v5, v3

    .line 182
    .local v2, "trigger":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    const-string v7, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v0, v1, v2}, Landroid/arch/persistence/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "trigger":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V
    .locals 11
    .param p1, "observer"    # Landroid/arch/persistence/room/InvalidationTracker$Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 225
    iget-object v5, p1, Landroid/arch/persistence/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    .line 226
    .local v5, "tableNames":[Ljava/lang/String;
    array-length v8, v5

    new-array v4, v8, [I

    .line 227
    .local v4, "tableIds":[I
    array-length v2, v5

    .line 228
    .local v2, "size":I
    array-length v8, v5

    new-array v6, v8, [J

    .line 231
    .local v6, "versions":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 232
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableIdLookup:Landroid/support/v4/util/ArrayMap;

    aget-object v9, v5, v1

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 233
    .local v3, "tableId":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 234
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There is no table with name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 236
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v4, v1

    .line 237
    iget-wide v8, p0, Landroid/arch/persistence/room/InvalidationTracker;->mMaxVersion:J

    aput-wide v8, v6, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v3    # "tableId":Ljava/lang/Integer;
    :cond_1
    new-instance v7, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    invoke-direct {v7, p1, v4, v5, v6}, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;-><init>(Landroid/arch/persistence/room/InvalidationTracker$Observer;[I[Ljava/lang/String;[J)V

    .line 241
    .local v7, "wrapper":Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
    iget-object v9, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v9

    .line 242
    :try_start_0
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v8, p1, v7}, Landroid/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    .line 243
    .local v0, "currentObserver":Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    if-nez v0, :cond_2

    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v8, v4}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->onAdded([I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 245
    invoke-virtual {p0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers()V

    .line 247
    :cond_2
    return-void

    .line 243
    .end local v0    # "currentObserver":Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V
    .locals 1
    .param p1, "observer"    # Landroid/arch/persistence/room/InvalidationTracker$Observer;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;

    invoke-direct {v0, p0, p1}, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;-><init>(Landroid/arch/persistence/room/InvalidationTracker;Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/InvalidationTracker;->addObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 262
    return-void
.end method

.method internalInit(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit p0

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    const-string v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string v0, "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :try_start_2
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 162
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 163
    const-string v0, "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mCleanupStatement:Landroid/arch/persistence/db/SupportSQLiteStatement;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    .line 165
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 160
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public refreshVersionsAsync()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/arch/core/executor/ArchTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 387
    :cond_0
    return-void
.end method

.method public refreshVersionsSync()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers()V

    .line 398
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 399
    return-void
.end method

.method public removeObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V
    .locals 3
    .param p1, "observer"    # Landroid/arch/persistence/room/InvalidationTracker$Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 273
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v2

    .line 274
    :try_start_0
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1}, Landroid/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    .line 275
    .local v0, "wrapper":Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    iget-object v2, v0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    invoke-virtual {v1, v2}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->onRemoved([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers()V

    .line 279
    :cond_0
    return-void

    .line 275
    .end local v0    # "wrapper":Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method syncTriggers()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    goto :goto_0
.end method

.method syncTriggers(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 7
    .param p1, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 402
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    :goto_0
    return-void

    .line 432
    .local v0, "closeLock":Ljava/util/concurrent/locks/Lock;
    .local v2, "limit":I
    .local v3, "tableId":I
    .local v4, "tablesToSync":[I
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :try_start_1
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 436
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v5}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->onSyncCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 438
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 410
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .end local v2    # "limit":I
    .end local v3    # "tableId":I
    .end local v4    # "tablesToSync":[I
    :cond_1
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 411
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 415
    :try_start_3
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v5}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->getTablesToSync()[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 416
    .restart local v4    # "tablesToSync":[I
    if-nez v4, :cond_2

    .line 438
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 441
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .end local v4    # "tablesToSync":[I
    :catch_0
    move-exception v1

    .line 443
    .local v1, "exception":Ljava/lang/RuntimeException;
    :goto_1
    const-string v5, "ROOM"

    const-string v6, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 419
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local v4    # "tablesToSync":[I
    :cond_2
    :try_start_5
    array-length v2, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 421
    .restart local v2    # "limit":I
    :try_start_6
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 422
    const/4 v3, 0x0

    .restart local v3    # "tableId":I
    :goto_2
    if-ge v3, v2, :cond_0

    .line 423
    aget v5, v4, v3

    packed-switch v5, :pswitch_data_0

    .line 422
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 425
    :pswitch_0
    invoke-direct {p0, p1, v3}, Landroid/arch/persistence/room/InvalidationTracker;->startTrackingTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 434
    .end local v3    # "tableId":I
    :catchall_0
    move-exception v5

    :try_start_7
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 438
    .end local v2    # "limit":I
    .end local v4    # "tablesToSync":[I
    :catchall_1
    move-exception v5

    :try_start_8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 441
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 428
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "limit":I
    .restart local v3    # "tableId":I
    .restart local v4    # "tablesToSync":[I
    :pswitch_1
    :try_start_9
    invoke-direct {p0, p1, v3}, Landroid/arch/persistence/room/InvalidationTracker;->stopTrackingTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
