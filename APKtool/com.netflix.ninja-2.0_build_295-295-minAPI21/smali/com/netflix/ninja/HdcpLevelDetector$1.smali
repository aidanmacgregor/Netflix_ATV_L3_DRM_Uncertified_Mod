.class final Lcom/netflix/ninja/HdcpLevelDetector$1;
.super Ljava/util/HashMap;
.source "HdcpLevelDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/HdcpLevelDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string v0, "Disconnected"

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_APPLICABLE:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/ninja/HdcpLevelDetector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "Unprotected"

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_ENGAGED:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/ninja/HdcpLevelDetector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "HDCP-1.x"

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_1:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/ninja/HdcpLevelDetector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "HDCP-2.0"

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_0:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/ninja/HdcpLevelDetector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "HDCP-2.1"

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_1:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/ninja/HdcpLevelDetector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "HDCP-2.2"

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_2:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/ninja/HdcpLevelDetector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
