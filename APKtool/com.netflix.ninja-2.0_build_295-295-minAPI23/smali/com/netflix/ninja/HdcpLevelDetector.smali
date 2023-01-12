.class public Lcom/netflix/ninja/HdcpLevelDetector;
.super Ljava/lang/Object;
.source "HdcpLevelDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    }
.end annotation


# static fields
.field private static final CURRENT_HDCP_LEVEL_PROP:Ljava/lang/String; = "hdcpLevel"

.field private static final MAX_HDCP_LEVLE_PROP:Ljava/lang/String; = "maxHdcpLevel"

.field private static final PropertyToHdcpLevel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final WideVineUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 13
    const-class v0, Lcom/netflix/ninja/HdcpLevelDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector;->WideVineUUID:Ljava/util/UUID;

    .line 41
    new-instance v0, Lcom/netflix/ninja/HdcpLevelDetector$1;

    invoke-direct {v0}, Lcom/netflix/ninja/HdcpLevelDetector$1;-><init>()V

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector;->PropertyToHdcpLevel:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getCurrentHdcpLevel()Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    .locals 10

    .prologue
    .line 52
    const/4 v5, 0x0

    .line 54
    .local v5, "mediaDrm":Landroid/media/MediaDrm;
    :try_start_0
    new-instance v5, Landroid/media/MediaDrm;

    .end local v5    # "mediaDrm":Landroid/media/MediaDrm;
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->WideVineUUID:Ljava/util/UUID;

    invoke-direct {v5, v7}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/MediaDrm$MediaDrmStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .restart local v5    # "mediaDrm":Landroid/media/MediaDrm;
    sget-object v6, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_ENGAGED:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 63
    .local v6, "retHdcpLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    const-string v3, ""

    .line 65
    .local v3, "maxHdcpLevel":Ljava/lang/String;
    :try_start_1
    const-string v7, "maxHdcpLevel"

    invoke-virtual {v5, v7}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxHdcpLevel : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 73
    :cond_0
    :goto_0
    const-string v0, ""

    .line 75
    .local v0, "currentHdpcLevel":Ljava/lang/String;
    :try_start_2
    const-string v7, "hdcpLevel"

    invoke-virtual {v5, v7}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hdcpLevel : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 89
    :cond_1
    :goto_1
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->PropertyToHdcpLevel:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 90
    .local v4, "maxLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->PropertyToHdcpLevel:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 91
    .local v1, "currentLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    if-eqz v4, :cond_2

    if-nez v1, :cond_4

    .line 92
    :cond_2
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid hdcp level property, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_2
    if-eqz v5, :cond_3

    .line 98
    invoke-virtual {v5}, Landroid/media/MediaDrm;->release()V

    .line 100
    .end local v0    # "currentHdpcLevel":Ljava/lang/String;
    .end local v1    # "currentLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    .end local v3    # "maxHdcpLevel":Ljava/lang/String;
    .end local v4    # "maxLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    .end local v5    # "mediaDrm":Landroid/media/MediaDrm;
    .end local v6    # "retHdcpLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    .local v2, "e":Landroid/media/UnsupportedSchemeException;
    :cond_3
    :goto_3
    return-object v6

    .line 55
    .end local v2    # "e":Landroid/media/UnsupportedSchemeException;
    :catch_0
    move-exception v2

    .line 56
    .restart local v2    # "e":Landroid/media/UnsupportedSchemeException;
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    const-string v8, "UnsupportedSchemeException: "

    invoke-static {v7, v8, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    sget-object v6, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_ENGAGED:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    goto :goto_3

    .line 58
    .end local v2    # "e":Landroid/media/UnsupportedSchemeException;
    :catch_1
    move-exception v2

    .line 59
    .local v2, "e":Landroid/media/MediaDrm$MediaDrmStateException;
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    const-string v8, "MediaDrmStateException: "

    invoke-static {v7, v8, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    sget-object v6, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_ENGAGED:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    goto :goto_3

    .line 69
    .end local v2    # "e":Landroid/media/MediaDrm$MediaDrmStateException;
    .restart local v3    # "maxHdcpLevel":Ljava/lang/String;
    .restart local v5    # "mediaDrm":Landroid/media/MediaDrm;
    .restart local v6    # "retHdcpLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    :catch_2
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    const-string v8, "maxHdcpLevel : "

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentHdpcLevel":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 80
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/netflix/ninja/HdcpLevelDetector;->TAG:Ljava/lang/String;

    const-string v8, "hdcpLevel : "

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "currentLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    .restart local v4    # "maxLevel":Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    :cond_4
    move-object v6, v1

    goto :goto_2
.end method
