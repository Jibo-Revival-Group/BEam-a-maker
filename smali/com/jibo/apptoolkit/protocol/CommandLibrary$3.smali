.class Lcom/jibo/apptoolkit/protocol/CommandLibrary$3;
.super Ljava/lang/Object;
.source "CommandLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/protocol/CommandLibrary;->closeVideoConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jibo/apptoolkit/protocol/CommandLibrary;


# direct methods
.method constructor <init>(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$3;->this$0:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$3;->this$0:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    invoke-static {v0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->access$200(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$3;->this$0:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    invoke-static {v0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->access$200(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 505
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$3;->this$0:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->access$202(Lcom/jibo/apptoolkit/protocol/CommandLibrary;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 507
    :cond_0
    return-void
.end method
