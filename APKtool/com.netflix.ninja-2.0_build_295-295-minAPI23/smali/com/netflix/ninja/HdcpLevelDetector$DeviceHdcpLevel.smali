.class public final enum Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
.super Ljava/lang/Enum;
.source "HdcpLevelDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/HdcpLevelDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceHdcpLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

.field public static final enum HDCP_1:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

.field public static final enum HDCP_2_0:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

.field public static final enum HDCP_2_1:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

.field public static final enum HDCP_2_2:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

.field public static final enum HDCP_NOT_APPLICABLE:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

.field public static final enum HDCP_NOT_ENGAGED:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;


# instance fields
.field private description:Ljava/lang/String;

.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    new-instance v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    const-string v1, "HDCP_NOT_APPLICABLE"

    const/4 v2, -0x1

    const-string v3, "hdcp not applicable"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_APPLICABLE:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 21
    new-instance v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    const-string v1, "HDCP_NOT_ENGAGED"

    const-string v2, "hdcp not engaged"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_ENGAGED:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 22
    new-instance v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    const-string v1, "HDCP_1"

    const/16 v2, 0xa

    const-string v3, "hdcp 1.x"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_1:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 23
    new-instance v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    const-string v1, "HDCP_2_0"

    const/16 v2, 0x14

    const-string v3, "hdcp 2.0"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_0:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 24
    new-instance v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    const-string v1, "HDCP_2_1"

    const/16 v2, 0x15

    const-string v3, "hdcp 2.1"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_1:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 25
    new-instance v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    const-string v1, "HDCP_2_2"

    const/4 v2, 0x5

    const/16 v3, 0x16

    const-string v4, "hdcp 2.1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_2:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_APPLICABLE:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_NOT_ENGAGED:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_1:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_0:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_1:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->HDCP_2_2:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->$VALUES:[Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "l"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->level:I

    .line 31
    iput-object p4, p0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->description:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    return-object v0
.end method

.method public static values()[Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->$VALUES:[Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-virtual {v0}, [Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->level:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
