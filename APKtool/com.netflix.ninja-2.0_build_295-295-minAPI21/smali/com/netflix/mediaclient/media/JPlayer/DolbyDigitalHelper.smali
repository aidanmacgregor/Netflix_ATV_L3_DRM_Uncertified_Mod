.class public final Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;
.super Ljava/lang/Object;
.source "DolbyDigitalHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaFormatEAC3()Landroid/media/MediaFormat;
    .locals 3

    .prologue
    .line 28
    const-string v0, "audio/eac3"

    const v1, 0xbb80

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static isEAC3supported()Z
    .locals 6

    .prologue
    .line 18
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 19
    .local v1, "list":Landroid/media/MediaCodecList;
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 20
    .local v2, "mf":Landroid/media/MediaFormat;
    const-string v3, "mime"

    const-string v4, "audio/eac3"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v2}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "eac3decoderName":Ljava/lang/String;
    sget-object v3, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    sget-object v3, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device has DD+ decoder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method
