.class public final Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion$sOnTokenRetrievedListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jibo/apptoolkit/android/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jibo/apptoolkit/android/JiboRemoteControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/jibo/apptoolkit/android/JiboRemoteControl$Companion$sOnTokenRetrievedListener$1",
        "Lcom/jibo/apptoolkit/android/ApiConnectionManager$OnTokenRetrievedListener;",
        "()V",
        "onTokenRefreshFailure",
        "",
        "onTokenRetrieved",
        "token",
        "Lcom/jibo/apptoolkit/protocol/api/Token;",
        "apptoolkit-android-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefreshFailure()V
    .locals 1

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSDataStorage$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->clearToken()V

    :cond_0
    return-void
.end method

.method public onTokenRetrieved(Lcom/jibo/apptoolkit/protocol/api/Token;)V
    .locals 1
    .param p1    # Lcom/jibo/apptoolkit/protocol/api/Token;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    sget-object v0, Lcom/jibo/apptoolkit/android/JiboRemoteControl;->Companion:Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;

    invoke-static {v0}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;->access$getSDataStorage$p(Lcom/jibo/apptoolkit/android/JiboRemoteControl$Companion;)Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jibo/apptoolkit/android/JiboRemoteControl$DataStorage;->putToken(Lcom/jibo/apptoolkit/protocol/api/Token;)V

    :cond_0
    return-void
.end method
