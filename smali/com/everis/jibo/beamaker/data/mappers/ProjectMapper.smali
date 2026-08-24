.class public final Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;
.super Ljava/lang/Object;
.source "ProjectMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007J\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;",
        "",
        "()V",
        "fromParcProjectsList",
        "",
        "Lcom/everis/jibo/persistence/Project;",
        "listParc",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "fromParcelableProject",
        "projectEnt",
        "toParcProjectsList",
        "list",
        "toParcelableProject",
        "project",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;-><init>()V

    sput-object v0, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromParcProjectsList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .param p1, "listParc"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "listParc"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v10, "list":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    .line 56
    .local v11, "projectParc":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    new-instance v0, Lcom/everis/jibo/persistence/Project;

    .line 57
    invoke-virtual {v11}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getId()J

    move-result-wide v1

    .line 58
    invoke-virtual {v11}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getImgName()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v11}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getCreationDate()J

    move-result-wide v4

    .line 60
    invoke-virtual {v11}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getModificationDate()J

    move-result-wide v6

    .line 61
    invoke-virtual {v11}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getProjectName()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-virtual {v11}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getXmlString()Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-direct/range {v0 .. v9}, Lcom/everis/jibo/persistence/Project;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v0, "project":Lcom/everis/jibo/persistence/Project;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v0    # "project":Lcom/everis/jibo/persistence/Project;
    .end local v11    # "projectParc":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :cond_0
    check-cast v10, Ljava/util/List;

    .end local v10    # "list":Ljava/util/ArrayList;
    return-object v10
.end method

.method public final fromParcelableProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)Lcom/everis/jibo/persistence/Project;
    .locals 10
    .param p1, "projectEnt"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "projectEnt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/everis/jibo/persistence/Project;

    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getId()J

    move-result-wide v1

    .line 24
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getImgName()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getCreationDate()J

    move-result-wide v4

    .line 26
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getModificationDate()J

    move-result-wide v6

    .line 27
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getProjectName()Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->getXmlString()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/everis/jibo/persistence/Project;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toParcProjectsList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "list"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "list"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "listParc":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/everis/jibo/persistence/Project;

    .line 37
    .local v1, "project":Lcom/everis/jibo/persistence/Project;
    new-instance v2, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    invoke-direct {v2}, Lcom/everis/jibo/beamaker/data/ProjectEntity;-><init>()V

    .line 39
    .local v2, "projectParc":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    invoke-virtual {v1}, Lcom/everis/jibo/persistence/Project;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setId(J)V

    .line 40
    invoke-virtual {v1}, Lcom/everis/jibo/persistence/Project;->getImageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setImgName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Lcom/everis/jibo/persistence/Project;->getCreationDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setCreationDate(J)V

    .line 42
    invoke-virtual {v1}, Lcom/everis/jibo/persistence/Project;->getModificationDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setModificationDate(J)V

    .line 43
    invoke-virtual {v1}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setProjectName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Lcom/everis/jibo/persistence/Project;->getXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setXmlString(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v1    # "project":Lcom/everis/jibo/persistence/Project;
    .end local v2    # "projectParc":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    :cond_0
    check-cast v0, Ljava/util/List;

    .end local v0    # "listParc":Ljava/util/ArrayList;
    return-object v0
.end method

.method public final toParcelableProject(Lcom/everis/jibo/persistence/Project;)Lcom/everis/jibo/beamaker/data/ProjectEntity;
    .locals 4
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "project"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/everis/jibo/beamaker/data/ProjectEntity;

    invoke-direct {v0}, Lcom/everis/jibo/beamaker/data/ProjectEntity;-><init>()V

    .line 13
    .local v0, "projectEnt":Lcom/everis/jibo/beamaker/data/ProjectEntity;
    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setId(J)V

    .line 14
    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getImageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setImgName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getCreationDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setCreationDate(J)V

    .line 16
    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getModificationDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setModificationDate(J)V

    .line 17
    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setProjectName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getXmlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;->setXmlString(Ljava/lang/String;)V

    .line 19
    return-object v0
.end method
