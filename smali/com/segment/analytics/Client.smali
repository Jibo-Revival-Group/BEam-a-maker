.class Lcom/segment/analytics/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/segment/analytics/Client$Connection;,
        Lcom/segment/analytics/Client$HTTPException;
    }
.end annotation


# instance fields
.field final connectionFactory:Lcom/segment/analytics/ConnectionFactory;

.field final writeKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/segment/analytics/ConnectionFactory;)V
    .locals 0
    .param p1, "writeKey"    # Ljava/lang/String;
    .param p2, "connectionFactory"    # Lcom/segment/analytics/ConnectionFactory;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/segment/analytics/Client;->writeKey:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/segment/analytics/Client;->connectionFactory:Lcom/segment/analytics/ConnectionFactory;

    .line 89
    return-void
.end method

.method private static createGetConnection(Ljava/net/HttpURLConnection;)Lcom/segment/analytics/Client$Connection;
    .locals 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/segment/analytics/Client$2;

    invoke-static {p0}, Lcom/segment/analytics/internal/Utils;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/segment/analytics/Client$2;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private static createPostConnection(Ljava/net/HttpURLConnection;)Lcom/segment/analytics/Client$Connection;
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "contentEncoding":Ljava/lang/String;
    const-string v2, "gzip"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    .local v1, "outputStream":Ljava/io/OutputStream;
    :goto_0
    new-instance v2, Lcom/segment/analytics/Client$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/segment/analytics/Client$1;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v2

    .line 52
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method attribution()Lcom/segment/analytics/Client$Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lcom/segment/analytics/Client;->connectionFactory:Lcom/segment/analytics/ConnectionFactory;

    iget-object v2, p0, Lcom/segment/analytics/Client;->writeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/segment/analytics/ConnectionFactory;->attribution(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 98
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {v0}, Lcom/segment/analytics/Client;->createPostConnection(Ljava/net/HttpURLConnection;)Lcom/segment/analytics/Client$Connection;

    move-result-object v1

    return-object v1
.end method

.method fetchSettings()Lcom/segment/analytics/Client$Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v2, p0, Lcom/segment/analytics/Client;->connectionFactory:Lcom/segment/analytics/ConnectionFactory;

    iget-object v3, p0, Lcom/segment/analytics/Client;->writeKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/segment/analytics/ConnectionFactory;->projectSettings(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 103
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 104
    .local v1, "responseCode":I
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    invoke-static {v0}, Lcom/segment/analytics/Client;->createGetConnection(Ljava/net/HttpURLConnection;)Lcom/segment/analytics/Client$Connection;

    move-result-object v2

    return-object v2
.end method

.method upload()Lcom/segment/analytics/Client$Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Lcom/segment/analytics/Client;->connectionFactory:Lcom/segment/analytics/ConnectionFactory;

    iget-object v2, p0, Lcom/segment/analytics/Client;->writeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/segment/analytics/ConnectionFactory;->upload(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 93
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {v0}, Lcom/segment/analytics/Client;->createPostConnection(Ljava/net/HttpURLConnection;)Lcom/segment/analytics/Client$Connection;

    move-result-object v1

    return-object v1
.end method
