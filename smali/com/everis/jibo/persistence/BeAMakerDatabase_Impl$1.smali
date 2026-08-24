.class Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "BeAMakerDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;
    .param p2, "x0"    # I

    .prologue
    .line 28
    iput-object p1, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS `coolideas` (`name` TEXT NOT NULL, `imageName` TEXT NOT NULL, `jsonName` TEXT NOT NULL, `previewImage` TEXT NOT NULL, `commandTutorialImage` TEXT NOT NULL, `commandTutorialText` TEXT NOT NULL, `commandXML` TEXT NOT NULL, PRIMARY KEY(`name`))"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string v0, "CREATE TABLE IF NOT EXISTS `projects` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `imageName` TEXT NOT NULL, `creationDate` INTEGER NOT NULL, `modificationDate` INTEGER NOT NULL, `projectName` TEXT NOT NULL, `xmlString` TEXT NOT NULL)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"7e1ad23892be564bed96ee1560543523\")"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 39
    const-string v0, "DROP TABLE IF EXISTS `coolideas`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    const-string v0, "DROP TABLE IF EXISTS `projects`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-static {v2}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->access$000(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v2, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-static {v2}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->access$100(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-static {v2}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->access$200(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-static {v2, p1}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->access$302(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 55
    iget-object v2, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-static {v2, p1}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->access$400(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 56
    iget-object v2, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-static {v2}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->access$500(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v2, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-static {v2}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->access$600(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl$1;->this$0:Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;

    invoke-static {v2}, Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;->access$700(Lcom/everis/jibo/persistence/BeAMakerDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method protected validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 17
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 65
    new-instance v1, Ljava/util/HashMap;

    const/4 v11, 0x7

    invoke-direct {v1, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    .local v1, "_columnsCoolideas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    const-string v11, "name"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "name"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v11, "imageName"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "imageName"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v11, "jsonName"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "jsonName"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v11, "previewImage"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "previewImage"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v11, "commandTutorialImage"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "commandTutorialImage"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v11, "commandTutorialText"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "commandTutorialText"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v11, "commandXML"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "commandXML"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v5, Ljava/util/HashSet;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 74
    .local v5, "_foreignKeysCoolideas":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v7, Ljava/util/HashSet;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 75
    .local v7, "_indicesCoolideas":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$Index;>;"
    new-instance v9, Landroid/arch/persistence/room/util/TableInfo;

    const-string v11, "coolideas"

    invoke-direct {v9, v11, v1, v5, v7}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 76
    .local v9, "_infoCoolideas":Landroid/arch/persistence/room/util/TableInfo;
    const-string v11, "coolideas"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v3

    .line 77
    .local v3, "_existingCoolideas":Landroid/arch/persistence/room/util/TableInfo;
    invoke-virtual {v9, v3}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 78
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Migration didn\'t properly handle coolideas(com.everis.jibo.persistence.CoolIdea).\n Expected:\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n Found:\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 82
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v11, 0x6

    invoke-direct {v2, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 83
    .local v2, "_columnsProjects":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    const-string v11, "id"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "id"

    const-string v14, "INTEGER"

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v11, "imageName"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "imageName"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v11, "creationDate"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "creationDate"

    const-string v14, "INTEGER"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v11, "modificationDate"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "modificationDate"

    const-string v14, "INTEGER"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v11, "projectName"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "projectName"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v11, "xmlString"

    new-instance v12, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v13, "xmlString"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v6, Ljava/util/HashSet;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 90
    .local v6, "_foreignKeysProjects":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v8, Ljava/util/HashSet;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 91
    .local v8, "_indicesProjects":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$Index;>;"
    new-instance v10, Landroid/arch/persistence/room/util/TableInfo;

    const-string v11, "projects"

    invoke-direct {v10, v11, v2, v6, v8}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 92
    .local v10, "_infoProjects":Landroid/arch/persistence/room/util/TableInfo;
    const-string v11, "projects"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v4

    .line 93
    .local v4, "_existingProjects":Landroid/arch/persistence/room/util/TableInfo;
    invoke-virtual {v10, v4}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 94
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Migration didn\'t properly handle projects(com.everis.jibo.persistence.Project).\n Expected:\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n Found:\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 98
    :cond_1
    return-void
.end method
