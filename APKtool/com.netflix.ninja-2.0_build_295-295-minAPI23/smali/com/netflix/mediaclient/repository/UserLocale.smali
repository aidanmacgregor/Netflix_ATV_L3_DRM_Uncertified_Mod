.class public final Lcom/netflix/mediaclient/repository/UserLocale;
.super Ljava/lang/Object;
.source "UserLocale.java"


# static fields
.field private static final CHINESE_SIMPLIFIED_MAPPING:Ljava/lang/String; = "Hans"

.field private static final CHINESE_TRADITIONAL_MAPPING:Ljava/lang/String; = "Hant"

.field private static final COUNTRY_HONG_KONG:Ljava/lang/String; = "HK"

.field private static final RAW_DELIMITER:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "nf_user_locale"


# instance fields
.field private language:Ljava/lang/String;

.field private languageDescription:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private raw:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "raw"

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/repository/UserLocale;->validateNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/netflix/mediaclient/repository/UserLocale;->parseRaw()V

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/repository/UserLocale;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "languageDescription"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "language"

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/repository/UserLocale;->validateNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "languageDescription"

    invoke-direct {p0, p3, v0}, Lcom/netflix/mediaclient/repository/UserLocale;->validateNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    .line 95
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->languageDescription:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/repository/UserLocale;->createRaw()V

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/repository/UserLocale;->init()V

    .line 98
    return-void
.end method

.method private createRaw()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private static getDeviceLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 345
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 346
    .local v1, "deviceLocale":Ljava/util/Locale;
    const-string v2, "nf_user_locale"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    const-string v2, "nf_user_locale"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current device locale is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    return-object v1
.end method

.method public static getRawDeviceLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    invoke-static {p0}, Lcom/netflix/mediaclient/repository/UserLocale;->getDeviceLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 362
    .local v0, "deviceLocale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/netflix/mediaclient/repository/UserLocale;->toUserLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "rawDeviceLocale":Ljava/lang/String;
    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->locale:Ljava/util/Locale;

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method private static isChinese(Ljava/util/Locale;)Z
    .locals 2
    .param p0, "loc"    # Ljava/util/Locale;

    .prologue
    .line 311
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static mapChinese(Ljava/util/Locale;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "loc"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "country":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    const-string v1, "Hant"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_1
    const-string v1, "Hans"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseRaw()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 105
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    const-string v4, "-"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 107
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid format of raw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 111
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "token":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    .line 120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 121
    goto :goto_0

    .line 115
    :cond_2
    if-ne v0, v6, :cond_3

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    goto :goto_1

    .line 118
    :cond_3
    const-string v3, "nf_user_locale"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected token in given prefered language. Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    .end local v2    # "token":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static toUserLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "loc"    # Ljava/util/Locale;

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    const/4 v1, 0x0

    .line 300
    :goto_0
    return-object v1

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-static {p0}, Lcom/netflix/mediaclient/repository/UserLocale;->isChinese(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    const-string v1, "nf_user_locale"

    const-string v2, "Map as Chinese"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/repository/UserLocale;->mapChinese(Ljava/util/Locale;Ljava/lang/StringBuilder;)V

    .line 300
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 293
    :cond_2
    const-string v1, "nf_user_locale"

    const-string v2, "No special handling for locale"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private validateNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " argument can not be empty!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    if-ne p0, p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 236
    goto :goto_0

    .line 238
    :cond_2
    instance-of v3, p1, Lcom/netflix/mediaclient/repository/UserLocale;

    if-nez v3, :cond_3

    move v1, v2

    .line 239
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 241
    check-cast v0, Lcom/netflix/mediaclient/repository/UserLocale;

    .line 242
    .local v0, "other":Lcom/netflix/mediaclient/repository/UserLocale;
    iget-object v3, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 243
    iget-object v3, v0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 244
    goto :goto_0

    .line 246
    :cond_4
    iget-object v3, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 247
    goto :goto_0
.end method

.method public equalsByLanguage(Lcom/netflix/mediaclient/repository/UserLocale;)Z
    .locals 3
    .param p1, "obj"    # Lcom/netflix/mediaclient/repository/UserLocale;

    .prologue
    const/4 v0, 0x0

    .line 260
    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 265
    iget-object v1, p1, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 271
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->languageDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 221
    const/16 v0, 0x1f

    .line 222
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 223
    .local v1, "result":I
    iget-object v2, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 224
    return v1

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserLocale [language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->raw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/repository/UserLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
