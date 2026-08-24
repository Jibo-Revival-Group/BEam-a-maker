.class public final Lcom/everis/jibo/beamaker/data/ProjectEntity;
.super Ljava/lang/Object;
.source "ProjectEntity.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/data/ProjectEntity$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\u0007J\u0006\u0010\u0014\u001a\u00020\nJ\u0006\u0010\u0015\u001a\u00020\nJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\nJ\u000e\u0010\u001d\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\nJ\u0018\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u000fH\u0016R\u0012\u0010\u0006\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\n8\u0002@\u0002X\u0083.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0083.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "creationDate",
        "",
        "id",
        "imageName",
        "",
        "modificationDate",
        "projectName",
        "xmlString",
        "describeContents",
        "",
        "getCreationDate",
        "getId",
        "getImgName",
        "getModificationDate",
        "getProjectName",
        "getXmlString",
        "setCreationDate",
        "",
        "setId",
        "setImgName",
        "imgName",
        "setModificationDate",
        "setProjectName",
        "setXmlString",
        "writeToParcel",
        "dest",
        "flags",
        "CREATOR",
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
.field public static final CREATOR:Lcom/everis/jibo/beamaker/data/ProjectEntity$CREATOR;


# instance fields
.field private creationDate:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private imageName:Ljava/lang/String;

.field private modificationDate:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private projectName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private xmlString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/everis/jibo/beamaker/data/ProjectEntity$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everis/jibo/beamaker/data/ProjectEntity$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->CREATOR:Lcom/everis/jibo/beamaker/data/ProjectEntity$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/data/ProjectEntity;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->id:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->imageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->creationDate:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->modificationDate:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->projectName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->xmlString:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/everis/jibo/beamaker/data/ProjectEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final getCreationDate()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->creationDate:J

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->id:J

    return-wide v0
.end method

.method public final getImgName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->imageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "imageName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getModificationDate()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->modificationDate:J

    return-wide v0
.end method

.method public final getProjectName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->projectName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "projectName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getXmlString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->xmlString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "xmlString"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setCreationDate(J)V
    .locals 1
    .param p1, "creationDate"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->creationDate:J

    .line 64
    return-void
.end method

.method public final setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->id:J

    .line 48
    return-void
.end method

.method public final setImgName(Ljava/lang/String;)V
    .locals 1
    .param p1, "imgName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "imgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->imageName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final setModificationDate(J)V
    .locals 1
    .param p1, "modificationDate"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->modificationDate:J

    .line 72
    return-void
.end method

.method public final setProjectName(Ljava/lang/String;)V
    .locals 1
    .param p1, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "projectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->projectName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public final setXmlString(Ljava/lang/String;)V
    .locals 1
    .param p1, "xmlString"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "xmlString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->xmlString:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->imageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "imageName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->creationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-wide v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->modificationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->projectName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "projectName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/everis/jibo/beamaker/data/ProjectEntity;->xmlString:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v1, "xmlString"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
