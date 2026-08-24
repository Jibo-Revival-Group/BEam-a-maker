.class public Landroid/arch/persistence/room/util/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/util/TableInfo$Index;,
        Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;,
        Landroid/arch/persistence/room/util/TableInfo$ForeignKey;,
        Landroid/arch/persistence/room/util/TableInfo$Column;
    }
.end annotation


# instance fields
.field public final columns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation
.end field

.field public final foreignKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation
.end field

.field public final indices:Ljava/util/Set;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    .local p3, "foreignKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    .local p3, "foreignKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    .local p4, "indices":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$Index;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    .line 75
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 76
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    .line 77
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    .line 78
    return-void

    .line 77
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;
    .locals 4
    .param p0, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->readColumns(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 140
    .local v0, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->readForeignKeys(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 141
    .local v1, "foreignKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->readIndices(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 142
    .local v2, "indices":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$Index;>;"
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo;

    invoke-direct {v3, p1, v0, v1, v2}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    return-object v3
.end method

.method private static readColumns(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PRAGMA table_info(`"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "`)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 211
    invoke-interface {p0, v10}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 213
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v0, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 216
    const-string v10, "name"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 217
    .local v3, "nameIndex":I
    const-string v10, "type"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 218
    .local v9, "typeIndex":I
    const-string v10, "notnull"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 219
    .local v5, "notNullIndex":I
    const-string v10, "pk"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 221
    .local v6, "pkIndex":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 222
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "type":Ljava/lang/String;
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v4, 0x1

    .line 225
    .local v4, "notNull":Z
    :goto_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 226
    .local v7, "primaryKeyPosition":I
    new-instance v10, Landroid/arch/persistence/room/util/TableInfo$Column;

    invoke-direct {v10, v2, v8, v4, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameIndex":I
    .end local v4    # "notNull":Z
    .end local v5    # "notNullIndex":I
    .end local v6    # "pkIndex":I
    .end local v7    # "primaryKeyPosition":I
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "typeIndex":I
    :catchall_0
    move-exception v10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v10

    .line 224
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "nameIndex":I
    .restart local v5    # "notNullIndex":I
    .restart local v6    # "pkIndex":I
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v9    # "typeIndex":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 230
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameIndex":I
    .end local v5    # "notNullIndex":I
    .end local v6    # "pkIndex":I
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "typeIndex":I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    return-object v0
.end method

.method private static readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const-string v7, "id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, "idColumnIndex":I
    const-string v7, "seq"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 191
    .local v5, "seqColumnIndex":I
    const-string v7, "from"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, "fromColumnIndex":I
    const-string v7, "to"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 193
    .local v6, "toColumnIndex":I
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 194
    .local v0, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 196
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 197
    new-instance v7, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    .line 198
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 199
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 200
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 205
    return-object v4
.end method

.method private static readForeignKeys(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 20
    .param p0, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v9, "foreignKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA foreign_key_list(`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 152
    .local v11, "idColumnIndex":I
    const-string v1, "seq"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 153
    .local v18, "seqColumnIndex":I
    const-string v1, "table"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 154
    .local v19, "tableColumnIndex":I
    const-string v1, "on_delete"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 155
    .local v13, "onDeleteColumnIndex":I
    const-string v1, "on_update"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 157
    .local v14, "onUpdateColumnIndex":I
    invoke-static {v8}, Landroid/arch/persistence/room/util/TableInfo;->readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v15

    .line 158
    .local v15, "ordered":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 159
    .local v7, "count":I
    const/16 v16, 0x0

    .local v16, "position":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v7, :cond_3

    .line 160
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 161
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 162
    .local v17, "seq":I
    if-eqz v17, :cond_0

    .line 159
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 166
    .local v10, "id":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "myColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v6, "refColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    .line 169
    .local v12, "key":Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;
    iget v2, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    if-ne v2, v10, :cond_1

    .line 170
    iget-object v2, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mFrom:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v2, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mTo:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 183
    .end local v5    # "myColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "refColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "count":I
    .end local v10    # "id":I
    .end local v11    # "idColumnIndex":I
    .end local v12    # "key":Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;
    .end local v13    # "onDeleteColumnIndex":I
    .end local v14    # "onUpdateColumnIndex":I
    .end local v15    # "ordered":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    .end local v16    # "position":I
    .end local v17    # "seq":I
    .end local v18    # "seqColumnIndex":I
    .end local v19    # "tableColumnIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 174
    .restart local v5    # "myColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "refColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "count":I
    .restart local v10    # "id":I
    .restart local v11    # "idColumnIndex":I
    .restart local v13    # "onDeleteColumnIndex":I
    .restart local v14    # "onUpdateColumnIndex":I
    .restart local v15    # "ordered":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    .restart local v16    # "position":I
    .restart local v17    # "seq":I
    .restart local v18    # "seqColumnIndex":I
    .restart local v19    # "tableColumnIndex":I
    :cond_2
    :try_start_1
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$ForeignKey;

    .line 175
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Landroid/arch/persistence/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 174
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 183
    .end local v5    # "myColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "refColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "id":I
    .end local v17    # "seq":I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 185
    return-object v9
.end method

.method private static readIndex(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;Z)Landroid/arch/persistence/room/util/TableInfo$Index;
    .locals 12
    .param p0, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 276
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PRAGMA index_xinfo(`"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "`)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v9}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 278
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v9, "seqno"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 279
    .local v8, "seqnoColumnIndex":I
    const-string v9, "cid"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 280
    .local v1, "cidColumnIndex":I
    const-string v9, "name"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 281
    .local v5, "nameColumnIndex":I
    if-eq v8, v11, :cond_0

    if-eq v1, v11, :cond_0

    if-ne v5, v11, :cond_1

    .line 283
    :cond_0
    const/4 v9, 0x0

    .line 301
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v9

    .line 285
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 287
    .local v6, "results":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 288
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 289
    .local v0, "cid":I
    if-ltz v0, :cond_2

    .line 293
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 294
    .local v7, "seq":I
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "columnName":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 301
    .end local v0    # "cid":I
    .end local v1    # "cidColumnIndex":I
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v5    # "nameColumnIndex":I
    .end local v6    # "results":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "seq":I
    .end local v8    # "seqnoColumnIndex":I
    :catchall_0
    move-exception v9

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v9

    .line 297
    .restart local v1    # "cidColumnIndex":I
    .restart local v5    # "nameColumnIndex":I
    .restart local v6    # "results":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "seqnoColumnIndex":I
    :cond_3
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    .local v3, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    new-instance v9, Landroid/arch/persistence/room/util/TableInfo$Index;

    invoke-direct {v9, p1, p2, v3}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static readIndices(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 14
    .param p0, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, -0x1

    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PRAGMA index_list(`"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "`)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v11}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 242
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v11, "name"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 243
    .local v4, "nameColumnIndex":I
    const-string v11, "origin"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 244
    .local v6, "originColumnIndex":I
    const-string v11, "unique"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 245
    .local v8, "uniqueIndex":I
    if-eq v4, v13, :cond_0

    if-eq v6, v13, :cond_0

    if-ne v8, v13, :cond_1

    .line 267
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    :goto_0
    return-object v2

    .line 249
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 250
    .local v2, "indices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$Index;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 251
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "origin":Ljava/lang/String;
    const-string v11, "c"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 256
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v10, :cond_3

    move v7, v10

    .line 258
    .local v7, "unique":Z
    :goto_2
    invoke-static {p0, v3, v7}, Landroid/arch/persistence/room/util/TableInfo;->readIndex(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;Z)Landroid/arch/persistence/room/util/TableInfo$Index;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 259
    .local v1, "index":Landroid/arch/persistence/room/util/TableInfo$Index;
    if-nez v1, :cond_4

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    goto :goto_0

    .line 257
    .end local v1    # "index":Landroid/arch/persistence/room/util/TableInfo$Index;
    .end local v7    # "unique":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 263
    .restart local v1    # "index":Landroid/arch/persistence/room/util/TableInfo$Index;
    .restart local v7    # "unique":Z
    :cond_4
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 267
    .end local v1    # "index":Landroid/arch/persistence/room/util/TableInfo$Index;
    .end local v2    # "indices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$Index;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameColumnIndex":I
    .end local v5    # "origin":Ljava/lang/String;
    .end local v6    # "originColumnIndex":I
    .end local v7    # "unique":Z
    .end local v8    # "uniqueIndex":I
    :catchall_0
    move-exception v9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v9

    .restart local v2    # "indices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$Index;>;"
    .restart local v4    # "nameColumnIndex":I
    .restart local v6    # "originColumnIndex":I
    .restart local v8    # "uniqueIndex":I
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 93
    check-cast v0, Landroid/arch/persistence/room/util/TableInfo;

    .line 95
    .local v0, "tableInfo":Landroid/arch/persistence/room/util/TableInfo;
    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 96
    :cond_6
    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    iget-object v4, v0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 97
    goto :goto_0

    .line 96
    :cond_8
    iget-object v3, v0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    if-nez v3, :cond_7

    .line 99
    :cond_9
    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    iget-object v4, v0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    .line 101
    goto :goto_0

    .line 99
    :cond_b
    iget-object v3, v0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    if-nez v3, :cond_a

    .line 103
    :cond_c
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 108
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    iget-object v2, v0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 114
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 115
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 117
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 113
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 114
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TableInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foreignKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
