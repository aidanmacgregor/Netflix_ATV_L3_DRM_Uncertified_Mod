.class public final Lcom/netflix/mediaclient/util/InputUtils;
.super Ljava/lang/Object;
.source "InputUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static isFireKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 36
    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x60

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeySourceGamepad(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x401

    const/16 v1, 0x401

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mapKeys(Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;)Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;
    .locals 4
    .param p0, "wrapper"    # Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;

    .prologue
    const/16 v3, 0x17

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->event:Landroid/view/KeyEvent;

    .line 59
    .local v0, "event":Landroid/view/KeyEvent;
    iget v1, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    .line 60
    .local v1, "keyCode":I
    invoke-static {v0}, Lcom/netflix/mediaclient/util/InputUtils;->isKeySourceGamepad(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object p0

    .line 64
    :cond_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 67
    invoke-static {v1}, Lcom/netflix/mediaclient/util/InputUtils;->isFireKey(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const/16 v2, 0x42

    iput v2, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 70
    :cond_2
    const/16 v2, 0x63

    if-ne v1, v2, :cond_3

    .line 71
    const/16 v2, 0x43

    iput v2, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 72
    :cond_3
    const/16 v2, 0x64

    if-ne v1, v2, :cond_4

    .line 73
    const/16 v2, 0x3e

    iput v2, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 74
    :cond_4
    const/16 v2, 0x61

    if-ne v1, v2, :cond_5

    .line 75
    const/4 v2, 0x4

    iput v2, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 76
    :cond_5
    const/16 v2, 0x66

    if-ne v1, v2, :cond_6

    .line 77
    const/16 v2, 0x15

    iput v2, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 78
    :cond_6
    const/16 v2, 0x67

    if-ne v1, v2, :cond_7

    .line 79
    const/16 v2, 0x16

    iput v2, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 80
    :cond_7
    const/16 v2, 0x6a

    if-ne v1, v2, :cond_8

    .line 81
    const/16 v2, 0x3f

    iput v2, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 82
    :cond_8
    const/16 v2, 0x6b

    if-ne v1, v2, :cond_9

    .line 83
    const/16 v2, 0x73

    iput v2, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 86
    :cond_9
    const/16 v2, 0x62

    if-ne v1, v2, :cond_a

    .line 87
    iput v3, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 88
    :cond_a
    const/16 v2, 0x65

    if-ne v1, v2, :cond_b

    .line 89
    iput v3, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 90
    :cond_b
    const/16 v2, 0x68

    if-ne v1, v2, :cond_c

    .line 91
    iput v3, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0

    .line 92
    :cond_c
    const/16 v2, 0x69

    if-ne v1, v2, :cond_0

    .line 93
    iput v3, p0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    goto :goto_0
.end method

.method public static shouldHandleAsUnicode(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    .line 118
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 119
    .local v0, "c":I
    const/16 v1, 0xe7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc7

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    const/4 v1, 0x1

    .line 124
    .end local v0    # "c":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
