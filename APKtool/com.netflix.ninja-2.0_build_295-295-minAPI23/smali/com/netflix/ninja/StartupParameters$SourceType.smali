.class public final enum Lcom/netflix/ninja/StartupParameters$SourceType;
.super Ljava/lang/Enum;
.source "StartupParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/StartupParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/ninja/StartupParameters$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum appSwitch:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum bannerAd:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum channelInfoBar:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum channelNumber:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum channelSurf:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum dedicatedOnScreenIcon:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum dial:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum epgGrid:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum externalApp:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum externalControlProtocol:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum itemInApplicationList:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum liveFolder:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum metaDiscovery:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum netflixPreApp:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum searchContinuation:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum searchResults:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum suspendedAfterAppRestart:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum suspendedAtPowerOn:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum testing:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum titleRecommend:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum touchGesture:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum virtualRemote:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum visualGesture:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum voiceControl:Lcom/netflix/ninja/StartupParameters$SourceType;

.field public static final enum webBrowser:Lcom/netflix/ninja/StartupParameters$SourceType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 40
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "netflixButton"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 41
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "dedicatedOnScreenIcon"

    invoke-direct {v0, v1, v4, v5}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->dedicatedOnScreenIcon:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 42
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "itemInApplicationList"

    invoke-direct {v0, v1, v5, v6}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->itemInApplicationList:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 43
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "searchResults"

    invoke-direct {v0, v1, v6, v7}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->searchResults:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 44
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "searchContinuation"

    invoke-direct {v0, v1, v7, v8}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->searchContinuation:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 45
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "webBrowser"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->webBrowser:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 46
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "liveFolder"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->liveFolder:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 47
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "externalApp"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->externalApp:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 48
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "bannerAd"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->bannerAd:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 49
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "externalControlProtocol"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->externalControlProtocol:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 50
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "metaDiscovery"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->metaDiscovery:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 51
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "dial"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->dial:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 52
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "voiceControl"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->voiceControl:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 53
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "visualGesture"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->visualGesture:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 54
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "touchGesture"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->touchGesture:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 55
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "virtualRemote"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->virtualRemote:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 56
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "epgGrid"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->epgGrid:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 57
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "channelNumber"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->channelNumber:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 58
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "powerOnFromNetflixButton"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 59
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "titleRecommend"

    const/16 v2, 0x13

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->titleRecommend:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 60
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "suspendedAtPowerOn"

    const/16 v2, 0x14

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->suspendedAtPowerOn:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 61
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "suspendedAfterAppRestart"

    const/16 v2, 0x15

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->suspendedAfterAppRestart:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 62
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "appSwitch"

    const/16 v2, 0x16

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->appSwitch:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 63
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "channelSurf"

    const/16 v2, 0x17

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->channelSurf:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 64
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "channelInfoBar"

    const/16 v2, 0x18

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->channelInfoBar:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 65
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "netflixPreApp"

    const/16 v2, 0x19

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixPreApp:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 66
    new-instance v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    const-string v1, "testing"

    const/16 v2, 0x1a

    const/16 v3, 0x63

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/ninja/StartupParameters$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->testing:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 39
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/netflix/ninja/StartupParameters$SourceType;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->dedicatedOnScreenIcon:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->itemInApplicationList:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->searchResults:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->searchContinuation:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->webBrowser:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->liveFolder:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->externalApp:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->bannerAd:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->externalControlProtocol:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->metaDiscovery:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->dial:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->voiceControl:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->visualGesture:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->touchGesture:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->virtualRemote:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->epgGrid:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->channelNumber:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->titleRecommend:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->suspendedAtPowerOn:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->suspendedAfterAppRestart:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->appSwitch:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->channelSurf:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->channelInfoBar:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixPreApp:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->testing:Lcom/netflix/ninja/StartupParameters$SourceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->$VALUES:[Lcom/netflix/ninja/StartupParameters$SourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/netflix/ninja/StartupParameters$SourceType;->mValue:I

    .line 70
    return-void
.end method

.method public static fromValue(I)Lcom/netflix/ninja/StartupParameters$SourceType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 97
    sparse-switch p0, :sswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 98
    :sswitch_0
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 99
    :sswitch_1
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->dedicatedOnScreenIcon:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 100
    :sswitch_2
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->itemInApplicationList:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 101
    :sswitch_3
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->searchResults:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 102
    :sswitch_4
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->searchContinuation:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 103
    :sswitch_5
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->webBrowser:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 104
    :sswitch_6
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->liveFolder:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 105
    :sswitch_7
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->externalApp:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 106
    :sswitch_8
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->bannerAd:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 107
    :sswitch_9
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->externalControlProtocol:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 108
    :sswitch_a
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->metaDiscovery:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 109
    :sswitch_b
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->dial:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 110
    :sswitch_c
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->voiceControl:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 111
    :sswitch_d
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->visualGesture:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 112
    :sswitch_e
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->touchGesture:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 113
    :sswitch_f
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->virtualRemote:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 114
    :sswitch_10
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->epgGrid:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 115
    :sswitch_11
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->channelNumber:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 116
    :sswitch_12
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 117
    :sswitch_13
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->titleRecommend:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 118
    :sswitch_14
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->suspendedAtPowerOn:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 119
    :sswitch_15
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->suspendedAfterAppRestart:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 120
    :sswitch_16
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->appSwitch:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 121
    :sswitch_17
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->channelSurf:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 122
    :sswitch_18
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->channelInfoBar:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 123
    :sswitch_19
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->testing:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x17 -> :sswitch_15
        0x18 -> :sswitch_16
        0x19 -> :sswitch_17
        0x1a -> :sswitch_18
        0x63 -> :sswitch_19
    .end sparse-switch
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/netflix/ninja/StartupParameters$SourceType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "sourceValue":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 92
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/netflix/ninja/StartupParameters$SourceType;->fromValue(I)Lcom/netflix/ninja/StartupParameters$SourceType;

    move-result-object v2

    return-object v2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "netflix-activity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "netflix-activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SourceType: unable to extract valid integer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/ninja/StartupParameters$SourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/ninja/StartupParameters$SourceType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/ninja/StartupParameters$SourceType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->$VALUES:[Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-virtual {v0}, [Lcom/netflix/ninja/StartupParameters$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/ninja/StartupParameters$SourceType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netflix/ninja/StartupParameters$SourceType;->mValue:I

    return v0
.end method
