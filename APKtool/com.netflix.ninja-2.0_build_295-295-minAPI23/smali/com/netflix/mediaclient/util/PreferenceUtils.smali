.class public final Lcom/netflix/mediaclient/util/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "nfxpref"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    .end local p2    # "def":Z
    :goto_0
    return p2

    .line 47
    .restart local p2    # "def":Z
    :cond_0
    :try_start_0
    const-string v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "nfxpref"

    const-string v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getFloatPref(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 262
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    .end local p2    # "def":F
    :goto_0
    return p2

    .line 267
    .restart local p2    # "def":F
    :cond_0
    :try_start_0
    const-string v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "nfxpref"

    const-string v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    .end local p2    # "def":I
    :goto_0
    return p2

    .line 97
    .restart local p2    # "def":I
    :cond_0
    :try_start_0
    const-string v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "nfxpref"

    const-string v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getLongPref(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 219
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    .end local p2    # "def":J
    :goto_0
    return-wide p2

    .line 224
    .restart local p2    # "def":J
    :cond_0
    :try_start_0
    const-string v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "nfxpref"

    const-string v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 174
    .restart local p2    # "def":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "nfxpref"

    const-string v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "result":Z
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 78
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 70
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    :try_start_0
    const-string v5, "nfxpref"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 71
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 72
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v3, 0x1

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    move v4, v3

    .line 78
    .restart local v4    # "result":I
    goto :goto_0

    .line 75
    .end local v4    # "result":I
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "nfxpref"

    const-string v6, "Failed to save to preferences!"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, "result":Z
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 128
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 120
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    :try_start_0
    const-string v5, "nfxpref"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 121
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 122
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v3, 0x1

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    move v4, v3

    .line 128
    .restart local v4    # "result":I
    goto :goto_0

    .line 125
    .end local v4    # "result":I
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "nfxpref"

    const-string v6, "Failed to save to preferences!"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static putLongPref(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 241
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v2, "nfxpref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 246
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "result":Z
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 205
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 197
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    :try_start_0
    const-string v5, "nfxpref"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 198
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 199
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/4 v3, 0x1

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    move v4, v3

    .line 205
    .restart local v4    # "result":I
    goto :goto_0

    .line 202
    .end local v4    # "result":I
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "nfxpref"

    const-string v6, "Failed to save to preferences!"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, "result":Z
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 155
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 147
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    :try_start_0
    const-string v5, "nfxpref"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 148
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 149
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v3, 0x1

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    move v4, v3

    .line 155
    .restart local v4    # "result":I
    goto :goto_0

    .line 152
    .end local v4    # "result":I
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "nfxpref"

    const-string v6, "Failed to save to preferences!"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static removePref(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 283
    const/4 v3, 0x0

    .line 284
    .local v3, "result":Z
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 312
    :goto_0
    return v4

    .line 288
    :cond_0
    if-nez p1, :cond_1

    .line 289
    const-string v4, "nfxpref"

    const-string v5, "Name is null!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 290
    goto :goto_0

    .line 294
    :cond_1
    :try_start_0
    const-string v5, "nfxpref"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 295
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-nez v2, :cond_2

    .line 296
    const-string v5, "nfxpref"

    const-string v6, "Prefs null, not expected!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Throwable;
    const-string v4, "nfxpref"

    const-string v5, "Failed to save to preferences!"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    move v4, v3

    .line 312
    goto :goto_0

    .line 300
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 301
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v1, :cond_3

    .line 302
    const-string v5, "nfxpref"

    const-string v6, "Editor null, not expected!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_3
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static validate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 324
    if-nez p0, :cond_0

    .line 325
    const-string v1, "nfxpref"

    const-string v2, "Context is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return v0

    .line 329
    :cond_0
    if-nez p1, :cond_1

    .line 330
    const-string v1, "nfxpref"

    const-string v2, "Name is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
