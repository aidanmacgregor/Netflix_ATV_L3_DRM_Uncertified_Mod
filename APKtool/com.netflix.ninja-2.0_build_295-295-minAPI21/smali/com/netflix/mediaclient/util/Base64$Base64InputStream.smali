.class public Lcom/netflix/mediaclient/util/Base64$Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1214
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1237
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1238
    iput p2, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->options:I

    .line 1239
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->breakLines:Z

    .line 1240
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->encode:Z

    .line 1241
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->bufferLength:I

    .line 1242
    iget v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->buffer:[B

    .line 1243
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    .line 1244
    iput v2, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->lineLength:I

    .line 1245
    invoke-static {p2}, Lcom/netflix/mediaclient/util/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->decodabet:[B

    .line 1246
    return-void

    :cond_0
    move v0, v2

    .line 1239
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1240
    goto :goto_1

    .line 1241
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 1258
    iget v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    if-gez v3, :cond_1

    .line 1259
    iget-boolean v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->encode:Z

    if-eqz v3, :cond_3

    .line 1260
    new-array v0, v4, [B

    .line 1261
    .local v0, "b3":[B
    const/4 v2, 0x0

    .line 1262
    .local v2, "numBinaryBytes":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 1263
    iget-object v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1266
    .local v6, "b":I
    if-ltz v6, :cond_0

    .line 1267
    int-to-byte v3, v6

    aput-byte v3, v0, v8

    .line 1268
    add-int/lit8 v2, v2, 0x1

    .line 1262
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1274
    .end local v6    # "b":I
    :cond_0
    if-lez v2, :cond_2

    .line 1275
    iget-object v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->buffer:[B

    iget v5, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->options:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/Base64;->access$100([BII[BII)[B

    .line 1276
    iput v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    .line 1277
    iput v10, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->numSigBytes:I

    .line 1316
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v8    # "i":I
    :cond_1
    :goto_1
    iget v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    if-ltz v3, :cond_d

    .line 1318
    iget v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    iget v4, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_a

    move v1, v9

    .line 1337
    :goto_2
    return v1

    .restart local v0    # "b3":[B
    .restart local v2    # "numBinaryBytes":I
    .restart local v8    # "i":I
    :cond_2
    move v1, v9

    .line 1280
    goto :goto_2

    .line 1286
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v8    # "i":I
    :cond_3
    new-array v7, v10, [B

    .line 1287
    .local v7, "b4":[B
    const/4 v8, 0x0

    .line 1288
    .restart local v8    # "i":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_6

    .line 1290
    const/4 v6, 0x0

    .line 1291
    .restart local v6    # "b":I
    :cond_4
    iget-object v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1292
    if-ltz v6, :cond_5

    iget-object v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_4

    .line 1294
    :cond_5
    if-gez v6, :cond_7

    .line 1301
    .end local v6    # "b":I
    :cond_6
    if-ne v8, v10, :cond_8

    .line 1302
    iget-object v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->buffer:[B

    iget v4, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->options:I

    invoke-static {v7, v1, v3, v1, v4}, Lcom/netflix/mediaclient/util/Base64;->access$200([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->numSigBytes:I

    .line 1303
    iput v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    goto :goto_1

    .line 1298
    .restart local v6    # "b":I
    :cond_7
    int-to-byte v3, v6

    aput-byte v3, v7, v8

    .line 1288
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1305
    .end local v6    # "b":I
    :cond_8
    if-nez v8, :cond_9

    move v1, v9

    .line 1306
    goto :goto_2

    .line 1310
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1322
    .end local v7    # "b4":[B
    .end local v8    # "i":I
    :cond_a
    iget-boolean v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->encode:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->breakLines:Z

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_b

    .line 1323
    iput v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->lineLength:I

    .line 1324
    const/16 v1, 0xa

    goto :goto_2

    .line 1327
    :cond_b
    iget v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->lineLength:I

    .line 1331
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->buffer:[B

    iget v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1333
    .restart local v6    # "b":I
    iget v1, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    iget v3, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->bufferLength:I

    if-lt v1, v3, :cond_c

    .line 1334
    iput v9, p0, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->position:I

    .line 1337
    :cond_c
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1344
    .end local v6    # "b":I
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Error in Base64 code reading stream."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .param p1, "dest"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1366
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/Base64$Base64InputStream;->read()I

    move-result v0

    .line 1368
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 1369
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1371
    :cond_0
    if-nez v1, :cond_1

    .line 1372
    const/4 v1, -0x1

    .line 1378
    .end local v0    # "b":I
    .end local v1    # "i":I
    :cond_1
    return v1
.end method
