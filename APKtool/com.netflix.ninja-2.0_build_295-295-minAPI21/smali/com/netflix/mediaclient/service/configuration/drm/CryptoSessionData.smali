.class public Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
.super Ljava/lang/Object;
.source "CryptoSessionData.java"


# static fields
.field private static final KCE_KEY_HANDLE:Ljava/lang/String; = "kceKeyHandle"

.field private static final KCE_KEY_ID:Ljava/lang/String; = "kceKeyId"

.field private static final KCH_KEY_HANDLE:Ljava/lang/String; = "kchKeyHandle"

.field private static final KCH_KEY_ID:Ljava/lang/String; = "kchKeyId"

.field private static final KEY_SET_ID:Ljava/lang/String; = "keySetId"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public kceKeyHandle:Ljava/lang/Long;

.field public kceKeyId:[B

.field public kchKeyHandle:Ljava/lang/Long;

.field public kchKeyId:[B

.field public keySetId:[B

.field public sessionId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static loadCryptoSessions(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    :try_start_0
    const-string v6, "nf_crypto_sessions_json"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "jsonString":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 171
    .end local v3    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 159
    .restart local v3    # "jsonString":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 161
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->toCryptoSessionData(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    move-result-object v4

    .line 162
    .local v4, "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    if-eqz v4, :cond_2

    .line 163
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v6, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->TAG:Ljava/lang/String;

    const-string v7, "Failed to save crypto sessions"

    invoke-static {v6, v7, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static saveCryptoSession(Landroid/content/Context;Ljava/util/List;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "persistCryptoSessions":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 138
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 139
    .local v3, "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->TAG:Ljava/lang/String;

    const-string v5, "Failed to save crypto sessions"

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v4, 0x0

    .line 147
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_1
    return v4

    .line 141
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v4, "nf_crypto_sessions_json"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static toCryptoSessionData(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    if-eqz p0, :cond_0

    const-string v1, "kceKeyHandle"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "kchKeyHandle"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "kceKeyId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "kchKeyId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "keySetId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 125
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;-><init>()V

    .line 126
    .local v0, "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    const-string v1, "kceKeyHandle"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    .line 127
    const-string v1, "kchKeyHandle"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    .line 128
    const-string v1, "kceKeyId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    .line 129
    const-string v1, "kchKeyId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    .line 130
    const-string v1, "keySetId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    goto :goto_0
.end method


# virtual methods
.method toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "kceKeyHandle"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "kchKeyHandle"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    if-eqz v1, :cond_2

    .line 107
    const-string v1, "kceKeyId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    if-eqz v1, :cond_3

    .line 110
    const-string v1, "kchKeyId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    if-eqz v1, :cond_4

    .line 113
    const-string v1, "keySetId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoSessionData [  kceKeyHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kchKeyHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kceKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kchKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keySetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_1

    :cond_2
    const-string v0, "null"

    goto :goto_2

    :cond_3
    const-string v0, "null"

    goto :goto_3
.end method
