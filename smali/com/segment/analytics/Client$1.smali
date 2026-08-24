.class final Lcom/segment/analytics/Client$1;
.super Lcom/segment/analytics/Client$Connection;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/segment/analytics/Client;->createPostConnection(Ljava/net/HttpURLConnection;)Lcom/segment/analytics/Client$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/segment/analytics/Client$Connection;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/segment/analytics/Client$1;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 59
    .local v2, "responseCode":I
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    .line 62
    :try_start_1
    iget-object v3, p0, Lcom/segment/analytics/Client$1;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v3}, Lcom/segment/analytics/internal/Utils;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/segment/analytics/internal/Utils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 66
    .local v1, "responseBody":Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v3, Lcom/segment/analytics/Client$HTTPException;

    iget-object v4, p0, Lcom/segment/analytics/Client$1;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lcom/segment/analytics/Client$HTTPException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .end local v1    # "responseBody":Ljava/lang/String;
    .end local v2    # "responseCode":I
    :catchall_0
    move-exception v3

    invoke-super {p0}, Lcom/segment/analytics/Client$Connection;->close()V

    .line 70
    iget-object v4, p0, Lcom/segment/analytics/Client$1;->os:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v3

    .line 63
    .restart local v2    # "responseCode":I
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read response body for rejected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .restart local v1    # "responseBody":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "responseBody":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/segment/analytics/Client$Connection;->close()V

    .line 70
    iget-object v3, p0, Lcom/segment/analytics/Client$1;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 72
    return-void
.end method
