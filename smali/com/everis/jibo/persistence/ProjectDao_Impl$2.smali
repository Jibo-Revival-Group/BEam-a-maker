.class Lcom/everis/jibo/persistence/ProjectDao_Impl$2;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
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
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter",
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
    .line 55
    iput-object p1, p0, Lcom/everis/jibo/persistence/ProjectDao_Impl$2;->this$0:Lcom/everis/jibo/persistence/ProjectDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/everis/jibo/persistence/Project;)V
    .locals 4
    .param p1, "stmt"    # Landroid/arch/persistence/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/everis/jibo/persistence/Project;

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/everis/jibo/persistence/Project;->getId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 64
    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p2, Lcom/everis/jibo/persistence/Project;

    invoke-virtual {p0, p1, p2}, Lcom/everis/jibo/persistence/ProjectDao_Impl$2;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/everis/jibo/persistence/Project;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "DELETE FROM `projects` WHERE `id` = ?"

    return-object v0
.end method
