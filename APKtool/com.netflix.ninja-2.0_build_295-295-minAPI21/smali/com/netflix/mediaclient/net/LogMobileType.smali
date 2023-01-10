.class public final enum Lcom/netflix/mediaclient/net/LogMobileType;
.super Ljava/lang/Enum;
.source "LogMobileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/net/LogMobileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/net/LogMobileType;

.field public static final enum MOBILE:Lcom/netflix/mediaclient/net/LogMobileType;

.field private static final TAG:Ljava/lang/String; = "nf_net"

.field public static final enum UKNOWN:Lcom/netflix/mediaclient/net/LogMobileType;

.field public static final enum WIFI:Lcom/netflix/mediaclient/net/LogMobileType;

.field public static final enum _2G:Lcom/netflix/mediaclient/net/LogMobileType;

.field public static final enum _3G:Lcom/netflix/mediaclient/net/LogMobileType;

.field public static final enum _4G:Lcom/netflix/mediaclient/net/LogMobileType;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/net/LogMobileType;

    const-string v1, "_2G"

    const-string v2, "2g"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/net/LogMobileType;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/net/LogMobileType;

    const-string v1, "_3G"

    const-string v2, "3g"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/net/LogMobileType;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/net/LogMobileType;

    const-string v1, "_4G"

    const-string v2, "4g"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/net/LogMobileType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/net/LogMobileType;

    const-string v1, "WIFI"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/net/LogMobileType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/net/LogMobileType;

    const-string v1, "MOBILE"

    const-string v2, "mobile"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->MOBILE:Lcom/netflix/mediaclient/net/LogMobileType;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/net/LogMobileType;

    const-string v1, "UKNOWN"

    const/4 v2, 0x5

    const-string v3, "uknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->UKNOWN:Lcom/netflix/mediaclient/net/LogMobileType;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/net/LogMobileType;

    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/net/LogMobileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/net/LogMobileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/net/LogMobileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/net/LogMobileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->MOBILE:Lcom/netflix/mediaclient/net/LogMobileType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/net/LogMobileType;->UKNOWN:Lcom/netflix/mediaclient/net/LogMobileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->$VALUES:[Lcom/netflix/mediaclient/net/LogMobileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/netflix/mediaclient/net/LogMobileType;->desc:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/net/LogMobileType;
    .locals 4
    .param p0, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 100
    :goto_0
    return-object v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 89
    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/net/LogMobileType;

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 93
    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/net/LogMobileType;

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/net/NetworkType;->getNetworkType(I)Lcom/netflix/mediaclient/net/NetworkType;

    move-result-object v0

    .line 97
    .local v0, "netType":Lcom/netflix/mediaclient/net/NetworkType;
    const-string v1, "nf_net"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const-string v1, "nf_net"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_3
    invoke-static {v0}, Lcom/netflix/mediaclient/net/LogMobileType;->toLogMobileType(Lcom/netflix/mediaclient/net/NetworkType;)Lcom/netflix/mediaclient/net/LogMobileType;

    move-result-object v1

    goto :goto_0
.end method

.method private static toLogMobileType(Lcom/netflix/mediaclient/net/NetworkType;)Lcom/netflix/mediaclient/net/LogMobileType;
    .locals 1
    .param p0, "netType"    # Lcom/netflix/mediaclient/net/NetworkType;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->UKNOWN:Lcom/netflix/mediaclient/net/LogMobileType;

    .line 73
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/net/NetworkType;->is2G(Lcom/netflix/mediaclient/net/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/net/LogMobileType;

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/net/NetworkType;->is3G(Lcom/netflix/mediaclient/net/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    sget-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/net/LogMobileType;

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/net/NetworkType;->is4G(Lcom/netflix/mediaclient/net/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/net/LogMobileType;

    goto :goto_0

    .line 69
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkType;->UNKNOWN:Lcom/netflix/mediaclient/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->MOBILE:Lcom/netflix/mediaclient/net/LogMobileType;

    goto :goto_0

    .line 73
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->UKNOWN:Lcom/netflix/mediaclient/net/LogMobileType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/net/LogMobileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/netflix/mediaclient/net/LogMobileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/net/LogMobileType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/net/LogMobileType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/net/LogMobileType;->$VALUES:[Lcom/netflix/mediaclient/net/LogMobileType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/net/LogMobileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/net/LogMobileType;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/net/LogMobileType;->desc:Ljava/lang/String;

    return-object v0
.end method
