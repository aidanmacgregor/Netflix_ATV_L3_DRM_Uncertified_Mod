.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
.super Ljava/lang/Object;
.source "MediaDecoderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Clock"
.end annotation


# static fields
.field private static final UPDATE_PAHSE1_INTERVAL_MS:J = 0x14L

.field private static final UPDATE_PAHSE1_SAMPLE_COUNT:J = 0xbb80L

.field private static final UPDATE_PAHSE2_INTERVAL_MS:J = 0xc8L

.field private static final UPDATE_PAHSE2_SAMPLE_COUNT:J = 0x3a980L

.field private static final UPDATE_PAHSE3_INTERVAL_MS:J = 0x7d0L


# instance fields
.field private mLastPts:J

.field private mLastUpdateTime:J

.field private mRunning:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 144
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 146
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 148
    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;J)V
    .locals 2
    .param p2, "init"    # J

    .prologue
    .line 149
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 151
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 153
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 156
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 157
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 158
    return-void
.end method

.method public get()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 160
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 161
    const-wide/16 v2, -0x1

    .line 168
    :goto_0
    return-wide v2

    .line 162
    :cond_0
    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    sub-long v0, v2, v4

    .line 165
    .local v0, "timeSince":J
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    add-long/2addr v2, v0

    goto :goto_0

    .line 168
    .end local v0    # "timeSince":J
    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    goto :goto_0
.end method

.method public pause()J
    .locals 6

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    sub-long v0, v2, v4

    .line 178
    .local v0, "timeSince":J
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 179
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 181
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 182
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 185
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    return-wide v2
.end method

.method public shouldUpdate(J)Z
    .locals 9
    .param p1, "sampleCnt"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    sub-long v0, v4, v6

    .line 194
    .local v0, "timeSince":J
    const-wide/32 v4, 0xbb80

    cmp-long v4, p1, v4

    if-gtz v4, :cond_2

    .line 195
    const-wide/16 v4, 0x14

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 195
    goto :goto_0

    .line 196
    :cond_2
    const-wide/32 v4, 0x3a980

    cmp-long v4, p1, v4

    if-gtz v4, :cond_3

    .line 197
    const-wide/16 v4, 0xc8

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 199
    :cond_3
    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public unpause()J
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 189
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    return-wide v0
.end method

.method public update(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 173
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->unpause()J

    .line 175
    return-void
.end method
