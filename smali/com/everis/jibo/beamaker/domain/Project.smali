.class public final Lcom/everis/jibo/beamaker/domain/Project;
.super Ljava/lang/Object;
.source "Project.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0011\u00a8\u0006$"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/domain/Project;",
        "",
        "imageName",
        "",
        "creationDate",
        "",
        "modificationData",
        "projectName",
        "xmlString",
        "(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V",
        "getCreationDate",
        "()J",
        "setCreationDate",
        "(J)V",
        "getImageName",
        "()Ljava/lang/String;",
        "setImageName",
        "(Ljava/lang/String;)V",
        "getModificationData",
        "setModificationData",
        "getProjectName",
        "setProjectName",
        "getXmlString",
        "setXmlString",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private creationDate:J

.field private imageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modificationData:J

.field private projectName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private xmlString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "creationDate"    # J
    .param p4, "modificationData"    # J
    .param p6, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "xmlString"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "imageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xmlString"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    iput-wide p4, p0, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    iput-object p6, p0, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    iput-object p7, p0, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/everis/jibo/beamaker/domain/Project;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/everis/jibo/beamaker/domain/Project;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    :goto_0
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    :goto_1
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    :goto_2
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    :goto_3
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

    :goto_4
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/everis/jibo/beamaker/domain/Project;->copy(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/everis/jibo/beamaker/domain/Project;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v7, p7

    goto :goto_4

    :cond_1
    move-object v6, p6

    goto :goto_3

    :cond_2
    move-wide v4, p4

    goto :goto_2

    :cond_3
    move-wide v2, p2

    goto :goto_1

    :cond_4
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/everis/jibo/beamaker/domain/Project;
    .locals 8
    .param p1, "imageName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "creationDate"    # J
    .param p4, "modificationData"    # J
    .param p6, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "xmlString"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "imageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xmlString"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/everis/jibo/beamaker/domain/Project;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/everis/jibo/beamaker/domain/Project;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/everis/jibo/beamaker/domain/Project;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/everis/jibo/beamaker/domain/Project;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    iget-wide v4, p1, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    iget-wide v4, p1, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    iget-object v3, p1, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

    iget-object v3, p1, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

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
.end method

.method public final getCreationDate()J
    .locals 2

    .prologue
    .line 6
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    return-wide v0
.end method

.method public final getImageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getModificationData()J
    .locals 2

    .prologue
    .line 7
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    return-wide v0
.end method

.method public final getProjectName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public final getXmlString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

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

.method public final setCreationDate(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 6
    iput-wide p1, p0, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    return-void
.end method

.method public final setImageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    return-void
.end method

.method public final setModificationData(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 7
    iput-wide p1, p0, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    return-void
.end method

.method public final setProjectName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    return-void
.end method

.method public final setXmlString(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Project(imageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/domain/Project;->imageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->creationDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modificationData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/everis/jibo/beamaker/domain/Project;->modificationData:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", projectName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/domain/Project;->projectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xmlString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/domain/Project;->xmlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
