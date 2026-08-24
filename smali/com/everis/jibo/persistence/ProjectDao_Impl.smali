.class public Lcom/everis/jibo/persistence/ProjectDao_Impl;
.super Ljava/lang/Object;
.source "ProjectDao_Impl.java"

# interfaces
.implements Lcom/everis/jibo/persistence/ProjectDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfProject:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfProject:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __updateAdapterOfProject:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/everis/jibo/persistence/ProjectDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/everis/jibo/persistence/ProjectDao_Impl$1;-><init>(Lcom/everis/jibo/persistence/ProjectDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__insertionAdapterOfProject:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 55
    new-instance v0, Lcom/everis/jibo/persistence/ProjectDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/everis/jibo/persistence/ProjectDao_Impl$2;-><init>(Lcom/everis/jibo/persistence/ProjectDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__deletionAdapterOfProject:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 66
    new-instance v0, Lcom/everis/jibo/persistence/ProjectDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/everis/jibo/persistence/ProjectDao_Impl$3;-><init>(Lcom/everis/jibo/persistence/ProjectDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__updateAdapterOfProject:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 95
    return-void
.end method


# virtual methods
.method public delete(Lcom/everis/jibo/persistence/Project;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__deletionAdapterOfProject:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 114
    iget-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 117
    throw v0
.end method

.method public getProjects()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    const-string v20, "SELECT * FROM projects"

    .line 134
    .local v20, "_sql":Ljava/lang/String;
    const-string v22, "SELECT * FROM projects"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v21

    .line 135
    .local v21, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v12

    .line 137
    .local v12, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 138
    .local v14, "_cursorIndexOfId":I
    const-string v22, "imageName"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 139
    .local v15, "_cursorIndexOfImageName":I
    const-string v22, "creationDate"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 140
    .local v13, "_cursorIndexOfCreationDate":I
    const-string v22, "modificationDate"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 141
    .local v16, "_cursorIndexOfModificationDate":I
    const-string v22, "projectName"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 142
    .local v17, "_cursorIndexOfProjectName":I
    const-string v22, "xmlString"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 143
    .local v18, "_cursorIndexOfXmlString":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/everis/jibo/persistence/Project;>;"
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 147
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 149
    .local v3, "_tmpId":J
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "_tmpImageName":Ljava/lang/String;
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 153
    .local v6, "_tmpCreationDate":J
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 155
    .local v8, "_tmpModificationDate":J
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 157
    .local v10, "_tmpProjectName":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "_tmpXmlString":Ljava/lang/String;
    new-instance v2, Lcom/everis/jibo/persistence/Project;

    invoke-direct/range {v2 .. v11}, Lcom/everis/jibo/persistence/Project;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v2, "_item":Lcom/everis/jibo/persistence/Project;
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    .end local v2    # "_item":Lcom/everis/jibo/persistence/Project;
    .end local v3    # "_tmpId":J
    .end local v5    # "_tmpImageName":Ljava/lang/String;
    .end local v6    # "_tmpCreationDate":J
    .end local v8    # "_tmpModificationDate":J
    .end local v10    # "_tmpProjectName":Ljava/lang/String;
    .end local v11    # "_tmpXmlString":Ljava/lang/String;
    .end local v13    # "_cursorIndexOfCreationDate":I
    .end local v14    # "_cursorIndexOfId":I
    .end local v15    # "_cursorIndexOfImageName":I
    .end local v16    # "_cursorIndexOfModificationDate":I
    .end local v17    # "_cursorIndexOfProjectName":I
    .end local v18    # "_cursorIndexOfXmlString":I
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/everis/jibo/persistence/Project;>;"
    :catchall_0
    move-exception v22

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-virtual/range {v21 .. v21}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 165
    throw v22

    .line 163
    .restart local v13    # "_cursorIndexOfCreationDate":I
    .restart local v14    # "_cursorIndexOfId":I
    .restart local v15    # "_cursorIndexOfImageName":I
    .restart local v16    # "_cursorIndexOfModificationDate":I
    .restart local v17    # "_cursorIndexOfProjectName":I
    .restart local v18    # "_cursorIndexOfXmlString":I
    .restart local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/everis/jibo/persistence/Project;>;"
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-virtual/range {v21 .. v21}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 161
    return-object v19
.end method

.method public getSortedProjects()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    const-string v20, "SELECT * FROM projects ORDER BY modificationDate DESC"

    .line 171
    .local v20, "_sql":Ljava/lang/String;
    const-string v22, "SELECT * FROM projects ORDER BY modificationDate DESC"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v21

    .line 172
    .local v21, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v12

    .line 174
    .local v12, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 175
    .local v14, "_cursorIndexOfId":I
    const-string v22, "imageName"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 176
    .local v15, "_cursorIndexOfImageName":I
    const-string v22, "creationDate"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 177
    .local v13, "_cursorIndexOfCreationDate":I
    const-string v22, "modificationDate"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 178
    .local v16, "_cursorIndexOfModificationDate":I
    const-string v22, "projectName"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 179
    .local v17, "_cursorIndexOfProjectName":I
    const-string v22, "xmlString"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 180
    .local v18, "_cursorIndexOfXmlString":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/everis/jibo/persistence/Project;>;"
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 184
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 186
    .local v3, "_tmpId":J
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "_tmpImageName":Ljava/lang/String;
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 190
    .local v6, "_tmpCreationDate":J
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 192
    .local v8, "_tmpModificationDate":J
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "_tmpProjectName":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, "_tmpXmlString":Ljava/lang/String;
    new-instance v2, Lcom/everis/jibo/persistence/Project;

    invoke-direct/range {v2 .. v11}, Lcom/everis/jibo/persistence/Project;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v2, "_item":Lcom/everis/jibo/persistence/Project;
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    .end local v2    # "_item":Lcom/everis/jibo/persistence/Project;
    .end local v3    # "_tmpId":J
    .end local v5    # "_tmpImageName":Ljava/lang/String;
    .end local v6    # "_tmpCreationDate":J
    .end local v8    # "_tmpModificationDate":J
    .end local v10    # "_tmpProjectName":Ljava/lang/String;
    .end local v11    # "_tmpXmlString":Ljava/lang/String;
    .end local v13    # "_cursorIndexOfCreationDate":I
    .end local v14    # "_cursorIndexOfId":I
    .end local v15    # "_cursorIndexOfImageName":I
    .end local v16    # "_cursorIndexOfModificationDate":I
    .end local v17    # "_cursorIndexOfProjectName":I
    .end local v18    # "_cursorIndexOfXmlString":I
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/everis/jibo/persistence/Project;>;"
    :catchall_0
    move-exception v22

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 201
    invoke-virtual/range {v21 .. v21}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 202
    throw v22

    .line 200
    .restart local v13    # "_cursorIndexOfCreationDate":I
    .restart local v14    # "_cursorIndexOfId":I
    .restart local v15    # "_cursorIndexOfImageName":I
    .restart local v16    # "_cursorIndexOfModificationDate":I
    .restart local v17    # "_cursorIndexOfProjectName":I
    .restart local v18    # "_cursorIndexOfXmlString":I
    .restart local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/everis/jibo/persistence/Project;>;"
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 201
    invoke-virtual/range {v21 .. v21}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 198
    return-object v19
.end method

.method public insert(Lcom/everis/jibo/persistence/Project;)J
    .locals 4
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__insertionAdapterOfProject:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 102
    .local v0, "_result":J
    iget-object v2, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v2, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 103
    return-wide v0

    .line 105
    .end local v0    # "_result":J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 106
    throw v2
.end method

.method public update(Lcom/everis/jibo/persistence/Project;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__updateAdapterOfProject:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 125
    iget-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 128
    throw v0
.end method
