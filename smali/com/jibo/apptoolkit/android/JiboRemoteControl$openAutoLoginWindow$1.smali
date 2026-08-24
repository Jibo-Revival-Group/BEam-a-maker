.class public final Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/android/JiboRemoteControl;->c(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/jibo/apptoolkit/protocol/api/RobotData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J$\u0010\n\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1",
        "Lretrofit2/Callback;",
        "Lcom/jibo/apptoolkit/protocol/api/RobotData;",
        "(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;Landroid/support/v7/app/AppCompatActivity;)V",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "t",
        "",
        "onResponse",
        "response",
        "Lretrofit2/Response;",
        "apptoolkit-android-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

.field final synthetic d:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/android/JiboRemoteControl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;",
            "Landroid/support/v7/app/AppCompatActivity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    iput-object p2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    iput-object p4, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->d:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/RobotData;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;->dismissAllowingStateLoss()V

    :cond_0
    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Something weird\'s happened along the way. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/RobotData;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/RobotData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/ui/ProgressFragment;->dismissAllowingStateLoss()V

    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jibo/apptoolkit/protocol/api/RobotData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/protocol/api/RobotData;->getRobots()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/jibo/apptoolkit/android/model/api/Robot;->Companion:Lcom/jibo/apptoolkit/android/model/api/Robot$Companion;

    invoke-virtual {v1, v0}, Lcom/jibo/apptoolkit/android/model/api/Robot$Companion;->getRobot(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;->onSuccess(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSDataStorage$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->clearToken()V

    :cond_3
    iget-object v0, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->a:Lcom/jibo/apptoolkit/android/JiboRemoteControl;

    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->d:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    invoke-virtual {v0, v1, v2}, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->signIn(Landroid/support/v7/app/AppCompatActivity;Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/jibo/apptoolkit/android/JiboRemoteControl$openAutoLoginWindow$1;->c:Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/jibo/apptoolkit/protocol/ConnectionException;

    const-string v2, "Bad request or something. Please try again..."

    invoke-direct {v0, v2}, Lcom/jibo/apptoolkit/protocol/ConnectionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$OnAuthenticationListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
