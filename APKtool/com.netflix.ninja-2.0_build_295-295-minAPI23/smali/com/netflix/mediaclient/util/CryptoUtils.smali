.class public final Lcom/netflix/mediaclient/util/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# static fields
.field public static final AES128_BLOCK_SIZE:I = 0x10

.field public static final DES_BLOCK_SIZE:I = 0x8

.field private static final DIGITS_POWER:[I

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final HMAC_SHA_1:Ljava/lang/String; = "HmacSHA1"

.field private static final HMAC_SHA_1_ALT:Ljava/lang/String; = "HMAC-SHA-1"

.field private static final SHA_256:Ljava/lang/String; = "SHA-256"

.field private static final TAG:Ljava/lang/String; = "nf_crypto"

.field private static final doubleDigits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/util/CryptoUtils;->doubleDigits:[I

    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/netflix/mediaclient/util/CryptoUtils;->DIGITS_POWER:[I

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0x1
        0x3
        0x5
        0x7
        0x9
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B

    .prologue
    .line 419
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    return-void
.end method

.method public static calcChecksum(JI)I
    .locals 10
    .param p0, "num"    # J
    .param p2, "digits"    # I

    .prologue
    const-wide/16 v8, 0xa

    .line 87
    const/4 v2, 0x1

    .line 88
    .local v2, "doubleDigit":Z
    const/4 v4, 0x0

    .local v4, "total":I
    move v1, p2

    .line 90
    .end local p2    # "digits":I
    .local v1, "digits":I
    :goto_0
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "digits":I
    .restart local p2    # "digits":I
    if-lez v1, :cond_2

    .line 91
    rem-long v6, p0, v8

    long-to-int v0, v6

    .line 92
    .local v0, "digit":I
    div-long/2addr p0, v8

    .line 93
    if-eqz v2, :cond_0

    .line 94
    sget-object v5, Lcom/netflix/mediaclient/util/CryptoUtils;->doubleDigits:[I

    aget v0, v5, v0

    .line 96
    :cond_0
    add-int/2addr v4, v0

    .line 97
    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v1, p2

    .line 98
    .end local p2    # "digits":I
    .restart local v1    # "digits":I
    goto :goto_0

    .line 97
    .end local v1    # "digits":I
    .restart local p2    # "digits":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 100
    .end local v0    # "digit":I
    :cond_2
    rem-int/lit8 v3, v4, 0xa

    .line 101
    .local v3, "result":I
    if-lez v3, :cond_3

    .line 102
    rsub-int/lit8 v3, v3, 0xa

    .line 105
    :cond_3
    return v3
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "encrypted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 326
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encrypted text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    if-nez p1, :cond_0

    .line 329
    const-string v5, "nf_crypto"

    const-string v6, "Encrypted is null"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-object v4

    .line 334
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, v5}, Lcom/netflix/mediaclient/util/CryptoUtils;->init(Ljava/lang/String;Z)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 336
    .local v0, "dcipher":Ljavax/crypto/Cipher;
    if-nez v0, :cond_1

    .line 337
    const-string v5, "nf_crypto"

    const-string v6, "decrypt: ciper is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 344
    .end local v0    # "dcipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    .restart local v0    # "dcipher":Ljavax/crypto/Cipher;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/CryptoUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 342
    .local v1, "dec":[B
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 343
    .local v3, "utf8":[B
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    goto :goto_0

    .line 346
    .end local v0    # "dcipher":Ljavax/crypto/Cipher;
    .end local v1    # "dec":[B
    .end local v3    # "utf8":[B
    :catch_1
    move-exception v2

    .line 347
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v2

    .line 349
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v2

    .line 351
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "cleartext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 283
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/netflix/mediaclient/util/CryptoUtils;->init(Ljava/lang/String;Z)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 284
    .local v1, "ecipher":Ljavax/crypto/Cipher;
    if-nez v1, :cond_0

    .line 285
    const-string v5, "nf_crypto"

    const-string v6, "encrypt: ciper is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return-object v4

    .line 289
    :cond_0
    if-nez p1, :cond_1

    .line 290
    const-string v5, "nf_crypto"

    const-string v6, "encrypt: cleartext is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_1
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 296
    .local v3, "utf8":[B
    if-nez v3, :cond_2

    .line 297
    const-string v5, "nf_crypto"

    const-string v6, "encrypt: utf8 is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 300
    .local v2, "enc":[B
    if-nez v2, :cond_3

    .line 301
    const-string v5, "nf_crypto"

    const-string v6, "encrypt: enc is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_3
    invoke-static {v2}, Lcom/netflix/mediaclient/util/CryptoUtils;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    goto :goto_0

    .line 304
    .end local v2    # "enc":[B
    .end local v3    # "utf8":[B
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v0

    .line 307
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "nf_crypto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 375
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/CryptoUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static generateOTP(Ljava/lang/String;JJIZI)Ljava/lang/String;
    .locals 15
    .param p0, "secretHex"    # Ljava/lang/String;
    .param p1, "pin"    # J
    .param p3, "movingFactor"    # J
    .param p5, "codeDigits"    # I
    .param p6, "addChecksum"    # Z
    .param p7, "truncationOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static/range {p0 .. p2}, Lcom/netflix/mediaclient/util/CryptoUtils;->getSecretBytes(Ljava/lang/String;J)[B

    move-result-object v9

    .line 190
    .local v9, "secret":[B
    const/4 v8, 0x0

    .line 191
    .local v8, "result":Ljava/lang/String;
    if-eqz p6, :cond_0

    add-int/lit8 v3, p5, 0x1

    .line 192
    .local v3, "digits":I
    :goto_0
    const/16 v11, 0x8

    new-array v10, v11, [B

    .line 193
    .local v10, "text":[B
    array-length v11, v10

    add-int/lit8 v5, v11, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 194
    const-wide/16 v12, 0xff

    and-long v12, v12, p3

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v5

    .line 195
    const/16 v11, 0x8

    shr-long p3, p3, v11

    .line 193
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v3    # "digits":I
    .end local v5    # "i":I
    .end local v10    # "text":[B
    :cond_0
    move/from16 v3, p5

    .line 191
    goto :goto_0

    .line 199
    .restart local v3    # "digits":I
    .restart local v5    # "i":I
    .restart local v10    # "text":[B
    :cond_1
    invoke-static {v9, v10}, Lcom/netflix/mediaclient/util/CryptoUtils;->hmac_sha1([B[B)[B

    move-result-object v4

    .line 202
    .local v4, "hash":[B
    array-length v11, v4

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v4, v11

    and-int/lit8 v6, v11, 0xf

    .line 203
    .local v6, "offset":I
    if-ltz p7, :cond_2

    array-length v11, v4

    add-int/lit8 v11, v11, -0x4

    move/from16 v0, p7

    if-ge v0, v11, :cond_2

    .line 205
    move/from16 v6, p7

    .line 207
    :cond_2
    aget-byte v11, v4, v6

    and-int/lit8 v11, v11, 0x7f

    shl-int/lit8 v11, v11, 0x18

    add-int/lit8 v12, v6, 0x1

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v6, 0x2

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v12, v6, 0x3

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    or-int v2, v11, v12

    .line 213
    .local v2, "binary":I
    sget-object v11, Lcom/netflix/mediaclient/util/CryptoUtils;->DIGITS_POWER:[I

    aget v11, v11, p5

    rem-int v7, v2, v11

    .line 214
    .local v7, "otp":I
    if-eqz p6, :cond_3

    .line 215
    mul-int/lit8 v11, v7, 0xa

    int-to-long v12, v7

    move/from16 v0, p5

    invoke-static {v12, v13, v0}, Lcom/netflix/mediaclient/util/CryptoUtils;->calcChecksum(JI)I

    move-result v12

    add-int v7, v11, v12

    .line 217
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 218
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v3, :cond_4

    .line 219
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 221
    :cond_4
    return-object v8
.end method

.method private static getSecretBytes(Ljava/lang/String;J)[B
    .locals 11
    .param p0, "secretHex"    # Ljava/lang/String;
    .param p1, "pin"    # J

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    new-array v3, v4, [B

    .line 141
    .local v3, "secret":[B
    new-instance v0, Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-direct {v0, p0, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v0, "bi":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 144
    .local v2, "key":[B
    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    .line 147
    array-length v4, v2

    add-int/2addr v4, v1

    rsub-int/lit8 v5, v1, 0x3

    mul-int/lit8 v5, v5, 0x8

    shr-long v6, p1, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v3
.end method

.method public static hashSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "plainText"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "hash":[B
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 433
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/CryptoUtils;->or(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 434
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 435
    invoke-static {v1}, Lcom/netflix/mediaclient/util/CryptoUtils;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hmac_sha1([B[B)[B
    .locals 5
    .param p0, "keyBytes"    # [B
    .param p1, "text"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "hmacSha1":Ljavax/crypto/Mac;
    const-string v0, "HmacSHA1"

    .line 125
    .local v0, "enc":Ljava/lang/String;
    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    :goto_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 133
    .local v2, "macKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 134
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    return-object v4

    .line 126
    .end local v2    # "macKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v3

    .line 127
    .local v3, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string v0, "HMAC-SHA-1"

    .line 128
    const-string v4, "HMAC-SHA-1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    goto :goto_0
.end method

.method private static init(Ljava/lang/String;Z)Ljavax/crypto/Cipher;
    .locals 10
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "encrypt"    # Z

    .prologue
    .line 236
    const/16 v7, 0x8

    new-array v6, v7, [B

    fill-array-data v6, :array_0

    .line 241
    .local v6, "salt":[B
    const/16 v2, 0x13

    .line 242
    .local v2, "iterationCount":I
    const/4 v0, 0x0

    .line 245
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v4, v7, v6, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BI)V

    .line 246
    .local v4, "keySpec":Ljava/security/spec/KeySpec;
    const-string v7, "PBEWithMD5AndDES"

    invoke-static {v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 247
    .local v3, "key":Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 248
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v5, v6, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 250
    .local v5, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p1, :cond_0

    .line 251
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 270
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v4    # "keySpec":Ljava/security/spec/KeySpec;
    .end local v5    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    return-object v0

    .line 253
    .restart local v3    # "key":Ljavax/crypto/SecretKey;
    .restart local v4    # "keySpec":Ljava/security/spec/KeySpec;
    .restart local v5    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 256
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v4    # "keySpec":Ljava/security/spec/KeySpec;
    .end local v5    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v7, "nf_crypto"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXCEPTION: InvalidAlgorithmParameterException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v1

    .line 259
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v7, "nf_crypto"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXCEPTION: InvalidKeySpecException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 261
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v7, "nf_crypto"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXCEPTION: NoSuchPaddingException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v1

    .line 263
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "nf_crypto"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXCEPTION: NoSuchAlgorithmException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v1

    .line 265
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v7, "nf_crypto"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXCEPTION: InvalidKeyException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_5
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "nf_crypto"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXCEPTION: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    :array_0
    .array-data 1
        -0x57t
        -0x65t
        -0x38t
        0x32t
        0x56t
        0x34t
        -0x1dt
        0x3t
    .end array-data
.end method

.method private static or(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, "retBytes":[B
    const/4 v1, 0x0

    .line 449
    .local v1, "mixBytes":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 450
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 451
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 457
    :goto_0
    array-length v4, v2

    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 458
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 459
    aget-byte v4, v2, v0

    aget-byte v5, v1, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 454
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 461
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_1
    return-object v2
.end method

.method public static padPerPKCS5Padding([BI)[B
    .locals 6
    .param p0, "in"    # [B
    .param p1, "blockSize"    # I

    .prologue
    .line 489
    if-nez p0, :cond_0

    .line 490
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input array is null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 493
    :cond_0
    const-string v3, "nf_crypto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Array size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v3, "nf_crypto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Block size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    array-length v3, p0

    rem-int/2addr v3, p1

    sub-int v3, p1, v3

    int-to-byte v2, v3

    .line 496
    .local v2, "paddingOctet":B
    const-string v3, "nf_crypto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Padding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    array-length v3, p0

    add-int/2addr v3, v2

    new-array v1, v3, [B

    .line 498
    .local v1, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 499
    aget-byte v3, p0, v0

    aput-byte v3, v1, v0

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 502
    array-length v3, p0

    add-int/2addr v3, v0

    aput-byte v2, v1, v3

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 505
    :cond_2
    return-object v1
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 387
    .local v1, "len":I
    new-array v2, v1, [B

    .line 388
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 389
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-object v2
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/CryptoUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 402
    if-nez p0, :cond_0

    .line 403
    const-string v2, ""

    .line 409
    :goto_0
    return-object v2

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 406
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 407
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/CryptoUtils;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpadPerPKCS5Padding([BI)[B
    .locals 7
    .param p0, "in"    # [B
    .param p1, "blockSize"    # I

    .prologue
    .line 517
    if-eqz p0, :cond_0

    array-length v4, p0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 518
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Input array is null or 0!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 521
    :cond_1
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 522
    .local v1, "last":I
    aget-byte v3, p0, v1

    .line 523
    .local v3, "paddingOctet":B
    const-string v4, "nf_crypto"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 524
    const-string v4, "nf_crypto"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove last "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " array elements"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    array-length v4, p0

    sub-int/2addr v4, v3

    new-array v2, v4, [B

    .line 527
    .local v2, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 528
    aget-byte v4, p0, v0

    aput-byte v4, v2, v0

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_3
    return-object v2
.end method
