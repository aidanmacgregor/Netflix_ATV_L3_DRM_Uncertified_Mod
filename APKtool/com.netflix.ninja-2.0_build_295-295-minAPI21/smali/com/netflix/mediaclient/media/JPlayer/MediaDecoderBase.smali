.class public abstract Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
.super Ljava/lang/Object;
.source "MediaDecoderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;,
        Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;,
        Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;,
        Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
    }
.end annotation


# static fields
.field static final BUFFER_FLAG_CSD:I = 0x2

.field static final BUFFER_FLAG_EOS:I = 0x4

.field static final BUFFER_FLAG_SYNC:I = 0x1

.field protected static final DECODE_ERROR:I = 0x5

.field protected static final INITIALIZATION_ERROR:I = 0x7

.field static final MIME_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field static final MIME_AVC:Ljava/lang/String; = "video/avc"

.field static final MIME_EAC3:Ljava/lang/String; = "audio/eac3"

.field protected static final NO_ERROR:I = 0x0

.field static final STATE_INIT:I = -0x1

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x1

.field static final STATE_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaDecoder"


# instance fields
.field protected mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

.field private mError:I

.field private mErrorString:Ljava/lang/String;

.field protected mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

.field protected mIsAudio:Z

.field protected mMime:Ljava/lang/String;

.field protected mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

.field protected volatile mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mError:I

    .line 203
    return-void
.end method


# virtual methods
.method public abstract flush()V
.end method

.method public getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public isDecoderCreated()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPauseded()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract pause()V
.end method

.method public removeEventListener()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    .line 89
    return-void
.end method

.method protected reportError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "errStr"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mIsAudio:Z

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onError(ZILjava/lang/String;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mError:I

    if-nez v0, :cond_0

    .line 39
    iput p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mError:I

    .line 40
    iput-object p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mErrorString:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract restart()V
.end method

.method protected setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    .line 83
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mError:I

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mError:I

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mErrorString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->reportError(ILjava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V
    .locals 0
    .param p1, "ref"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    .line 132
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract unpause()V
.end method
