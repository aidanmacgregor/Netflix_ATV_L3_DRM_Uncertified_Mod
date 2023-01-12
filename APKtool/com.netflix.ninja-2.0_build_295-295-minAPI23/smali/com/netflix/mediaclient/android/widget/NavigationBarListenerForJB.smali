.class public Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;
.super Lcom/netflix/mediaclient/android/widget/NavigationBarListener;
.source "NavigationBarListenerForJB.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private isLowPeofile:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V
    .locals 1
    .param p1, "owner"    # Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;-><init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    .line 21
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const/4 v7, 0x0

    .line 47
    and-int/lit8 v1, p1, 0x2

    .line 48
    .local v1, "maskHidden":I
    and-int/lit8 v2, p1, 0x1

    .line 50
    .local v2, "maskLowProfile":I
    and-int/lit8 v3, p1, 0x0

    .line 51
    .local v3, "maskVisible":I
    and-int/lit8 v0, p1, 0x4

    .line 53
    .local v0, "maskFullScreen":I
    const-string v4, "nf_navbar"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const-string v4, "nf_navbar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSystemUiVisibilityChange called: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v4, "nf_navbar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSystemUiVisibilityChange visibility mask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v4, "nf_navbar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSystemUiVisibilityChange hide mask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    if-eqz v1, :cond_1

    .line 60
    const-string v4, "nf_navbar"

    const-string v5, "onSystemUiVisibilityChange Navigation bar is hidden, do nothing"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v7, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz v2, :cond_2

    .line 64
    const-string v4, "nf_navbar"

    const-string v5, "onSystemUiVisibilityChange Navigation bar is low profile"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    goto :goto_0

    .line 66
    :cond_2
    if-eqz v0, :cond_3

    .line 67
    const-string v4, "nf_navbar"

    const-string v5, "onSystemUiVisibilityChange SystemUI is full screen, do nothing"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_3
    iget-boolean v4, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    if-nez v4, :cond_4

    .line 71
    const-string v4, "nf_navbar"

    const-string v5, "onSystemUiVisibilityChange Navigation bar is visible, execute onTouch event"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->processOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 74
    :cond_4
    iput-boolean v7, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    goto :goto_0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "nf_navbar"

    const-string v1, "startListening: add itself to listen for navigation bar changes."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->isLowPeofile:Z

    .line 30
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "nf_navbar"

    const-string v1, "stopListening: remove listener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 38
    return-void
.end method
