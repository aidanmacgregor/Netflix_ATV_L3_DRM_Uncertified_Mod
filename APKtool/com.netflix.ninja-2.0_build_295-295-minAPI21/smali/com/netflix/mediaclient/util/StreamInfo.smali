.class public Lcom/netflix/mediaclient/util/StreamInfo;
.super Ljava/lang/Object;
.source "StreamInfo.java"


# static fields
.field public static final AUDIO_STREAM:I = 0x0

.field private static final BITS_PER_SECOND:Ljava/lang/String; = "bitsPerSecond"

.field private static final DISPLAY_ASPECT_RATION_X:Ljava/lang/String; = "displayAspectRatioX"

.field private static final DISPLAY_ASPECT_RATION_Y:Ljava/lang/String; = "displayAspectRatioY"

.field private static final FRAME_HEIGHT:Ljava/lang/String; = "frameHeight"

.field private static final FRAME_WIDTH:Ljava/lang/String; = "frameWidth"

.field private static final IS_HIGH_DEFINITION:Ljava/lang/String; = "isHighDefinition"

.field private static final IS_SUPER_HIGH_DEFINITION:Ljava/lang/String; = "isSuperHighDefinition"

.field private static final STREAM_TYPE:Ljava/lang/String; = "streamType"

.field public static final TIMEDTEXT_STREAM:I = 0x2

.field public static final UNKNOWN_STREAM:I = -0x1

.field public static final VIDEO_STREAM:I = 0x1


# instance fields
.field private bitsPerSecond:I

.field private displayAspectRatioX:I

.field private displayAspectRatioY:I

.field private frameHeight:I

.field private frameWidth:I

.field private isHighDefinition:Z

.field private isSuperHighDefinition:Z

.field private streamType:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/StreamInfo;->populate(Lorg/json/JSONObject;)V

    .line 64
    return-void
.end method

.method public static isValid(Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 191
    const-string v0, "streamType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private populate(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "streamType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "streamType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->streamType:I

    .line 77
    :cond_0
    const-string v0, "bitsPerSecond"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "bitsPerSecond"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->bitsPerSecond:I

    .line 81
    :cond_1
    const-string v0, "isHighDefinition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const-string v0, "isHighDefinition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->isHighDefinition:Z

    .line 85
    :cond_2
    const-string v0, "isSuperHighDefinition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const-string v0, "isSuperHighDefinition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->isSuperHighDefinition:Z

    .line 89
    :cond_3
    const-string v0, "frameWidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    const-string v0, "frameWidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->frameWidth:I

    .line 93
    :cond_4
    const-string v0, "frameHeight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    const-string v0, "frameHeight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->frameHeight:I

    .line 97
    :cond_5
    const-string v0, "displayAspectRatioX"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    const-string v0, "displayAspectRatioX"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->displayAspectRatioX:I

    .line 101
    :cond_6
    const-string v0, "displayAspectRatioY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    const-string v0, "displayAspectRatioY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->displayAspectRatioY:I

    .line 104
    :cond_7
    return-void
.end method


# virtual methods
.method public getBitsPerSecond()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->bitsPerSecond:I

    return v0
.end method

.method public getDisplayAspectRatioX()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->displayAspectRatioX:I

    return v0
.end method

.method public getDisplayAspectRatioY()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->displayAspectRatioY:I

    return v0
.end method

.method public getFrameHeight()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->frameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->frameWidth:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->streamType:I

    return v0
.end method

.method public isHighDefinition()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->isHighDefinition:Z

    return v0
.end method

.method public isSuperHighDefinition()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/StreamInfo;->isSuperHighDefinition:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamInfo [streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/StreamInfo;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitsPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/StreamInfo;->bitsPerSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHighDefinition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/StreamInfo;->isHighDefinition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSuperHighDefinition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/StreamInfo;->isSuperHighDefinition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/StreamInfo;->frameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/StreamInfo;->frameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayAspectRatioX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/StreamInfo;->displayAspectRatioX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayAspectRatioY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/StreamInfo;->displayAspectRatioY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
