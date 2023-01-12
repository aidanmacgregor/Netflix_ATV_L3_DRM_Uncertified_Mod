.class public Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 1411
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1412
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1433
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1434
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->breakLines:Z

    .line 1435
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->encode:Z

    .line 1436
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->bufferLength:I

    .line 1437
    iget v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->buffer:[B

    .line 1438
    iput v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    .line 1439
    iput v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->lineLength:I

    .line 1440
    iput-boolean v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->suspendEncoding:Z

    .line 1441
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->b4:[B

    .line 1442
    iput p2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->options:I

    .line 1443
    invoke-static {p2}, Lcom/netflix/mediaclient/util/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->decodabet:[B

    .line 1444
    return-void

    :cond_0
    move v0, v2

    .line 1434
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1435
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1436
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1541
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->flushBase64()V

    .line 1545
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1547
    iput-object v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->buffer:[B

    .line 1548
    iput-object v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->out:Ljava/io/OutputStream;

    .line 1549
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1524
    iget v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    if-lez v0, :cond_0

    .line 1525
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->encode:Z

    if-eqz v0, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->b4:[B

    iget-object v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->buffer:[B

    iget v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    iget v4, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/Base64;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1527
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    .line 1532
    :cond_0
    return-void

    .line 1529
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 1569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->suspendEncoding:Z

    .line 1570
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->flushBase64()V

    .line 1560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->suspendEncoding:Z

    .line 1561
    return-void
.end method

.method public write(I)V
    .locals 7
    .param p1, "theByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 1461
    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->encode:Z

    if-eqz v1, :cond_3

    .line 1467
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->buffer:[B

    iget v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1468
    iget v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    iget v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1470
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->b4:[B

    iget-object v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->buffer:[B

    iget v4, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->bufferLength:I

    iget v5, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->options:I

    invoke-static {v2, v3, v4, v5}, Lcom/netflix/mediaclient/util/Base64;->access$300([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1472
    iget v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->lineLength:I

    .line 1473
    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->breakLines:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 1474
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1475
    iput v6, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->lineLength:I

    .line 1478
    :cond_2
    iput v6, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    goto :goto_0

    .line 1482
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 1483
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->buffer:[B

    iget v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1484
    iget v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    iget v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->buffer:[B

    iget-object v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->b4:[B

    iget v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->options:I

    invoke-static {v1, v6, v2, v6, v3}, Lcom/netflix/mediaclient/util/Base64;->access$200([BI[BII)I

    move-result v0

    .line 1487
    .local v0, "len":I
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1488
    iput v6, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->position:I

    goto :goto_0

    .line 1490
    .end local v0    # "len":I
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 1491
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid character in Base64 data."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .param p1, "theBytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1507
    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1508
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1515
    :cond_0
    return-void

    .line 1512
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1513
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/util/Base64$Base64OutputStream;->write(I)V

    .line 1512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
