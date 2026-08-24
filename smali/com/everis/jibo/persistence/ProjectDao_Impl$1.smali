.class Lcom/everis/jibo/persistence/ProjectDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "ProjectDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/persistence/ProjectDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter",
        "<",
        "Lcom/everis/jibo/persistence/Project;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/everis/jibo/persistence/ProjectDao_Impl;


# direct methods
.method constructor <init>(Lcom/everis/jibo/persistence/ProjectDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/everis/jibo/persistence/ProjectDao_Impl;
    .param p2, "x0"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl$1;->this$0:Lcom/everis/jibo/persistence/ProjectDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/everis/jibo/persistence/Project;)V
    .locals 6
    .param p1, "stmt"    # Landroid/arch/persistence/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/everis/jibo/persistence/Project;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x2

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 36
    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getImageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 41
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getCreationDate()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 42
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getModificationDate()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 43
    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 44
    invoke-interface {p1, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 48
    :goto_1
    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getXmlString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 49
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 53
    :goto_2
    return-void

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getImageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getXmlString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Lcom/everis/jibo/persistence/Project;

    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/persistence/ProjectDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/everis/jibo/persistence/Project;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "INSERT OR ABORT INTO `projects`(`id`,`imageName`,`creationDate`,`modificationDate`,`projectName`,`xmlString`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method
