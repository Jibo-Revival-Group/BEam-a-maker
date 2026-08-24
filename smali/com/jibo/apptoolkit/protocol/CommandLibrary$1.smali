.class Lcom/jibo/apptoolkit/protocol/CommandLibrary$1;
.super Ljava/lang/Object;
.source "CommandLibrary.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jibo/apptoolkit/protocol/CommandLibrary;->parseJiboResponse(Ljava/lang/String;)V
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
    .line 377
    iput-object p1, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$1;->this$0:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/CommandLibrary$1;->this$0:Lcom/jibo/apptoolkit/protocol/CommandLibrary;

    invoke-static {v0}, Lcom/jibo/apptoolkit/protocol/CommandLibrary;->access$000(Lcom/jibo/apptoolkit/protocol/CommandLibrary;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
