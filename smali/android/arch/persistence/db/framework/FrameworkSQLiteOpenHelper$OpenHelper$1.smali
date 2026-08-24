.class Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

.field final synthetic val$dbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;


# direct methods
.method constructor <init>([Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;->val$dbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    iput-object p2, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;->val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 84
    iget-object v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;->val$dbRef:[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 85
    .local v0, "db":Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;->val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onCorruption(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 88
    :cond_0
    return-void
.end method
