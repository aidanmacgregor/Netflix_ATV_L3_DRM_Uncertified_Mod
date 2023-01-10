.class public interface abstract Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;
.super Ljava/lang/Object;
.source "MediaDecoderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onDecoderReady(Z)V
.end method

.method public abstract onDecoderStarted(Z)V
.end method

.method public abstract onEndOfStream(Z)V
.end method

.method public abstract onError(ZILjava/lang/String;)V
.end method

.method public abstract onFlushed(Z)V
.end method

.method public abstract onPasued(Z)V
.end method

.method public abstract onSampleRendered(ZJJ)V
.end method
