.class final Landroid/arch/persistence/room/RoomSQLiteQuery$1;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteProgram;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/persistence/room/RoomSQLiteQuery;->copyFrom(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/arch/persistence/room/RoomSQLiteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$query:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/RoomSQLiteQuery;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery$1;->val$query:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .prologue
    .line 114
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery$1;->val$query:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 115
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 104
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery$1;->val$query:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1, p2, p3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindDouble(ID)V

    .line 105
    return-void
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 99
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery$1;->val$query:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1, p2, p3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 100
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 94
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery$1;->val$query:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    .line 95
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery$1;->val$query:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 110
    return-void
.end method

.method public clearBindings()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery$1;->val$query:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->clearBindings()V

    .line 120
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
