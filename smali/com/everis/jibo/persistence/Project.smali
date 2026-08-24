.class public final Lcom/everis/jibo/persistence/Project;
.super Ljava/lang/Object;
.source "Project.kt"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    tableName = "projects"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tB5\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020!H\u00d6\u0001J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\r\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Lcom/everis/jibo/persistence/Project;",
        "",
        "imageName",
        "",
        "creationDate",
        "",
        "modificationDate",
        "projectName",
        "xmlString",
        "(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V",
        "id",
        "(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V",
        "getCreationDate",
        "()J",
        "getId",
        "setId",
        "(J)V",
        "getImageName",
        "()Ljava/lang/String;",
        "getModificationDate",
        "getProjectName",
        "getXmlString",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "persistence_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private final creationDate:J

.field private id:J
    .annotation build Landroid/arch/persistence/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private final imageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modificationDate:J

.field private final projectName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final xmlString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "imageName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "creationDate"    # J
    .param p6, "modificationDate"    # J
    .param p8, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9, "xmlString"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "imageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectName"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xmlString"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/everis/jibo/persistence/Project;->id:J

    iput-object p3, p0, Lcom/everis/jibo/persistence/Project;->imageName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/everis/jibo/persistence/Project;->creationDate:J

    iput-wide p6, p0, Lcom/everis/jibo/persistence/Project;->modificationDate:J

    iput-object p8, p0, Lcom/everis/jibo/persistence/Project;->projectName:Ljava/lang/String;

    iput-object p9, p0, Lcom/everis/jibo/persistence/Project;->xmlString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "imageName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "creationDate"    # J
    .param p4, "modificationDate"    # J
    .param p6, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "xmlString"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/arch/persistence/room/Ignore;
    .end annotation

    .prologue
    const-string v2, "imageName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "projectName"

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "xmlString"

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-wide/16 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/everis/jibo/persistence/Project;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/everis/jibo/persistence/Project;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/everis/jibo/persistence/Project;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_5

    iget-wide v1, p0, Lcom/everis/jibo/persistence/Project;->id:J

    :goto_0
    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/everis/jibo/persistence/Project;->imageName:Ljava/lang/String;

    :goto_1
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/everis/jibo/persistence/Project;->creationDate:J

    :goto_2
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_2

    iget-wide v6, p0, Lcom/everis/jibo/persistence/Project;->modificationDate:J

    :goto_3
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/everis/jibo/persistence/Project;->projectName:Ljava/lang/String;

    :goto_4
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_0

    iget-object v9, p0, Lcom/everis/jibo/persistence/Project;->xmlString:Ljava/lang/String;

    :goto_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/everis/jibo/persistence/Project;->copy(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/everis/jibo/persistence/Project;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v9, p9

    goto :goto_5

    :cond_1
    move-object/from16 v8, p8

    goto :goto_4

    :cond_2
    move-wide/from16 v6, p6

    goto :goto_3

    :cond_3
    move-wide v4, p4

    goto :goto_2

    :cond_4
    move-object v3, p3

    goto :goto_1

    :cond_5
    move-wide v1, p1

    goto :goto_0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/everis/jibo/persistence/Project;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/everis/jibo/persistence/Project;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/everis/jibo/persistence/Project;->creationDate:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/everis/jibo/persistence/Project;->modificationDate:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/everis/jibo/persistence/Project;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/everis/jibo/persistence/Project;->xmlString:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/everis/jibo/persistence/Project;
    .locals 12
    .param p1, "id"    # J
    .param p3, "imageName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "creationDate"    # J
    .param p6, "modificationDate"    # J
    .param p8, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9, "xmlString"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "imageName"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "projectName"

    move-object/from16 v0, p8

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "xmlString"

    move-object/from16 v0, p9

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/everis/jibo/persistence/Project;

    move-wide v3, p1

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/everis/jibo/persistence/Project;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/everis/jibo/persistence/Project;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/everis/jibo/persistence/Project;

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->id:J

    iget-wide v4, p1, Lcom/everis/jibo/persistence/Project;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/everis/jibo/persistence/Project;->imageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/everis/jibo/persistence/Project;->imageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->creationDate:J

    iget-wide v4, p1, Lcom/everis/jibo/persistence/Project;->creationDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->modificationDate:J

    iget-wide v4, p1, Lcom/everis/jibo/persistence/Project;->modificationDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/everis/jibo/persistence/Project;->projectName:Ljava/lang/String;

    iget-object v3, p1, Lcom/everis/jibo/persistence/Project;->projectName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/everis/jibo/persistence/Project;->xmlString:Ljava/lang/String;

    iget-object v3, p1, Lcom/everis/jibo/persistence/Project;->xmlString:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2
.end method

.method public final getCreationDate()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/everis/jibo/persistence/Project;->creationDate:J

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/everis/jibo/persistence/Project;->id:J

    return-wide v0
.end method

.method public final getImageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/everis/jibo/persistence/Project;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getModificationDate()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/everis/jibo/persistence/Project;->modificationDate:J

    return-wide v0
.end method

.method public final getProjectName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/everis/jibo/persistence/Project;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public final getXmlString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/everis/jibo/persistence/Project;->xmlString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->id:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/everis/jibo/persistence/Project;->imageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->creationDate:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->modificationDate:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/everis/jibo/persistence/Project;->projectName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/everis/jibo/persistence/Project;->xmlString:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final setId(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/everis/jibo/persistence/Project;->id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Project(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/persistence/Project;->imageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->creationDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modificationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/everis/jibo/persistence/Project;->modificationDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", projectName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/persistence/Project;->projectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xmlString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/persistence/Project;->xmlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
