.class public final Lcom/netflix/mediaclient/util/AndroidManifestUtils;
.super Ljava/lang/Object;
.source "AndroidManifestUtils.java"


# static fields
.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "com.netflix.ninja"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "version":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 66
    const-string v2, ""

    .line 74
    :goto_0
    return-object v2

    .line 69
    :cond_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "pos":I
    if-lez v0, :cond_1

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 74
    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Context cannot be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.netflix.ninja"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 91
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 97
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 94
    .restart local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Context cannot be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.netflix.ninja"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 46
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 52
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 49
    .restart local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
