.class final Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$run$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "CreatingProjectUseCase.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/everis/jibo/beamaker/usecase/CreatingProjectUseCase$run$1$1$1",
        "com/everis/jibo/beamaker/usecase/CreatingProjectUseCase$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $it:Lcom/everis/jibo/persistence/Project;

.field final synthetic this$0:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;


# direct methods
.method constructor <init>(Lcom/everis/jibo/persistence/Project;Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;)V
    .locals 0

    iput-object p1, p0, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$run$$inlined$let$lambda$1;->$it:Lcom/everis/jibo/persistence/Project;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$run$$inlined$let$lambda$1;->this$0:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$run$$inlined$let$lambda$1;->this$0:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;->getMCallback()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$run$$inlined$let$lambda$1;->$it:Lcom/everis/jibo/persistence/Project;

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;->onCreatingProjectSuccess(Lcom/everis/jibo/persistence/Project;)V

    .line 26
    :cond_0
    return-void
.end method
