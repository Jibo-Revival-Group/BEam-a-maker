.class public Lcom/segment/analytics/QueueFile;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/segment/analytics/QueueFile$Element;,
        Lcom/segment/analytics/QueueFile$ElementInputStream;
    }
.end annotation


# static fields
.field static final HEADER_LENGTH:I = 0x10

.field private static final INITIAL_LENGTH:I = 0x1000

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final ZEROES:[B


# instance fields
.field private final buffer:[B

.field private elementCount:I

.field fileLength:I

.field private first:Lcom/segment/analytics/QueueFile$Element;

.field private last:Lcom/segment/analytics/QueueFile$Element;

.field final raf:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/segment/analytics/QueueFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/segment/analytics/QueueFile;->LOGGER:Ljava/util/logging/Logger;

    .line 60
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/segment/analytics/QueueFile;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-static {p1}, Lcom/segment/analytics/QueueFile;->initialize(Ljava/io/File;)V

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/segment/analytics/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 118
    invoke-direct {p0}, Lcom/segment/analytics/QueueFile;->readHeader()V

    .line 119
    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    .line 122
    iput-object p1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 123
    invoke-direct {p0}, Lcom/segment/analytics/QueueFile;->readHeader()V

    .line 124
    return-void
.end method

.method private expandIfNecessary(I)V
    .locals 13
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    add-int/lit8 v7, p1, 0x4

    .line 360
    .local v7, "elementLength":I
    invoke-direct {p0}, Lcom/segment/analytics/QueueFile;->remainingBytes()I

    move-result v12

    .line 361
    .local v12, "remainingBytes":I
    if-lt v12, v7, :cond_0

    .line 402
    :goto_0
    return-void

    .line 364
    :cond_0
    iget v11, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    .line 368
    .local v11, "previousLength":I
    :cond_1
    add-int/2addr v12, v11

    .line 369
    shl-int/lit8 v10, v11, 0x1

    .line 370
    .local v10, "newLength":I
    if-ge v10, v11, :cond_2

    .line 371
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot grow file beyond "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_2
    move v11, v10

    .line 374
    if-lt v12, v7, :cond_1

    .line 376
    invoke-direct {p0, v10}, Lcom/segment/analytics/QueueFile;->setLength(I)V

    .line 379
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v2, v2, Lcom/segment/analytics/QueueFile$Element;->position:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v3, v3, Lcom/segment/analytics/QueueFile$Element;->length:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/segment/analytics/QueueFile;->wrapPosition(I)I

    move-result v8

    .line 382
    .local v8, "endOfLastElement":I
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v2, v2, Lcom/segment/analytics/QueueFile$Element;->position:I

    if-gt v8, v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 384
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    iget v2, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 385
    add-int/lit8 v0, v8, -0x10

    .line 386
    .local v0, "count":I
    const-wide/16 v2, 0x10

    int-to-long v4, v0

    move-object v6, v1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 387
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Copied insufficient number of bytes!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 389
    :cond_3
    const/16 v2, 0x10

    invoke-direct {p0, v2, v0}, Lcom/segment/analytics/QueueFile;->ringErase(II)V

    .line 393
    .end local v0    # "count":I
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    :cond_4
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v2, v2, Lcom/segment/analytics/QueueFile$Element;->position:I

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v3, v3, Lcom/segment/analytics/QueueFile$Element;->position:I

    if-ge v2, v3, :cond_5

    .line 394
    iget v2, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v3, v3, Lcom/segment/analytics/QueueFile$Element;->position:I

    add-int/2addr v2, v3

    add-int/lit8 v9, v2, -0x10

    .line 395
    .local v9, "newLastPosition":I
    iget v2, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v3, v3, Lcom/segment/analytics/QueueFile$Element;->position:I

    invoke-direct {p0, v10, v2, v3, v9}, Lcom/segment/analytics/QueueFile;->writeHeader(IIII)V

    .line 396
    new-instance v2, Lcom/segment/analytics/QueueFile$Element;

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v3, v3, Lcom/segment/analytics/QueueFile$Element;->length:I

    invoke-direct {v2, v9, v3}, Lcom/segment/analytics/QueueFile$Element;-><init>(II)V

    iput-object v2, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    .line 401
    .end local v9    # "newLastPosition":I
    :goto_1
    iput v10, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    goto/16 :goto_0

    .line 398
    :cond_5
    iget v2, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v3, v3, Lcom/segment/analytics/QueueFile$Element;->position:I

    iget-object v4, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v4, v4, Lcom/segment/analytics/QueueFile$Element;->position:I

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/segment/analytics/QueueFile;->writeHeader(IIII)V

    goto :goto_1
.end method

.method private static initialize(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "tempFile":Ljava/io/File;
    invoke-static {v2}, Lcom/segment/analytics/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 191
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x1000

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 192
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 193
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 194
    .local v0, "headerBuffer":[B
    const/4 v3, 0x0

    const/16 v4, 0x1000

    invoke-static {v0, v3, v4}, Lcom/segment/analytics/QueueFile;->writeInt([BII)V

    .line 195
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 201
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Rename failed!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    .end local v0    # "headerBuffer":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v3

    .line 204
    .restart local v0    # "headerBuffer":[B
    :cond_0
    return-void
.end method

.method private static open(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private readElement(I)Lcom/segment/analytics/QueueFile$Element;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 180
    if-nez p1, :cond_0

    sget-object v1, Lcom/segment/analytics/QueueFile$Element;->NULL:Lcom/segment/analytics/QueueFile$Element;

    .line 183
    :goto_0
    return-object v1

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/segment/analytics/QueueFile;->ringRead(I[BII)V

    .line 182
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    invoke-static {v1, v3}, Lcom/segment/analytics/QueueFile;->readInt([BI)I

    move-result v0

    .line 183
    .local v0, "length":I
    new-instance v1, Lcom/segment/analytics/QueueFile$Element;

    invoke-direct {v1, p1, v0}, Lcom/segment/analytics/QueueFile$Element;-><init>(II)V

    goto :goto_0
.end method

.method private readHeader()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 147
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 148
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/segment/analytics/QueueFile;->readInt([BI)I

    move-result v2

    iput v2, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    .line 149
    iget v2, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 150
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is truncated. Expected length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Actual length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 151
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_0
    iget v2, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    if-gtz v2, :cond_1

    .line 153
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is corrupt; length stored in header ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/segment/analytics/QueueFile;->readInt([BI)I

    move-result v2

    iput v2, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    .line 157
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/segment/analytics/QueueFile;->readInt([BI)I

    move-result v0

    .line 158
    .local v0, "firstOffset":I
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/segment/analytics/QueueFile;->readInt([BI)I

    move-result v1

    .line 159
    .local v1, "lastOffset":I
    invoke-direct {p0, v0}, Lcom/segment/analytics/QueueFile;->readElement(I)Lcom/segment/analytics/QueueFile$Element;

    move-result-object v2

    iput-object v2, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    .line 160
    invoke-direct {p0, v1}, Lcom/segment/analytics/QueueFile;->readElement(I)Lcom/segment/analytics/QueueFile$Element;

    move-result-object v2

    iput-object v2, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    .line 161
    return-void
.end method

.method private static readInt([BI)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 139
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private remainingBytes()I
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    invoke-direct {p0}, Lcom/segment/analytics/QueueFile;->usedBytes()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private ringErase(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    :goto_0
    if-lez p2, :cond_0

    .line 243
    sget-object v1, Lcom/segment/analytics/QueueFile;->ZEROES:[B

    array-length v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 244
    .local v0, "chunk":I
    sget-object v1, Lcom/segment/analytics/QueueFile;->ZEROES:[B

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/segment/analytics/QueueFile;->ringWrite(I[BII)V

    .line 245
    sub-int/2addr p2, v0

    .line 246
    add-int/2addr p1, v0

    .line 247
    goto :goto_0

    .line 248
    .end local v0    # "chunk":I
    :cond_0
    return-void
.end method

.method private ringWrite(I[BII)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/segment/analytics/QueueFile;->wrapPosition(I)I

    move-result p1

    .line 227
    add-int v1, p1, p4

    iget v2, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    if-gt v1, v2, :cond_0

    .line 228
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 229
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    iget v1, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    sub-int v0, v1, p1

    .line 234
    .local v0, "beforeEof":I
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 235
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 236
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 237
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int v2, p3, v0

    sub-int v3, p4, v0

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0
.end method

.method private setLength(I)V
    .locals 4
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 408
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 409
    return-void
.end method

.method private usedBytes()I
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 336
    :goto_0
    return v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v0, v0, Lcom/segment/analytics/QueueFile$Element;->position:I

    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v1, v1, Lcom/segment/analytics/QueueFile$Element;->position:I

    if-lt v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v0, v0, Lcom/segment/analytics/QueueFile$Element;->position:I

    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v1, v1, Lcom/segment/analytics/QueueFile$Element;->position:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v1, v1, Lcom/segment/analytics/QueueFile$Element;->length:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v0, v0, Lcom/segment/analytics/QueueFile$Element;->position:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v1, v1, Lcom/segment/analytics/QueueFile$Element;->length:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v1, v1, Lcom/segment/analytics/QueueFile$Element;->position:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private writeHeader(IIII)V
    .locals 4
    .param p1, "fileLength"    # I
    .param p2, "elementCount"    # I
    .param p3, "firstPosition"    # I
    .param p4, "lastPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/segment/analytics/QueueFile;->writeInt([BII)V

    .line 172
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, p2}, Lcom/segment/analytics/QueueFile;->writeInt([BII)V

    .line 173
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/16 v1, 0x8

    invoke-static {v0, v1, p3}, Lcom/segment/analytics/QueueFile;->writeInt([BII)V

    .line 174
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/16 v1, 0xc

    invoke-static {v0, v1, p4}, Lcom/segment/analytics/QueueFile;->writeInt([BII)V

    .line 175
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 176
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 177
    return-void
.end method

.method private static writeInt([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 131
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 132
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 133
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 134
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 135
    return-void
.end method


# virtual methods
.method public add([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/segment/analytics/QueueFile;->add([BII)V

    .line 281
    return-void
.end method

.method public declared-synchronized add([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    monitor-enter p0

    if-nez p1, :cond_0

    .line 294
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "data == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 296
    :cond_0
    or-int v4, p2, p3

    if-ltz v4, :cond_1

    :try_start_1
    array-length v4, p1

    sub-int/2addr v4, p2

    if-le p3, v4, :cond_2

    .line 297
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 300
    :cond_2
    invoke-direct {p0, p3}, Lcom/segment/analytics/QueueFile;->expandIfNecessary(I)V

    .line 303
    invoke-virtual {p0}, Lcom/segment/analytics/QueueFile;->isEmpty()Z

    move-result v3

    .line 304
    .local v3, "wasEmpty":Z
    if-eqz v3, :cond_4

    const/16 v2, 0x10

    .line 308
    .local v2, "position":I
    :goto_0
    new-instance v1, Lcom/segment/analytics/QueueFile$Element;

    invoke-direct {v1, v2, p3}, Lcom/segment/analytics/QueueFile$Element;-><init>(II)V

    .line 311
    .local v1, "newLast":Lcom/segment/analytics/QueueFile$Element;
    iget-object v4, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, p3}, Lcom/segment/analytics/QueueFile;->writeInt([BII)V

    .line 312
    iget v4, v1, Lcom/segment/analytics/QueueFile$Element;->position:I

    iget-object v5, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/segment/analytics/QueueFile;->ringWrite(I[BII)V

    .line 315
    iget v4, v1, Lcom/segment/analytics/QueueFile$Element;->position:I

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/segment/analytics/QueueFile;->ringWrite(I[BII)V

    .line 318
    if-eqz v3, :cond_5

    iget v0, v1, Lcom/segment/analytics/QueueFile$Element;->position:I

    .line 319
    .local v0, "firstPosition":I
    :goto_1
    iget v4, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    iget v5, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v1, Lcom/segment/analytics/QueueFile$Element;->position:I

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/segment/analytics/QueueFile;->writeHeader(IIII)V

    .line 320
    iput-object v1, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    .line 321
    iget v4, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    .line 322
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iput-object v4, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_3
    monitor-exit p0

    return-void

    .line 304
    .end local v0    # "firstPosition":I
    .end local v1    # "newLast":Lcom/segment/analytics/QueueFile$Element;
    .end local v2    # "position":I
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v4, v4, Lcom/segment/analytics/QueueFile$Element;->position:I

    add-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v5, v5, Lcom/segment/analytics/QueueFile$Element;->length:I

    add-int/2addr v4, v5

    .line 307
    invoke-virtual {p0, v4}, Lcom/segment/analytics/QueueFile;->wrapPosition(I)I

    move-result v2

    goto :goto_0

    .line 318
    .restart local v1    # "newLast":Lcom/segment/analytics/QueueFile$Element;
    .restart local v2    # "position":I
    :cond_5
    iget-object v4, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v0, v4, Lcom/segment/analytics/QueueFile$Element;->position:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    .line 540
    monitor-enter p0

    const/16 v0, 0x1000

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/segment/analytics/QueueFile;->writeHeader(IIII)V

    .line 543
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 544
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/segment/analytics/QueueFile;->ZEROES:[B

    const/4 v2, 0x0

    const/16 v3, 0xff0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    .line 547
    sget-object v0, Lcom/segment/analytics/QueueFile$Element;->NULL:Lcom/segment/analytics/QueueFile$Element;

    iput-object v0, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    .line 548
    sget-object v0, Lcom/segment/analytics/QueueFile$Element;->NULL:Lcom/segment/analytics/QueueFile$Element;

    iput-object v0, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    .line 549
    iget v0, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    if-le v0, v4, :cond_0

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/segment/analytics/QueueFile;->setLength(I)V

    .line 550
    :cond_0
    const/16 v0, 0x1000

    iput v0, p0, Lcom/segment/analytics/QueueFile;->fileLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forEach(Lcom/segment/analytics/PayloadQueue$ElementVisitor;)I
    .locals 6
    .param p1, "reader"    # Lcom/segment/analytics/PayloadQueue$ElementVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v2, v4, Lcom/segment/analytics/QueueFile$Element;->position:I

    .line 429
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    if-ge v1, v4, :cond_1

    .line 430
    invoke-direct {p0, v2}, Lcom/segment/analytics/QueueFile;->readElement(I)Lcom/segment/analytics/QueueFile$Element;

    move-result-object v0

    .line 431
    .local v0, "current":Lcom/segment/analytics/QueueFile$Element;
    new-instance v4, Lcom/segment/analytics/QueueFile$ElementInputStream;

    invoke-direct {v4, p0, v0}, Lcom/segment/analytics/QueueFile$ElementInputStream;-><init>(Lcom/segment/analytics/QueueFile;Lcom/segment/analytics/QueueFile$Element;)V

    iget v5, v0, Lcom/segment/analytics/QueueFile$Element;->length:I

    invoke-interface {p1, v4, v5}, Lcom/segment/analytics/PayloadQueue$ElementVisitor;->read(Ljava/io/InputStream;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 432
    .local v3, "shouldContinue":Z
    if-nez v3, :cond_0

    .line 433
    add-int/lit8 v4, v1, 0x1

    .line 437
    .end local v0    # "current":Lcom/segment/analytics/QueueFile$Element;
    .end local v3    # "shouldContinue":Z
    :goto_1
    monitor-exit p0

    return v4

    .line 435
    .restart local v0    # "current":Lcom/segment/analytics/QueueFile$Element;
    .restart local v3    # "shouldContinue":Z
    :cond_0
    :try_start_1
    iget v4, v0, Lcom/segment/analytics/QueueFile$Element;->position:I

    add-int/lit8 v4, v4, 0x4

    iget v5, v0, Lcom/segment/analytics/QueueFile$Element;->length:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/segment/analytics/QueueFile;->wrapPosition(I)I

    move-result v2

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "current":Lcom/segment/analytics/QueueFile$Element;
    .end local v3    # "shouldContinue":Z
    :cond_1
    iget v4, p0, Lcom/segment/analytics/QueueFile;->elementCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 428
    .end local v1    # "i":I
    .end local v2    # "position":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/segment/analytics/QueueFile;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/segment/analytics/QueueFile;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 417
    :goto_0
    monitor-exit p0

    return-object v0

    .line 414
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v1, v2, Lcom/segment/analytics/QueueFile$Element;->length:I

    .line 415
    .local v1, "length":I
    new-array v0, v1, [B

    .line 416
    .local v0, "data":[B
    iget-object v2, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v2, v2, Lcom/segment/analytics/QueueFile$Element;->position:I

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/segment/analytics/QueueFile;->ringRead(I[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    .end local v0    # "data":[B
    .end local v1    # "length":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/segment/analytics/QueueFile;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)V
    .locals 8
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/segment/analytics/QueueFile;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 498
    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 500
    :cond_0
    if-gez p1, :cond_1

    .line 501
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot remove negative ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") number of elements."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :cond_1
    if-nez p1, :cond_2

    .line 535
    :goto_0
    monitor-exit p0

    return-void

    .line 506
    :cond_2
    :try_start_2
    iget v5, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    if-ne p1, v5, :cond_3

    .line 507
    invoke-virtual {p0}, Lcom/segment/analytics/QueueFile;->clear()V

    goto :goto_0

    .line 510
    :cond_3
    iget v5, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    if-le p1, v5, :cond_4

    .line 511
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot remove more elements ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") than present in queue ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 515
    :cond_4
    iget-object v5, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v0, v5, Lcom/segment/analytics/QueueFile$Element;->position:I

    .line 516
    .local v0, "eraseStartPosition":I
    const/4 v1, 0x0

    .line 519
    .local v1, "eraseTotalLength":I
    iget-object v5, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v4, v5, Lcom/segment/analytics/QueueFile$Element;->position:I

    .line 520
    .local v4, "newFirstPosition":I
    iget-object v5, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    iget v3, v5, Lcom/segment/analytics/QueueFile$Element;->length:I

    .line 521
    .local v3, "newFirstLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_5

    .line 522
    add-int/lit8 v5, v3, 0x4

    add-int/2addr v1, v5

    .line 523
    add-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/segment/analytics/QueueFile;->wrapPosition(I)I

    move-result v4

    .line 524
    iget-object v5, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/segment/analytics/QueueFile;->ringRead(I[BII)V

    .line 525
    iget-object v5, p0, Lcom/segment/analytics/QueueFile;->buffer:[B

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/segment/analytics/QueueFile;->readInt([BI)I

    move-result v3

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 529
    :cond_5
    iget v5, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    iget v6, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    sub-int/2addr v6, p1

    iget-object v7, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    iget v7, v7, Lcom/segment/analytics/QueueFile$Element;->position:I

    invoke-direct {p0, v5, v6, v4, v7}, Lcom/segment/analytics/QueueFile;->writeHeader(IIII)V

    .line 530
    iget v5, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    sub-int/2addr v5, p1

    iput v5, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    .line 531
    new-instance v5, Lcom/segment/analytics/QueueFile$Element;

    invoke-direct {v5, v4, v3}, Lcom/segment/analytics/QueueFile$Element;-><init>(II)V

    iput-object v5, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    .line 534
    invoke-direct {p0, v0, v1}, Lcom/segment/analytics/QueueFile;->ringErase(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method ringRead(I[BII)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/segment/analytics/QueueFile;->wrapPosition(I)I

    move-result p1

    .line 260
    add-int v1, p1, p4

    iget v2, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    if-gt v1, v2, :cond_0

    .line 261
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 262
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_0
    iget v1, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    sub-int v0, v1, p1

    .line 267
    .local v0, "beforeEof":I
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 268
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 269
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 270
    iget-object v1, p0, Lcom/segment/analytics/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int v2, p3, v0

    sub-int v3, p4, v0

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/segment/analytics/QueueFile;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    const-string v2, "fileLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/segment/analytics/QueueFile;->elementCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    const-string v2, ", first="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->first:Lcom/segment/analytics/QueueFile$Element;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 566
    const-string v2, ", last="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/segment/analytics/QueueFile;->last:Lcom/segment/analytics/QueueFile$Element;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    const-string v2, ", element lengths=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :try_start_0
    new-instance v2, Lcom/segment/analytics/QueueFile$1;

    invoke-direct {v2, p0, v0}, Lcom/segment/analytics/QueueFile$1;-><init>(Lcom/segment/analytics/QueueFile;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v2}, Lcom/segment/analytics/QueueFile;->forEach(Lcom/segment/analytics/PayloadQueue$ElementVisitor;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    const-string v2, "]]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/segment/analytics/QueueFile;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method wrapPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 214
    iget v0, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    if-ge p1, v0, :cond_0

    .end local p1    # "position":I
    :goto_0
    return p1

    .restart local p1    # "position":I
    :cond_0
    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lcom/segment/analytics/QueueFile;->fileLength:I

    sub-int p1, v0, v1

    goto :goto_0
.end method
