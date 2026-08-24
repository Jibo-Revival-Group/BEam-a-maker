.class Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;
.super Landroid/arch/persistence/room/InvalidationTracker$Observer;
.source "LimitOffsetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/persistence/room/paging/LimitOffsetDataSource;-><init>(Landroid/arch/persistence/room/RoomDatabase;Landroid/arch/persistence/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/persistence/room/paging/LimitOffsetDataSource;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/paging/LimitOffsetDataSource;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/persistence/room/paging/LimitOffsetDataSource;
    .param p2, "tables"    # [Ljava/lang/String;

    .prologue
    .line 68
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;"
    iput-object p1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;->this$0:Landroid/arch/persistence/room/paging/LimitOffsetDataSource;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;, "Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;"
    .local p1, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;->this$0:Landroid/arch/persistence/room/paging/LimitOffsetDataSource;

    invoke-virtual {v0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->invalidate()V

    .line 72
    return-void
.end method
