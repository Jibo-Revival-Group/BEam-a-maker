.class public Landroid/arch/persistence/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public final affinity:I
    .annotation build Landroid/arch/persistence/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "notNull"    # Z
    .param p4, "primaryKeyPosition"    # I

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 348
    iput-object p2, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 349
    iput-boolean p3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->notNull:Z

    .line 350
    iput p4, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 351
    invoke-static {p2}, Landroid/arch/persistence/room/util/TableInfo$Column;->findAffinity(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->affinity:I

    .line 352
    return-void
.end method

.method private static findAffinity(Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/arch/persistence/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 362
    if-nez p0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "uppercaseType":Ljava/lang/String;
    const-string v2, "INT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    const/4 v1, 0x3

    goto :goto_0

    .line 369
    :cond_2
    const-string v2, "CHAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CLOB"

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TEXT"

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 374
    :cond_4
    const-string v2, "BLOB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    const-string v1, "REAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "FLOA"

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "DOUB"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 380
    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    .line 384
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 402
    :cond_0
    :goto_0
    return v2

    .line 390
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 392
    check-cast v0, Landroid/arch/persistence/room/util/TableInfo$Column;

    .line 393
    .local v0, "column":Landroid/arch/persistence/room/util/TableInfo$Column;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_3

    .line 394
    iget v3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    iget v4, v0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-ne v3, v4, :cond_0

    .line 399
    :cond_2
    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    iget-object v4, v0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    iget-boolean v3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->notNull:Z

    iget-boolean v4, v0, Landroid/arch/persistence/room/util/TableInfo$Column;->notNull:Z

    if-ne v3, v4, :cond_0

    .line 402
    iget v3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->affinity:I

    iget v4, v0, Landroid/arch/persistence/room/util/TableInfo$Column;->affinity:I

    if-ne v3, v4, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {p0}, Landroid/arch/persistence/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v3

    invoke-virtual {v0}, Landroid/arch/persistence/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 402
    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 417
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->affinity:I

    add-int v0, v1, v2

    .line 418
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->notNull:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 419
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    add-int v0, v1, v2

    .line 420
    return v0

    .line 418
    :cond_0
    const/16 v1, 0x4d5

    goto :goto_0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affinity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->affinity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->notNull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
