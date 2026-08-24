.class public final Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;
.super Ljava/lang/Object;
.source "PairingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "newInstance",
        "Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;",
        "robots",
        "Ljava/util/ArrayList;",
        "Lcom/jibo/apptoolkit/android/model/api/Robot;",
        "Lkotlin/collections/ArrayList;",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/util/ArrayList;)Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
    .locals 3
    .param p1, "robots"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jibo/apptoolkit/android/model/api/Robot;",
            ">;)",
            "Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "robots"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-class v2, Lcom/jibo/apptoolkit/android/model/api/Robot;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    new-instance v1, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;

    invoke-direct {v1}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;-><init>()V

    .line 64
    .local v1, "fragment":Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;
    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/ui/fragments/PairingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method
