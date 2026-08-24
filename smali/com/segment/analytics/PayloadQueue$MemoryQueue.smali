.class Lcom/segment/analytics/PayloadQueue$MemoryQueue;
.super Lcom/segment/analytics/PayloadQueue;
.source "PayloadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/segment/analytics/PayloadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemoryQueue"
.end annotation


# instance fields
.field final queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/segment/analytics/PayloadQueue;-><init>()V

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/segment/analytics/PayloadQueue$MemoryQueue;->queue:Ljava/util/LinkedList;

    .line 100
    return-void
.end method


# virtual methods
.method add([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/segment/analytics/PayloadQueue$MemoryQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method forEach(Lcom/segment/analytics/PayloadQueue$ElementVisitor;)V
    .locals 5
    .param p1, "visitor"    # Lcom/segment/analytics/PayloadQueue$ElementVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/segment/analytics/PayloadQueue$MemoryQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/segment/analytics/PayloadQueue$MemoryQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 123
    .local v0, "data":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v4, v0

    invoke-interface {p1, v3, v4}, Lcom/segment/analytics/PayloadQueue$ElementVisitor;->read(Ljava/io/InputStream;I)Z

    move-result v2

    .line 124
    .local v2, "shouldContinue":Z
    if-nez v2, :cond_1

    .line 128
    .end local v0    # "data":[B
    .end local v2    # "shouldContinue":Z
    :cond_0
    return-void

    .line 121
    .restart local v0    # "data":[B
    .restart local v2    # "shouldContinue":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method remove(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/segment/analytics/PayloadQueue$MemoryQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/segment/analytics/PayloadQueue$MemoryQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
